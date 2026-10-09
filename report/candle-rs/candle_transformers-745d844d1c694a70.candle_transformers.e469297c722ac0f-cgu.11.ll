Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.11?download=true
inline.NumInlined: 3716
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MaximumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4209
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4210
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B25_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4210
  call void @llvm.experimental.noalias.scope.decl(metadata !4211)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4211, !noalias !4212, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4211, !noalias !4212, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4213, !noalias !4214, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4213, !noalias !4214, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4213, !noalias !4214, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4215, !noalias !4214, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i410 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i412 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i411 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i411
  %i.ix = sub i64 %i.iw, %.val.i.i.i410
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i412
  %i.iz = sub i64 %i.iy, %.val.i.i.i410
  %diff.check413 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check413
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4216 ; 5 uses
  %wide.load414 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4216 ; 6 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767) ; 2 uses
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 32640)
  %i.jh = and <8 x i16> %wide.load414, splat (i16 32767)
  %i.ji = icmp samesign ugt <8 x i16> %i.jh, splat (i16 32640)
  %i.jj = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.ji ; 3 uses
  %i.jk = xor <8 x i1> %i.jj, splat (i1 true)
  %i.jl = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jm = icmp sgt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.jn = select <8 x i1> %i.jj, <8 x i1> splat (i1 true), <8 x i1> %i.jl ; 2 uses
  %i.jo = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jp = select <8 x i1> %i.jn, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jq = icmp ule <8 x i16> %wide.load, %wide.load414
  %i.jr = select <8 x i1> %i.jo, <8 x i1> %i.jm, <8 x i1> zeroinitializer
  %i.js = or <8 x i16> %wide.load414, %i.jf
  %i.jt = icmp eq <8 x i16> %i.js, zeroinitializer
  %i.ju = select <8 x i1> %i.jk, <8 x i1> %i.jl, <8 x i1> zeroinitializer
  %i.jv = icmp ult <8 x i16> %wide.load, %wide.load414
  %i.jw = and <8 x i1> %i.jm, %i.jv
  %i.jx = xor <8 x i1> %i.jw, splat (i1 true)
  %i.jy = select <8 x i1> %i.ju, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jr, <8 x i1> %i.jt, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jp, <8 x i1> %i.jz, <8 x i1> %i.jq
  %i.kb = or <8 x i1> %i.ka, %i.jy
  %i.kc = or <8 x i1> %i.kb, %i.jj
  %predphi = select <8 x i1> %i.kc, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4216
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !4179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ke, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !4216, !noundef !5 ; 8 uses
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !4216, !noundef !5 ; 6 uses
  %i.km = and i16 %i.kk, 32767                    ; 2 uses
  %i.kn = icmp samesign ugt i16 %i.km, 32640
  %i.ko = and i16 %i.kl, 32767
  %i.kp = icmp samesign ugt i16 %i.ko, 32640
  %or.cond.i.i.i.i.i = select i1 %i.kn, i1 true, i1 %i.kp
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kk, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kl, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kq = icmp ult i16 %i.kk, %i.kl
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kq
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kr = or i16 %i.kl, %i.km
  %.not.i.i.i.i = icmp eq i16 %i.kr, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.ks = icmp samesign ugt i16 %i.kk, %i.kl
  br i1 %i.ks, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kt = phi i16 [ %i.kl, %bb.q ], [ %i.kk, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kk, %.split4.i.i.i.i ], [ %i.kk, %.split.i.i.i.i ], [ %i.kk, %scalar.ph ]
  store i16 %i.kt, ptr %i.kj, align 2, !noalias !4216
  %exitcond.not.i.i = icmp eq i64 %i.ke, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4180

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4209
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ku = add i64 %.sroa.0.0170, %i.x
  %i.kv = load i64, ptr %i.ac, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ky = load i16, ptr %i.kx, align 2, !noundef !5 ; 12 uses
  %i.kz = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kz, %4
  %or.cond58 = or i1 %i.la, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !17

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.ad, %.lr.ph169
  %i.lb = phi i64 [ %i.th, %bb.ad ], [ %i.sz, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.te, %.lr.ph169 ], [ %i.tv, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.sq, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lc = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.ld = phi ptr [ @16, %bb.ad ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.w ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef %i.lc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ld) #26
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.le = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lf = icmp ult i64 %i.le, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.le, %i.n
  %or.cond59 = or i1 %i.lf, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4217
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lg, ptr noundef nonnull readonly %i.li, ptr noundef nonnull align 2 %i.lh, ptr noundef nonnull %i.lj)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !4218)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4218, !noalias !4219, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4218, !noalias !4219, !noundef !5 ; 6 uses
  %i.lk = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4220, !noalias !4219, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4220, !noalias !4219, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ll = and i16 %i.ky, 32767
  %i.lm = icmp samesign ugt i16 %i.ll, 32640
  %i.ln = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.ln, -32        ; 3 uses
  br i1 %i.lm, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lk, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.lo = and i64 %i.lk, 12
  %n.vec423 = and i64 %i.lk, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph422, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lp = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lq, align 2, !noalias !4218
  %wide.load427 = load <8 x i16>, ptr %i.ls, align 2, !noalias !4218
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <8 x i16> %wide.load426, ptr %i.lr, align 2, !alias.scope !4221, !noalias !4218
  store <8 x i16> %wide.load427, ptr %i.lt, align 2, !alias.scope !4221, !noalias !4218
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lu, label %middle.block429, label %vector.body424, !llvm.loop !4195

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lk, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.lo, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lk, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lv
  %wide.load433 = load <4 x i16>, ptr %i.lw, align 2, !noalias !4218
  store <4 x i16> %wide.load433, ptr %i.lx, align 2, !alias.scope !4221, !noalias !4218
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lk, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %7 = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %7, 3                    ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ]
  %i.lz = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.ma = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ma
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ma
  %.val8.us.i.i.prol = load i16, ptr %i.mb, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mc, align 2, !alias.scope !4221, !noalias !4218
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter548
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, !llvm.loop !4197

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ], [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ]
  %i.md = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.me = add i64 %i.md, %.val.i.i62
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit
  %invariant.op559 = add i64 1, %.val.i.i62
  %invariant.op561 = add i64 2, %.val.i.i62
  %invariant.op563 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new ], [ %i.mn, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i ] ; 5 uses
  %i.mg = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mg
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mg
  %.val8.us.i.i = load i16, ptr %i.mh, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mi, align 2, !alias.scope !4221, !noalias !4218
  %.reass560 = add i64 %.sroa.0.010.us.i.i, %invariant.op559 ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass560
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass560
  %.val8.us.i.i.1 = load i16, ptr %i.mj, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mk, align 2, !alias.scope !4221, !noalias !4218
  %.reass562 = add i64 %.sroa.0.010.us.i.i, %invariant.op561 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass562
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass562
  %.val8.us.i.i.2 = load i16, ptr %i.ml, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mm, align 2, !alias.scope !4221, !noalias !4218
  %i.mn = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass564 = add i64 %.sroa.0.010.us.i.i, %invariant.op563 ; 2 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass564
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass564
  %.val8.us.i.i.3 = load i16, ptr %i.mo, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mp, align 2, !alias.scope !4221, !noalias !4218
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mn, %i.lk
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, !llvm.loop !4198

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.ky, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check455, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lk, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check418
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mq = and i64 %i.lk, 12
  %n.vec478 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mr = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mr ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.ms, align 2, !noalias !4218 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mu, align 2, !noalias !4218 ; 4 uses
  %i.mv = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.mw = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.mx = icmp samesign ugt <8 x i16> %i.mv, splat (i16 32640)
  %i.my = icmp samesign ugt <8 x i16> %i.mw, splat (i16 32640)
  %i.mz = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.na = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nb = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nd = or <8 x i1> %i.mz, %i.mx
  %i.ne = or <8 x i1> %i.na, %i.my
  %i.nf = select <8 x i1> %i.nd, <8 x i16> %wide.load483, <8 x i16> %i.nb
  %i.ng = select <8 x i1> %i.ne, <8 x i16> %wide.load484, <8 x i16> %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <8 x i16> %i.nf, ptr %i.mt, align 2, !alias.scope !4221, !noalias !4218
  store <8 x i16> %i.ng, ptr %i.nh, align 2, !alias.scope !4221, !noalias !4218
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.ni = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.ni, label %middle.block486, label %vector.body481, !llvm.loop !4199

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lk, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mq, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lk, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nj = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nj
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nj
  %wide.load499 = load <4 x i16>, ptr %i.nk, align 2, !noalias !4218 ; 4 uses
  %i.nm = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.nn = icmp samesign ugt <4 x i16> %i.nm, splat (i16 32640)
  %i.no = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.np = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nq = or <4 x i1> %i.no, %i.nn
  %i.nr = select <4 x i1> %i.nq, <4 x i16> %wide.load499, <4 x i16> %i.np
  store <4 x i16> %i.nr, ptr %i.nl, align 2, !alias.scope !4221, !noalias !4218
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.ns, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4200

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lk, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nt = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nu = add i64 %.val6.i.i63, %i.nt
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nv = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nw = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nw
  %.val8.i.i.prol = load i16, ptr %i.nx, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.nz = and i16 %.val8.i.i.prol, 32767
  %i.oa = icmp samesign ugt i16 %i.nz, 32640
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.ob = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.ky)
  %i.oc = or i1 %.not.i.i.i.i.i68.prol, %i.oa
  %i.od = select i1 %i.oc, i16 %.val8.i.i.prol, i16 %i.ob
  store i16 %i.od, ptr %i.ny, align 2, !alias.scope !4221, !noalias !4218
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nv, %.lr.ph.split.split.i.i.prol ]
  %i.oe = icmp eq i64 %i.nu, %.val.i.i62
  br i1 %i.oe, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lk, 8
  %or.cond525 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.of = and i64 %i.lk, 8
  %n.vec444 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.og = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.og ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oh, align 2, !noalias !4218 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.oj, align 2, !noalias !4218 ; 4 uses
  %i.ok = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.ol = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.om = icmp samesign ugt <8 x i16> %i.ok, splat (i16 32640) ; 3 uses
  %i.on = icmp samesign ugt <8 x i16> %i.ol, splat (i16 32640) ; 3 uses
  %i.oo = xor <8 x i1> %i.om, splat (i1 true)
  %i.op = xor <8 x i1> %i.on, splat (i1 true)
  %i.oq = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.or = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.os = or <8 x i1> %i.om, %i.oq
  %i.ot = xor <8 x i1> %i.os, splat (i1 true)
  %i.ou = or <8 x i1> %i.on, %i.or
  %i.ov = xor <8 x i1> %i.ou, splat (i1 true)
  %i.ow = or <8 x i16> %i.ok, %broadcast.splat
  %i.ox = or <8 x i16> %i.ol, %broadcast.splat
  %i.oy = icmp eq <8 x i16> %i.ow, zeroinitializer
  %i.oz = icmp eq <8 x i16> %i.ox, zeroinitializer
  %i.pa = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.pb = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.pc = select <8 x i1> %i.ot, <8 x i1> %i.oy, <8 x i1> zeroinitializer
  %i.pd = select <8 x i1> %i.ov, <8 x i1> %i.oz, <8 x i1> zeroinitializer
  %i.pe = and <8 x i1> %i.oq, %i.pa
  %i.pf = select <8 x i1> %i.oo, <8 x i1> %i.pe, <8 x i1> zeroinitializer
  %i.pg = and <8 x i1> %i.or, %i.pb
  %i.ph = select <8 x i1> %i.op, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pi = or <8 x i1> %i.pf, %i.pc
  %i.pj = or <8 x i1> %i.ph, %i.pd
  %i.pk = or <8 x i1> %i.pi, %i.om
  %i.pl = or <8 x i1> %i.pj, %i.on
  %predphi449 = select <8 x i1> %i.pk, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %i.pl, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store <8 x i16> %predphi449, ptr %i.oi, align 2, !alias.scope !4221, !noalias !4218
  store <8 x i16> %predphi450, ptr %i.pm, align 2, !alias.scope !4221, !noalias !4218
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pn = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pn, label %middle.block452, label %vector.body445, !llvm.loop !4201

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lk, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.of, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !22

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lk, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.po = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.po
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.po
  %wide.load465 = load <8 x i16>, ptr %i.pp, align 2, !noalias !4218 ; 4 uses
  %i.pr = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.ps = icmp samesign ugt <8 x i16> %i.pr, splat (i16 32640) ; 3 uses
  %i.pt = xor <8 x i1> %i.ps, splat (i1 true)
  %i.pu = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pv = or <8 x i1> %i.ps, %i.pu
  %i.pw = xor <8 x i1> %i.pv, splat (i1 true)
  %i.px = or <8 x i16> %i.pr, %broadcast.splat462
  %i.py = icmp eq <8 x i16> %i.px, zeroinitializer
  %i.pz = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.qa = select <8 x i1> %i.pw, <8 x i1> %i.py, <8 x i1> zeroinitializer
  %i.qb = and <8 x i1> %i.pu, %i.pz
  %i.qc = select <8 x i1> %i.pt, <8 x i1> %i.qb, <8 x i1> zeroinitializer
  %i.qd = or <8 x i1> %i.qc, %i.qa
  %i.qe = or <8 x i1> %i.qd, %i.ps
  %predphi466 = select <8 x i1> %i.qe, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.pq, align 2, !alias.scope !4221, !noalias !4218
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qf = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.qf, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4202

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lk, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qg, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qg = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qh = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qh
  %.val8.us12.i.i = load i16, ptr %i.qi, align 2, !noalias !4218, !noundef !5 ; 6 uses
  %i.qk = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.ql = icmp samesign ugt i16 %i.qk, 32640
  br i1 %i.ql, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qm = or i16 %i.qk, %i.ky
  %.not.i.i.us.i.i = icmp eq i16 %i.qm, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qn = icmp ult i16 %.val8.us12.i.i, %i.ky
  br i1 %i.qn, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qo = phi i16 [ %i.ky, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.qo, ptr %i.qj, align 2, !alias.scope !4221, !noalias !4218
  %exitcond16.not.i.i = icmp eq i64 %i.qg, %i.lk
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4203

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qx, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qp = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qp
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qp
  %.val8.i.i = load i16, ptr %i.qq, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.qs = and i16 %.val8.i.i, 32767
  %i.qt = icmp samesign ugt i16 %i.qs, 32640
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qu = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.ky)
  %i.qv = or i1 %.not.i.i.i.i.i68, %i.qt
  %i.qw = select i1 %i.qv, i16 %.val8.i.i, i16 %i.qu
  store i16 %i.qw, ptr %i.qr, align 2, !alias.scope !4221, !noalias !4218
  %i.qx = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qy, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.ra = and i16 %.val8.i.i.1, 32767
  %i.rb = icmp samesign ugt i16 %i.ra, 32640
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.rc = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.ky)
  %i.rd = or i1 %.not.i.i.i.i.i68.1, %i.rb
  %i.re = select i1 %i.rd, i16 %.val8.i.i.1, i16 %i.rc
  store i16 %i.re, ptr %i.qz, align 2, !alias.scope !4221, !noalias !4218
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qx, %i.lk
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4204

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4217
end_hunk_0
begin_hunk_1_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MinimumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4280
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4281
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B25_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4281
  call void @llvm.experimental.noalias.scope.decl(metadata !4282)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4282, !noalias !4283, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4282, !noalias !4283, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4284, !noalias !4285, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4284, !noalias !4285, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4284, !noalias !4285, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4286, !noalias !4285, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i406 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i408 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i407 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i407
  %i.ix = sub i64 %i.iw, %.val.i.i.i406
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i408
  %i.iz = sub i64 %i.iy, %.val.i.i.i406
  %diff.check409 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check409
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4287 ; 6 uses
  %wide.load410 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4287 ; 5 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767)
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 32640) ; 3 uses
  %i.jh = xor <8 x i1> %i.jg, splat (i1 true)
  %i.ji = and <8 x i16> %wide.load410, splat (i16 32767) ; 2 uses
  %i.jj = icmp samesign ugt <8 x i16> %i.ji, splat (i16 32640) ; 2 uses
  %i.jk = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.jj ; 2 uses
  %i.jl = xor <8 x i1> %i.jk, splat (i1 true)
  %i.jm = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jn = icmp slt <8 x i16> %wide.load410, zeroinitializer ; 3 uses
  %i.jo = select <8 x i1> %i.jk, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jp = icmp ult <8 x i16> %wide.load, %wide.load410
  %i.jq = and <8 x i1> %i.jn, %i.jp
  %i.jr = select <8 x i1> %i.jl, <8 x i1> %i.jm, <8 x i1> zeroinitializer ; 2 uses
  %i.js = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jt = select <8 x i1> %i.jr, <8 x i1> %i.js, <8 x i1> zeroinitializer
  %i.ju = icmp ule <8 x i16> %wide.load, %wide.load410
  %i.jv = select <8 x i1> %i.jr, <8 x i1> %i.jn, <8 x i1> zeroinitializer
  %i.jw = or <8 x i16> %i.ji, %wide.load
  %i.jx = icmp eq <8 x i16> %i.jw, zeroinitializer
  %i.jy = select <8 x i1> %i.jh, <8 x i1> %i.jj, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jt, <8 x i1> %i.ju, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jv, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jo, <8 x i1> splat (i1 true), <8 x i1> %i.jq
  %i.kc = xor <8 x i1> %i.kb, splat (i1 true)
  %i.kd = or <8 x i1> %i.ka, %i.kc
  %i.ke = or <8 x i1> %i.kd, %i.jz
  %i.kf = or <8 x i1> %i.ke, %i.jy
  %i.kg = or <8 x i1> %i.kf, %i.jg
  %predphi = select <8 x i1> %i.kg, <8 x i16> %wide.load, <8 x i16> %wide.load410
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4287
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !4250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ki, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ki = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kj = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kk = add i64 %i.kj, %i.iu                    ; 2 uses
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kk
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kk
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kj
  %i.ko = load i16, ptr %i.kl, align 2, !noalias !4287, !noundef !5 ; 10 uses
  %i.kp = load i16, ptr %i.km, align 2, !noalias !4287, !noundef !5 ; 5 uses
  %i.kq = and i16 %i.ko, 32767
  %i.kr = icmp samesign ugt i16 %i.kq, 32640
  br i1 %i.kr, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.ks = and i16 %i.kp, 32767                    ; 2 uses
  %i.kt = icmp samesign ugt i16 %i.ks, 32640
  br i1 %i.kt, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i = icmp sgt i16 %i.ko, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.kp, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.q
  %i.ku = icmp samesign ugt i16 %i.ko, %i.kp
  br i1 %i.ku, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.q
  %i.kv = or i16 %i.ks, %i.ko
  %.not.i.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.r

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.p
  %i.kw = icmp ult i16 %i.ko, %i.kp
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kw
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.r:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.r, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.o, %scalar.ph
  %i.kx = phi i16 [ %i.kp, %bb.r ], [ %i.ko, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.ko, %.split5.i.i.i.i ], [ %i.ko, %.split.i.i.i.i ], [ %i.ko, %scalar.ph ], [ %i.ko, %bb.o ]
  store i16 %i.kx, ptr %i.kn, align 2, !noalias !4287
  %exitcond.not.i.i = icmp eq i64 %i.ki, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4251

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4280
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.al, %bb.y, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ky = add i64 %.sroa.0.0170, %i.x
  %i.kz = load i64, ptr %i.ac, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.la, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.s:                                             ; preds = %bb.k
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.lc = load i16, ptr %i.lb, align 2, !noundef !5 ; 11 uses
  %i.ld = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.ld, %4
  %or.cond58 = or i1 %i.le, %.not
  br i1 %or.cond58, label %.invoke, label %bb.t, !prof !17

.invoke385:                                       ; preds = %bb.x, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.af, %.lr.ph169
  %i.lf = phi i64 [ %i.to, %bb.af ], [ %i.tg, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.tl, %.lr.ph169 ], [ %i.uc, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.sx, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.x ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lg = phi i64 [ %6, %bb.af ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.x ], [ %6, %bb.k ]
  %i.lh = phi ptr [ @16, %bb.af ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.x ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lf, i64 noundef %i.lg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lh) #26
          to label %.cont386 unwind label %.loopexit.split-lp

.cont386:                                         ; preds = %.invoke385
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.li = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lj = icmp ult i64 %i.li, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.li, %i.n
  %or.cond59 = or i1 %i.lj, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4288
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.x
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lk, ptr noundef nonnull readonly %i.lm, ptr noundef nonnull align 2 %i.ll, ptr noundef nonnull %i.ln)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4289, !noalias !4290, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4289, !noalias !4290, !noundef !5 ; 6 uses
  %i.lo = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4291, !noalias !4290, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66413 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4291, !noalias !4290, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lp = and i16 %i.lc, 32767                    ; 4 uses
  %i.lq = icmp samesign ugt i16 %i.lp, 32640
  %i.lr = sub i64 %.val.i.i.i66413, %.val1.i.i.i412
  %diff.check414 = icmp ugt i64 %i.lr, -32        ; 3 uses
  br i1 %i.lq, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check416 = icmp ult i64 %i.lo, 4
  %or.cond523 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check417 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check
  %i.ls = and i64 %i.lo, 12
  %n.vec419 = and i64 %i.lo, -16                  ; 4 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.ph418, %vector.body420
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 2 uses
  %i.lt = add i64 %index421, %.val.i.i62          ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load422 = load <8 x i16>, ptr %i.lu, align 2, !noalias !4289
  %wide.load423 = load <8 x i16>, ptr %i.lw, align 2, !noalias !4289
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <8 x i16> %wide.load422, ptr %i.lv, align 2, !alias.scope !4292, !noalias !4289
  store <8 x i16> %wide.load423, ptr %i.lx, align 2, !alias.scope !4292, !noalias !4289
  %index.next424 = add nuw i64 %index421, 16      ; 2 uses
  %i.ly = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.ly, label %middle.block425, label %vector.body420, !llvm.loop !4266

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %i.lo, %n.vec419
  br i1 %cmp.n426, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block425
  %min.epilog.iters.check = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec419, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec427 = and i64 %i.lo, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index428 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = add i64 %index428, %.val.i.i62          ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %wide.load429 = load <4 x i16>, ptr %i.ma, align 2, !noalias !4289
  store <4 x i16> %wide.load429, ptr %i.mb, align 2, !alias.scope !4292, !noalias !4289
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next430, %n.vec427
  br i1 %i.mc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4267

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %i.lo, %n.vec427
  br i1 %cmp.n431, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec419, %vec.epilog.iter.check ], [ %n.vec427, %vec.epilog.middle.block ] ; 3 uses
  %7 = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter545 = and i64 %7, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.md, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.md = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.me = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.me
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.me
  %.val8.us.i.i.prol = load i16, ptr %i.mf, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mg, align 2, !alias.scope !4292, !noalias !4289
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter545
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !4268

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.md, %.lr.ph.split.us.i.i.prol ]
  %i.mh = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mi = add i64 %i.mh, %.val.i.i62
  %i.mj = icmp ugt i64 %i.mi, -4
  br i1 %i.mj, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op556 = add i64 1, %.val.i.i62
  %invariant.op558 = add i64 2, %.val.i.i62
  %invariant.op560 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.mr, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.mk = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mk
  %.val8.us.i.i = load i16, ptr %i.ml, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mm, align 2, !alias.scope !4292, !noalias !4289
  %.reass557 = add i64 %.sroa.0.010.us.i.i, %invariant.op556 ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass557
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass557
  %.val8.us.i.i.1 = load i16, ptr %i.mn, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mo, align 2, !alias.scope !4292, !noalias !4289
  %.reass559 = add i64 %.sroa.0.010.us.i.i, %invariant.op558 ; 2 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass559
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass559
  %.val8.us.i.i.2 = load i16, ptr %i.mp, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mq, align 2, !alias.scope !4292, !noalias !4289
  %i.mr = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass561 = add i64 %.sroa.0.010.us.i.i, %invariant.op560 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass561
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass561
  %.val8.us.i.i.3 = load i16, ptr %i.ms, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mt, align 2, !alias.scope !4292, !noalias !4289
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mr, %i.lo
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i, !llvm.loop !4269

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.lc, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check453, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lo, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check414
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mu = and i64 %i.lo, 12
  %n.vec478 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mv = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mv ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mw, align 2, !noalias !4289 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.my, align 2, !noalias !4289 ; 4 uses
  %i.mz = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.na = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.nb = icmp samesign ult <8 x i16> %i.mz, splat (i16 32641)
  %i.nc = icmp samesign ult <8 x i16> %i.na, splat (i16 32641)
  %i.nd = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.ne = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nf = and <8 x i1> %i.nd, %i.nb
  %i.ng = and <8 x i1> %i.ne, %i.nc
  %i.nh = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.ni = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nj = select <8 x i1> %i.nf, <8 x i16> %i.nh, <8 x i16> %wide.load483
  %i.nk = select <8 x i1> %i.ng, <8 x i16> %i.ni, <8 x i16> %wide.load484
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <8 x i16> %i.nj, ptr %i.mx, align 2, !alias.scope !4292, !noalias !4289
  store <8 x i16> %i.nk, ptr %i.nl, align 2, !alias.scope !4292, !noalias !4289
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nm = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nm, label %middle.block486, label %vector.body481, !llvm.loop !4270

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lo, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lo, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nn = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nn
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nn
  %wide.load499 = load <4 x i16>, ptr %i.no, align 2, !noalias !4289 ; 4 uses
  %i.nq = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.nr = icmp samesign ult <4 x i16> %i.nq, splat (i16 32641)
  %i.ns = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nt = and <4 x i1> %i.ns, %i.nr
  %i.nu = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nv = select <4 x i1> %i.nt, <4 x i16> %i.nu, <4 x i16> %wide.load499
  store <4 x i16> %i.nv, ptr %i.np, align 2, !alias.scope !4292, !noalias !4289
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nw, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4271

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lo, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nx = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ny = add i64 %.val6.i.i63, %i.nx
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nz = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.oa = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oa
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oa
  %.val8.i.i.prol = load i16, ptr %i.ob, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.od = and i16 %.val8.i.i.prol, 32767
  %i.oe = icmp samesign ult i16 %i.od, 32641
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.oe
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.lc)
  %i.of = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.of, ptr %i.oc, align 2, !alias.scope !4292, !noalias !4289
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nz, %.lr.ph.split.split.i.i.prol ]
  %i.og = icmp eq i64 %i.ny, %.val.i.i62
  br i1 %i.og, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.lo, 8
  %or.cond525 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.oh = and i64 %i.lo, 8
  %n.vec440 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.oi = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oi ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.oj, align 2, !noalias !4289 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.ol, align 2, !noalias !4289 ; 5 uses
  %i.om = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.on = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 32640) ; 3 uses
  %i.op = icmp samesign ugt <8 x i16> %i.on, splat (i16 32640) ; 3 uses
  %i.oq = xor <8 x i1> %i.oo, splat (i1 true)
  %i.or = xor <8 x i1> %i.op, splat (i1 true)
  %i.os = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.ot = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.ou = or <8 x i1> %i.oo, %i.os
  %i.ov = xor <8 x i1> %i.ou, splat (i1 true)
  %i.ow = or <8 x i1> %i.op, %i.ot
  %i.ox = xor <8 x i1> %i.ow, splat (i1 true)
  %i.oy = icmp uge <8 x i16> %wide.load445, %broadcast.splat
  %i.oz = icmp uge <8 x i16> %wide.load446, %broadcast.splat
  %i.pa = or <8 x i16> %wide.load445, %broadcast.splat442
  %i.pb = or <8 x i16> %wide.load446, %broadcast.splat442
  %i.pc = icmp eq <8 x i16> %i.pa, zeroinitializer
  %i.pd = icmp eq <8 x i16> %i.pb, zeroinitializer
  %i.pe = select <8 x i1> %i.ov, <8 x i1> %i.oy, <8 x i1> zeroinitializer
  %i.pf = select <8 x i1> %i.ox, <8 x i1> %i.oz, <8 x i1> zeroinitializer
  %i.pg = and <8 x i1> %i.os, %i.pc
  %i.ph = select <8 x i1> %i.oq, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pi = and <8 x i1> %i.ot, %i.pd
  %i.pj = select <8 x i1> %i.or, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pk = or <8 x i1> %i.ph, %i.pe
  %i.pl = or <8 x i1> %i.pj, %i.pf
  %i.pm = or <8 x i1> %i.pk, %i.oo
  %i.pn = or <8 x i1> %i.pl, %i.op
  %predphi447 = select <8 x i1> %i.pm, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %i.pn, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.po = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <8 x i16> %predphi447, ptr %i.ok, align 2, !alias.scope !4292, !noalias !4289
  store <8 x i16> %predphi448, ptr %i.po, align 2, !alias.scope !4292, !noalias !4289
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pp = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pp, label %middle.block450, label %vector.body443, !llvm.loop !4272

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.lo, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.oh, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !22

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.lo, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pq = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pq
  %wide.load465 = load <8 x i16>, ptr %i.pr, align 2, !noalias !4289 ; 5 uses
  %i.pt = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pu = icmp samesign ugt <8 x i16> %i.pt, splat (i16 32640) ; 3 uses
  %i.pv = xor <8 x i1> %i.pu, splat (i1 true)
  %i.pw = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.px = or <8 x i1> %i.pu, %i.pw
  %i.py = xor <8 x i1> %i.px, splat (i1 true)
  %i.pz = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.qa = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.qb = icmp eq <8 x i16> %i.qa, zeroinitializer
  %i.qc = select <8 x i1> %i.py, <8 x i1> %i.pz, <8 x i1> zeroinitializer
  %i.qd = and <8 x i1> %i.pw, %i.qb
  %i.qe = select <8 x i1> %i.pv, <8 x i1> %i.qd, <8 x i1> zeroinitializer
  %i.qf = or <8 x i1> %i.qe, %i.qc
  %i.qg = or <8 x i1> %i.qf, %i.pu
  %predphi466 = select <8 x i1> %i.qg, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.ps, align 2, !alias.scope !4292, !noalias !4289
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.qh, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4273

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lo, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qi, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qi = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qj = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qj
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qj
  %.val8.us12.i.i = load i16, ptr %i.qk, align 2, !noalias !4289, !noundef !5 ; 7 uses
  %i.qm = and i16 %.val8.us12.i.i, 32767
  %i.qn = icmp samesign ugt i16 %i.qm, 32640
  br i1 %i.qn, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.qo = icmp ult i16 %.val8.us12.i.i, %i.lc
  br i1 %i.qo, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qp = or i16 %.val8.us12.i.i, %i.lp
  %.not.i.i.us.i.i = icmp eq i16 %i.qp, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qq = phi i16 [ %i.lc, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qq, ptr %i.ql, align 2, !alias.scope !4292, !noalias !4289
  %exitcond16.not.i.i = icmp eq i64 %i.qi, %i.lo
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4274

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qx, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qr
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qr
  %.val8.i.i = load i16, ptr %i.qs, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.qu = and i16 %.val8.i.i, 32767
  %i.qv = icmp samesign ult i16 %i.qu, 32641
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qv
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.lc)
  %i.qw = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qw, ptr %i.qt, align 2, !alias.scope !4292, !noalias !4289
  %i.qx = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qy, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.ra = and i16 %.val8.i.i.1, 32767
  %i.rb = icmp samesign ult i16 %i.ra, 32641
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.rb
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.lc)
  %i.rc = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.rc, ptr %i.qz, align 2, !alias.scope !4292, !noalias !4289
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qx, %i.lo
end_hunk_1
begin_hunk_2_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MaximumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4351
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4352
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B26_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4352
  call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4353, !noalias !4354, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4353, !noalias !4354, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4355, !noalias !4356, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4355, !noalias !4356, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4355, !noalias !4356, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4357, !noalias !4356, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i410 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i412 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i411 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i411
  %i.ix = sub i64 %i.iw, %.val.i.i.i410
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i412
  %i.iz = sub i64 %i.iy, %.val.i.i.i410
  %diff.check413 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check413
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4358 ; 5 uses
  %wide.load414 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4358 ; 6 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767) ; 2 uses
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 31744)
  %i.jh = and <8 x i16> %wide.load414, splat (i16 32767)
  %i.ji = icmp samesign ugt <8 x i16> %i.jh, splat (i16 31744)
  %i.jj = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.ji ; 3 uses
  %i.jk = xor <8 x i1> %i.jj, splat (i1 true)
  %i.jl = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jm = icmp sgt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.jn = select <8 x i1> %i.jj, <8 x i1> splat (i1 true), <8 x i1> %i.jl ; 2 uses
  %i.jo = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jp = select <8 x i1> %i.jn, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jq = icmp ule <8 x i16> %wide.load, %wide.load414
  %i.jr = select <8 x i1> %i.jo, <8 x i1> %i.jm, <8 x i1> zeroinitializer
  %i.js = or <8 x i16> %wide.load414, %i.jf
  %i.jt = icmp eq <8 x i16> %i.js, zeroinitializer
  %i.ju = select <8 x i1> %i.jk, <8 x i1> %i.jl, <8 x i1> zeroinitializer
  %i.jv = icmp ult <8 x i16> %wide.load, %wide.load414
  %i.jw = and <8 x i1> %i.jm, %i.jv
  %i.jx = xor <8 x i1> %i.jw, splat (i1 true)
  %i.jy = select <8 x i1> %i.ju, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jr, <8 x i1> %i.jt, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jp, <8 x i1> %i.jz, <8 x i1> %i.jq
  %i.kb = or <8 x i1> %i.ka, %i.jy
  %i.kc = or <8 x i1> %i.kb, %i.jj
  %predphi = select <8 x i1> %i.kc, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4358
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !4321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ke, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !4358, !noundef !5 ; 8 uses
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !4358, !noundef !5 ; 6 uses
  %i.km = and i16 %i.kk, 32767                    ; 2 uses
  %i.kn = icmp samesign ugt i16 %i.km, 31744
  %i.ko = and i16 %i.kl, 32767
  %i.kp = icmp samesign ugt i16 %i.ko, 31744
  %or.cond.i.i.i.i.i = select i1 %i.kn, i1 true, i1 %i.kp
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kk, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kl, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kq = icmp ult i16 %i.kk, %i.kl
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kq
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kr = or i16 %i.kl, %i.km
  %.not.i.i.i.i = icmp eq i16 %i.kr, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.ks = icmp samesign ugt i16 %i.kk, %i.kl
  br i1 %i.ks, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kt = phi i16 [ %i.kl, %bb.q ], [ %i.kk, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kk, %.split4.i.i.i.i ], [ %i.kk, %.split.i.i.i.i ], [ %i.kk, %scalar.ph ]
  store i16 %i.kt, ptr %i.kj, align 2, !noalias !4358
  %exitcond.not.i.i = icmp eq i64 %i.ke, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4322

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4351
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ku = add i64 %.sroa.0.0170, %i.x
  %i.kv = load i64, ptr %i.ac, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ky = load i16, ptr %i.kx, align 2, !noundef !5 ; 12 uses
  %i.kz = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kz, %4
  %or.cond58 = or i1 %i.la, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !17

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.ad, %.lr.ph169
  %i.lb = phi i64 [ %i.th, %bb.ad ], [ %i.sz, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.te, %.lr.ph169 ], [ %i.tv, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.sq, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lc = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.ld = phi ptr [ @16, %bb.ad ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.w ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef %i.lc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ld) #26
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.le = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lf = icmp ult i64 %i.le, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.le, %i.n
  %or.cond59 = or i1 %i.lf, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4359
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lg, ptr noundef nonnull readonly %i.li, ptr noundef nonnull align 2 %i.lh, ptr noundef nonnull %i.lj)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4360, !noalias !4361, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4360, !noalias !4361, !noundef !5 ; 6 uses
  %i.lk = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4362, !noalias !4361, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4362, !noalias !4361, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ll = and i16 %i.ky, 32767
  %i.lm = icmp samesign ugt i16 %i.ll, 31744
  %i.ln = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.ln, -32        ; 3 uses
  br i1 %i.lm, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lk, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.lo = and i64 %i.lk, 12
  %n.vec423 = and i64 %i.lk, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph422, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lp = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lq, align 2, !noalias !4360
  %wide.load427 = load <8 x i16>, ptr %i.ls, align 2, !noalias !4360
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <8 x i16> %wide.load426, ptr %i.lr, align 2, !alias.scope !4363, !noalias !4360
  store <8 x i16> %wide.load427, ptr %i.lt, align 2, !alias.scope !4363, !noalias !4360
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lu, label %middle.block429, label %vector.body424, !llvm.loop !4337

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lk, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.lo, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lk, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lv
  %wide.load433 = load <4 x i16>, ptr %i.lw, align 2, !noalias !4360
  store <4 x i16> %wide.load433, ptr %i.lx, align 2, !alias.scope !4363, !noalias !4360
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4338

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lk, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %7 = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %7, 3                    ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ]
  %i.lz = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.ma = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ma
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ma
  %.val8.us.i.i.prol = load i16, ptr %i.mb, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mc, align 2, !alias.scope !4363, !noalias !4360
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter548
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, !llvm.loop !4339

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ], [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ]
  %i.md = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.me = add i64 %i.md, %.val.i.i62
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit
  %invariant.op559 = add i64 1, %.val.i.i62
  %invariant.op561 = add i64 2, %.val.i.i62
  %invariant.op563 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new ], [ %i.mn, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i ] ; 5 uses
  %i.mg = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mg
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mg
  %.val8.us.i.i = load i16, ptr %i.mh, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mi, align 2, !alias.scope !4363, !noalias !4360
  %.reass560 = add i64 %.sroa.0.010.us.i.i, %invariant.op559 ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass560
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass560
  %.val8.us.i.i.1 = load i16, ptr %i.mj, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mk, align 2, !alias.scope !4363, !noalias !4360
  %.reass562 = add i64 %.sroa.0.010.us.i.i, %invariant.op561 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass562
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass562
  %.val8.us.i.i.2 = load i16, ptr %i.ml, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mm, align 2, !alias.scope !4363, !noalias !4360
  %i.mn = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass564 = add i64 %.sroa.0.010.us.i.i, %invariant.op563 ; 2 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass564
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass564
  %.val8.us.i.i.3 = load i16, ptr %i.mo, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mp, align 2, !alias.scope !4363, !noalias !4360
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mn, %i.lk
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, !llvm.loop !4340

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.ky, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check455, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lk, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check418
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mq = and i64 %i.lk, 12
  %n.vec478 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mr = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mr ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.ms, align 2, !noalias !4360 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mu, align 2, !noalias !4360 ; 4 uses
  %i.mv = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.mw = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.mx = icmp samesign ugt <8 x i16> %i.mv, splat (i16 31744)
  %i.my = icmp samesign ugt <8 x i16> %i.mw, splat (i16 31744)
  %i.mz = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.na = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nb = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nd = or <8 x i1> %i.mz, %i.mx
  %i.ne = or <8 x i1> %i.na, %i.my
  %i.nf = select <8 x i1> %i.nd, <8 x i16> %wide.load483, <8 x i16> %i.nb
  %i.ng = select <8 x i1> %i.ne, <8 x i16> %wide.load484, <8 x i16> %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <8 x i16> %i.nf, ptr %i.mt, align 2, !alias.scope !4363, !noalias !4360
  store <8 x i16> %i.ng, ptr %i.nh, align 2, !alias.scope !4363, !noalias !4360
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.ni = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.ni, label %middle.block486, label %vector.body481, !llvm.loop !4341

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lk, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mq, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lk, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nj = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nj
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nj
  %wide.load499 = load <4 x i16>, ptr %i.nk, align 2, !noalias !4360 ; 4 uses
  %i.nm = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.nn = icmp samesign ugt <4 x i16> %i.nm, splat (i16 31744)
  %i.no = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.np = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nq = or <4 x i1> %i.no, %i.nn
  %i.nr = select <4 x i1> %i.nq, <4 x i16> %wide.load499, <4 x i16> %i.np
  store <4 x i16> %i.nr, ptr %i.nl, align 2, !alias.scope !4363, !noalias !4360
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.ns, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4342

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lk, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nt = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nu = add i64 %.val6.i.i63, %i.nt
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nv = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nw = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nw
  %.val8.i.i.prol = load i16, ptr %i.nx, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.nz = and i16 %.val8.i.i.prol, 32767
  %i.oa = icmp samesign ugt i16 %i.nz, 31744
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.ob = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.ky)
  %i.oc = or i1 %.not.i.i.i.i.i68.prol, %i.oa
  %i.od = select i1 %i.oc, i16 %.val8.i.i.prol, i16 %i.ob
  store i16 %i.od, ptr %i.ny, align 2, !alias.scope !4363, !noalias !4360
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nv, %.lr.ph.split.split.i.i.prol ]
  %i.oe = icmp eq i64 %i.nu, %.val.i.i62
  br i1 %i.oe, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lk, 8
  %or.cond525 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.of = and i64 %i.lk, 8
  %n.vec444 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.og = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.og ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oh, align 2, !noalias !4360 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.oj, align 2, !noalias !4360 ; 4 uses
  %i.ok = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.ol = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.om = icmp samesign ugt <8 x i16> %i.ok, splat (i16 31744) ; 3 uses
  %i.on = icmp samesign ugt <8 x i16> %i.ol, splat (i16 31744) ; 3 uses
  %i.oo = xor <8 x i1> %i.om, splat (i1 true)
  %i.op = xor <8 x i1> %i.on, splat (i1 true)
  %i.oq = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.or = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.os = or <8 x i1> %i.om, %i.oq
  %i.ot = xor <8 x i1> %i.os, splat (i1 true)
  %i.ou = or <8 x i1> %i.on, %i.or
  %i.ov = xor <8 x i1> %i.ou, splat (i1 true)
  %i.ow = or <8 x i16> %i.ok, %broadcast.splat
  %i.ox = or <8 x i16> %i.ol, %broadcast.splat
  %i.oy = icmp eq <8 x i16> %i.ow, zeroinitializer
  %i.oz = icmp eq <8 x i16> %i.ox, zeroinitializer
  %i.pa = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.pb = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.pc = select <8 x i1> %i.ot, <8 x i1> %i.oy, <8 x i1> zeroinitializer
  %i.pd = select <8 x i1> %i.ov, <8 x i1> %i.oz, <8 x i1> zeroinitializer
  %i.pe = and <8 x i1> %i.oq, %i.pa
  %i.pf = select <8 x i1> %i.oo, <8 x i1> %i.pe, <8 x i1> zeroinitializer
  %i.pg = and <8 x i1> %i.or, %i.pb
  %i.ph = select <8 x i1> %i.op, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pi = or <8 x i1> %i.pf, %i.pc
  %i.pj = or <8 x i1> %i.ph, %i.pd
  %i.pk = or <8 x i1> %i.pi, %i.om
  %i.pl = or <8 x i1> %i.pj, %i.on
  %predphi449 = select <8 x i1> %i.pk, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %i.pl, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store <8 x i16> %predphi449, ptr %i.oi, align 2, !alias.scope !4363, !noalias !4360
  store <8 x i16> %predphi450, ptr %i.pm, align 2, !alias.scope !4363, !noalias !4360
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pn = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pn, label %middle.block452, label %vector.body445, !llvm.loop !4343

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lk, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.of, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !22

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lk, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.po = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.po
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.po
  %wide.load465 = load <8 x i16>, ptr %i.pp, align 2, !noalias !4360 ; 4 uses
  %i.pr = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.ps = icmp samesign ugt <8 x i16> %i.pr, splat (i16 31744) ; 3 uses
  %i.pt = xor <8 x i1> %i.ps, splat (i1 true)
  %i.pu = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pv = or <8 x i1> %i.ps, %i.pu
  %i.pw = xor <8 x i1> %i.pv, splat (i1 true)
  %i.px = or <8 x i16> %i.pr, %broadcast.splat462
  %i.py = icmp eq <8 x i16> %i.px, zeroinitializer
  %i.pz = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.qa = select <8 x i1> %i.pw, <8 x i1> %i.py, <8 x i1> zeroinitializer
  %i.qb = and <8 x i1> %i.pu, %i.pz
  %i.qc = select <8 x i1> %i.pt, <8 x i1> %i.qb, <8 x i1> zeroinitializer
  %i.qd = or <8 x i1> %i.qc, %i.qa
  %i.qe = or <8 x i1> %i.qd, %i.ps
  %predphi466 = select <8 x i1> %i.qe, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.pq, align 2, !alias.scope !4363, !noalias !4360
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qf = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.qf, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4344

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lk, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qg, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qg = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qh = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qh
  %.val8.us12.i.i = load i16, ptr %i.qi, align 2, !noalias !4360, !noundef !5 ; 6 uses
  %i.qk = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.ql = icmp samesign ugt i16 %i.qk, 31744
  br i1 %i.ql, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qm = or i16 %i.qk, %i.ky
  %.not.i.i.us.i.i = icmp eq i16 %i.qm, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qn = icmp ult i16 %.val8.us12.i.i, %i.ky
  br i1 %i.qn, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qo = phi i16 [ %i.ky, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.qo, ptr %i.qj, align 2, !alias.scope !4363, !noalias !4360
  %exitcond16.not.i.i = icmp eq i64 %i.qg, %i.lk
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4345

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qx, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qp = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qp
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qp
  %.val8.i.i = load i16, ptr %i.qq, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.qs = and i16 %.val8.i.i, 32767
  %i.qt = icmp samesign ugt i16 %i.qs, 31744
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qu = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.ky)
  %i.qv = or i1 %.not.i.i.i.i.i68, %i.qt
  %i.qw = select i1 %i.qv, i16 %.val8.i.i, i16 %i.qu
  store i16 %i.qw, ptr %i.qr, align 2, !alias.scope !4363, !noalias !4360
  %i.qx = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qy, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.ra = and i16 %.val8.i.i.1, 32767
  %i.rb = icmp samesign ugt i16 %i.ra, 31744
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.rc = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.ky)
  %i.rd = or i1 %.not.i.i.i.i.i68.1, %i.rb
  %i.re = select i1 %i.rd, i16 %.val8.i.i.1, i16 %i.rc
  store i16 %i.re, ptr %i.qz, align 2, !alias.scope !4363, !noalias !4360
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qx, %i.lk
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4346

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4359
end_hunk_2
begin_hunk_3_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MinimumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4422
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4423
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B26_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4423
  call void @llvm.experimental.noalias.scope.decl(metadata !4424)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4424, !noalias !4425, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4424, !noalias !4425, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4426, !noalias !4427, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4426, !noalias !4427, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4426, !noalias !4427, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4428, !noalias !4427, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i406 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i408 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i407 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i407
  %i.ix = sub i64 %i.iw, %.val.i.i.i406
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i408
  %i.iz = sub i64 %i.iy, %.val.i.i.i406
  %diff.check409 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check409
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4429 ; 6 uses
  %wide.load410 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4429 ; 5 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767)
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 31744) ; 3 uses
  %i.jh = xor <8 x i1> %i.jg, splat (i1 true)
  %i.ji = and <8 x i16> %wide.load410, splat (i16 32767) ; 2 uses
  %i.jj = icmp samesign ugt <8 x i16> %i.ji, splat (i16 31744) ; 2 uses
  %i.jk = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.jj ; 2 uses
  %i.jl = xor <8 x i1> %i.jk, splat (i1 true)
  %i.jm = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jn = icmp slt <8 x i16> %wide.load410, zeroinitializer ; 3 uses
  %i.jo = select <8 x i1> %i.jk, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jp = icmp ult <8 x i16> %wide.load, %wide.load410
  %i.jq = and <8 x i1> %i.jn, %i.jp
  %i.jr = select <8 x i1> %i.jl, <8 x i1> %i.jm, <8 x i1> zeroinitializer ; 2 uses
  %i.js = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jt = select <8 x i1> %i.jr, <8 x i1> %i.js, <8 x i1> zeroinitializer
  %i.ju = icmp ule <8 x i16> %wide.load, %wide.load410
  %i.jv = select <8 x i1> %i.jr, <8 x i1> %i.jn, <8 x i1> zeroinitializer
  %i.jw = or <8 x i16> %i.ji, %wide.load
  %i.jx = icmp eq <8 x i16> %i.jw, zeroinitializer
  %i.jy = select <8 x i1> %i.jh, <8 x i1> %i.jj, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jt, <8 x i1> %i.ju, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jv, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jo, <8 x i1> splat (i1 true), <8 x i1> %i.jq
  %i.kc = xor <8 x i1> %i.kb, splat (i1 true)
  %i.kd = or <8 x i1> %i.ka, %i.kc
  %i.ke = or <8 x i1> %i.kd, %i.jz
  %i.kf = or <8 x i1> %i.ke, %i.jy
  %i.kg = or <8 x i1> %i.kf, %i.jg
  %predphi = select <8 x i1> %i.kg, <8 x i16> %wide.load, <8 x i16> %wide.load410
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4429
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !4392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ki, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ki = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kj = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kk = add i64 %i.kj, %i.iu                    ; 2 uses
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kk
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kk
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kj
  %i.ko = load i16, ptr %i.kl, align 2, !noalias !4429, !noundef !5 ; 10 uses
  %i.kp = load i16, ptr %i.km, align 2, !noalias !4429, !noundef !5 ; 5 uses
  %i.kq = and i16 %i.ko, 32767
  %i.kr = icmp samesign ugt i16 %i.kq, 31744
  br i1 %i.kr, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.ks = and i16 %i.kp, 32767                    ; 2 uses
  %i.kt = icmp samesign ugt i16 %i.ks, 31744
  br i1 %i.kt, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i = icmp sgt i16 %i.ko, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.kp, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.q
  %i.ku = icmp samesign ugt i16 %i.ko, %i.kp
  br i1 %i.ku, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.q
  %i.kv = or i16 %i.ks, %i.ko
  %.not.i.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.r

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.p
  %i.kw = icmp ult i16 %i.ko, %i.kp
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kw
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.r:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.r, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.o, %scalar.ph
  %i.kx = phi i16 [ %i.kp, %bb.r ], [ %i.ko, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.ko, %.split5.i.i.i.i ], [ %i.ko, %.split.i.i.i.i ], [ %i.ko, %scalar.ph ], [ %i.ko, %bb.o ]
  store i16 %i.kx, ptr %i.kn, align 2, !noalias !4429
  %exitcond.not.i.i = icmp eq i64 %i.ki, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4393

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4422
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.al, %bb.y, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ky = add i64 %.sroa.0.0170, %i.x
  %i.kz = load i64, ptr %i.ac, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.la, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.s:                                             ; preds = %bb.k
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.lc = load i16, ptr %i.lb, align 2, !noundef !5 ; 11 uses
  %i.ld = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.ld, %4
  %or.cond58 = or i1 %i.le, %.not
  br i1 %or.cond58, label %.invoke, label %bb.t, !prof !17

.invoke385:                                       ; preds = %bb.x, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.af, %.lr.ph169
  %i.lf = phi i64 [ %i.to, %bb.af ], [ %i.tg, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.tl, %.lr.ph169 ], [ %i.uc, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.sx, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.x ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lg = phi i64 [ %6, %bb.af ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.x ], [ %6, %bb.k ]
  %i.lh = phi ptr [ @16, %bb.af ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.x ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lf, i64 noundef %i.lg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lh) #26
          to label %.cont386 unwind label %.loopexit.split-lp

.cont386:                                         ; preds = %.invoke385
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.li = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lj = icmp ult i64 %i.li, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.li, %i.n
  %or.cond59 = or i1 %i.lj, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4430
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.x
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lk, ptr noundef nonnull readonly %i.lm, ptr noundef nonnull align 2 %i.ll, ptr noundef nonnull %i.ln)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !4431)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4431, !noalias !4432, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4431, !noalias !4432, !noundef !5 ; 6 uses
  %i.lo = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4433, !noalias !4432, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66413 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4433, !noalias !4432, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lp = and i16 %i.lc, 32767                    ; 4 uses
  %i.lq = icmp samesign ugt i16 %i.lp, 31744
  %i.lr = sub i64 %.val.i.i.i66413, %.val1.i.i.i412
  %diff.check414 = icmp ugt i64 %i.lr, -32        ; 3 uses
  br i1 %i.lq, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check416 = icmp ult i64 %i.lo, 4
  %or.cond523 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check417 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check
  %i.ls = and i64 %i.lo, 12
  %n.vec419 = and i64 %i.lo, -16                  ; 4 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.ph418, %vector.body420
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 2 uses
  %i.lt = add i64 %index421, %.val.i.i62          ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load422 = load <8 x i16>, ptr %i.lu, align 2, !noalias !4431
  %wide.load423 = load <8 x i16>, ptr %i.lw, align 2, !noalias !4431
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <8 x i16> %wide.load422, ptr %i.lv, align 2, !alias.scope !4434, !noalias !4431
  store <8 x i16> %wide.load423, ptr %i.lx, align 2, !alias.scope !4434, !noalias !4431
  %index.next424 = add nuw i64 %index421, 16      ; 2 uses
  %i.ly = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.ly, label %middle.block425, label %vector.body420, !llvm.loop !4408

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %i.lo, %n.vec419
  br i1 %cmp.n426, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block425
  %min.epilog.iters.check = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec419, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec427 = and i64 %i.lo, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index428 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = add i64 %index428, %.val.i.i62          ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %wide.load429 = load <4 x i16>, ptr %i.ma, align 2, !noalias !4431
  store <4 x i16> %wide.load429, ptr %i.mb, align 2, !alias.scope !4434, !noalias !4431
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next430, %n.vec427
  br i1 %i.mc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4409

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %i.lo, %n.vec427
  br i1 %cmp.n431, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec419, %vec.epilog.iter.check ], [ %n.vec427, %vec.epilog.middle.block ] ; 3 uses
  %7 = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter545 = and i64 %7, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.md, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.md = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.me = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.me
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.me
  %.val8.us.i.i.prol = load i16, ptr %i.mf, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mg, align 2, !alias.scope !4434, !noalias !4431
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter545
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !4410

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.md, %.lr.ph.split.us.i.i.prol ]
  %i.mh = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mi = add i64 %i.mh, %.val.i.i62
  %i.mj = icmp ugt i64 %i.mi, -4
  br i1 %i.mj, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op556 = add i64 1, %.val.i.i62
  %invariant.op558 = add i64 2, %.val.i.i62
  %invariant.op560 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.mr, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.mk = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mk
  %.val8.us.i.i = load i16, ptr %i.ml, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mm, align 2, !alias.scope !4434, !noalias !4431
  %.reass557 = add i64 %.sroa.0.010.us.i.i, %invariant.op556 ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass557
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass557
  %.val8.us.i.i.1 = load i16, ptr %i.mn, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mo, align 2, !alias.scope !4434, !noalias !4431
  %.reass559 = add i64 %.sroa.0.010.us.i.i, %invariant.op558 ; 2 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass559
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass559
  %.val8.us.i.i.2 = load i16, ptr %i.mp, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mq, align 2, !alias.scope !4434, !noalias !4431
  %i.mr = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass561 = add i64 %.sroa.0.010.us.i.i, %invariant.op560 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass561
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass561
  %.val8.us.i.i.3 = load i16, ptr %i.ms, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mt, align 2, !alias.scope !4434, !noalias !4431
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mr, %i.lo
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i, !llvm.loop !4411

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.lc, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check453, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lo, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check414
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mu = and i64 %i.lo, 12
  %n.vec478 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mv = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mv ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mw, align 2, !noalias !4431 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.my, align 2, !noalias !4431 ; 4 uses
  %i.mz = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.na = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.nb = icmp samesign ult <8 x i16> %i.mz, splat (i16 31745)
  %i.nc = icmp samesign ult <8 x i16> %i.na, splat (i16 31745)
  %i.nd = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.ne = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nf = and <8 x i1> %i.nd, %i.nb
  %i.ng = and <8 x i1> %i.ne, %i.nc
  %i.nh = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.ni = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nj = select <8 x i1> %i.nf, <8 x i16> %i.nh, <8 x i16> %wide.load483
  %i.nk = select <8 x i1> %i.ng, <8 x i16> %i.ni, <8 x i16> %wide.load484
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <8 x i16> %i.nj, ptr %i.mx, align 2, !alias.scope !4434, !noalias !4431
  store <8 x i16> %i.nk, ptr %i.nl, align 2, !alias.scope !4434, !noalias !4431
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nm = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nm, label %middle.block486, label %vector.body481, !llvm.loop !4412

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lo, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lo, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nn = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nn
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nn
  %wide.load499 = load <4 x i16>, ptr %i.no, align 2, !noalias !4431 ; 4 uses
  %i.nq = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.nr = icmp samesign ult <4 x i16> %i.nq, splat (i16 31745)
  %i.ns = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nt = and <4 x i1> %i.ns, %i.nr
  %i.nu = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nv = select <4 x i1> %i.nt, <4 x i16> %i.nu, <4 x i16> %wide.load499
  store <4 x i16> %i.nv, ptr %i.np, align 2, !alias.scope !4434, !noalias !4431
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nw, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4413

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lo, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nx = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ny = add i64 %.val6.i.i63, %i.nx
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nz = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.oa = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oa
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oa
  %.val8.i.i.prol = load i16, ptr %i.ob, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.od = and i16 %.val8.i.i.prol, 32767
  %i.oe = icmp samesign ult i16 %i.od, 31745
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.oe
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.lc)
  %i.of = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.of, ptr %i.oc, align 2, !alias.scope !4434, !noalias !4431
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nz, %.lr.ph.split.split.i.i.prol ]
  %i.og = icmp eq i64 %i.ny, %.val.i.i62
  br i1 %i.og, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.lo, 8
  %or.cond525 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.oh = and i64 %i.lo, 8
  %n.vec440 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.oi = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oi ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.oj, align 2, !noalias !4431 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.ol, align 2, !noalias !4431 ; 5 uses
  %i.om = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.on = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 31744) ; 3 uses
  %i.op = icmp samesign ugt <8 x i16> %i.on, splat (i16 31744) ; 3 uses
  %i.oq = xor <8 x i1> %i.oo, splat (i1 true)
  %i.or = xor <8 x i1> %i.op, splat (i1 true)
  %i.os = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.ot = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.ou = or <8 x i1> %i.oo, %i.os
  %i.ov = xor <8 x i1> %i.ou, splat (i1 true)
  %i.ow = or <8 x i1> %i.op, %i.ot
  %i.ox = xor <8 x i1> %i.ow, splat (i1 true)
  %i.oy = icmp uge <8 x i16> %wide.load445, %broadcast.splat
  %i.oz = icmp uge <8 x i16> %wide.load446, %broadcast.splat
  %i.pa = or <8 x i16> %wide.load445, %broadcast.splat442
  %i.pb = or <8 x i16> %wide.load446, %broadcast.splat442
  %i.pc = icmp eq <8 x i16> %i.pa, zeroinitializer
  %i.pd = icmp eq <8 x i16> %i.pb, zeroinitializer
  %i.pe = select <8 x i1> %i.ov, <8 x i1> %i.oy, <8 x i1> zeroinitializer
  %i.pf = select <8 x i1> %i.ox, <8 x i1> %i.oz, <8 x i1> zeroinitializer
  %i.pg = and <8 x i1> %i.os, %i.pc
  %i.ph = select <8 x i1> %i.oq, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pi = and <8 x i1> %i.ot, %i.pd
  %i.pj = select <8 x i1> %i.or, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pk = or <8 x i1> %i.ph, %i.pe
  %i.pl = or <8 x i1> %i.pj, %i.pf
  %i.pm = or <8 x i1> %i.pk, %i.oo
  %i.pn = or <8 x i1> %i.pl, %i.op
  %predphi447 = select <8 x i1> %i.pm, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %i.pn, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.po = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <8 x i16> %predphi447, ptr %i.ok, align 2, !alias.scope !4434, !noalias !4431
  store <8 x i16> %predphi448, ptr %i.po, align 2, !alias.scope !4434, !noalias !4431
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pp = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pp, label %middle.block450, label %vector.body443, !llvm.loop !4414

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.lo, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.oh, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !22

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.lo, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pq = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pq
  %wide.load465 = load <8 x i16>, ptr %i.pr, align 2, !noalias !4431 ; 5 uses
  %i.pt = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pu = icmp samesign ugt <8 x i16> %i.pt, splat (i16 31744) ; 3 uses
  %i.pv = xor <8 x i1> %i.pu, splat (i1 true)
  %i.pw = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.px = or <8 x i1> %i.pu, %i.pw
  %i.py = xor <8 x i1> %i.px, splat (i1 true)
  %i.pz = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.qa = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.qb = icmp eq <8 x i16> %i.qa, zeroinitializer
  %i.qc = select <8 x i1> %i.py, <8 x i1> %i.pz, <8 x i1> zeroinitializer
  %i.qd = and <8 x i1> %i.pw, %i.qb
  %i.qe = select <8 x i1> %i.pv, <8 x i1> %i.qd, <8 x i1> zeroinitializer
  %i.qf = or <8 x i1> %i.qe, %i.qc
  %i.qg = or <8 x i1> %i.qf, %i.pu
  %predphi466 = select <8 x i1> %i.qg, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.ps, align 2, !alias.scope !4434, !noalias !4431
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.qh, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4415

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lo, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qi, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qi = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qj = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qj
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qj
  %.val8.us12.i.i = load i16, ptr %i.qk, align 2, !noalias !4431, !noundef !5 ; 7 uses
  %i.qm = and i16 %.val8.us12.i.i, 32767
  %i.qn = icmp samesign ugt i16 %i.qm, 31744
  br i1 %i.qn, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.qo = icmp ult i16 %.val8.us12.i.i, %i.lc
  br i1 %i.qo, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qp = or i16 %.val8.us12.i.i, %i.lp
  %.not.i.i.us.i.i = icmp eq i16 %i.qp, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qq = phi i16 [ %i.lc, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qq, ptr %i.ql, align 2, !alias.scope !4434, !noalias !4431
  %exitcond16.not.i.i = icmp eq i64 %i.qi, %i.lo
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4416

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qx, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qr
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qr
  %.val8.i.i = load i16, ptr %i.qs, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.qu = and i16 %.val8.i.i, 32767
  %i.qv = icmp samesign ult i16 %i.qu, 31745
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qv
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.lc)
  %i.qw = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qw, ptr %i.qt, align 2, !alias.scope !4434, !noalias !4431
  %i.qx = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qy, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.ra = and i16 %.val8.i.i.1, 32767
  %i.rb = icmp samesign ult i16 %i.ra, 31745
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.rb
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.lc)
  %i.rc = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.rc, ptr %i.qz, align 2, !alias.scope !4434, !noalias !4431
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qx, %i.lo
end_hunk_3
begin_hunk_4_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecdNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3f64NvYB1a_B1s_7f64_vecNvYB1a_B1s_14f64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit78.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !4483, !noalias !4484
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit78.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit78.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4483, !noalias !4484
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit78.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit78.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4483, !noalias !4484
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4483, !noalias !4484
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  br label %.loopexit78.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit78.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload246 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.070.0.copyload243 = phi i64 [ %.sroa.070.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit78.split.us
  br i1 %.not159, label %.loopexit, label %.lr.ph155

bb.h:                                             ; preds = %.loopexit78.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit78.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.070.0.copyload
  %.not52 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not52
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke350

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not53 = icmp ugt i64 %i.ig, %6
  %or.cond55 = or i1 %i.ih, %.not53
  br i1 %or.cond55, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.070.0.copyload, %bb.o ], [ %.sroa.070.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0156, %bb.m ], [ %.sroa.0.0156, %bb.p ]
  %i.ij = phi i64 [ %i.ku, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.kz, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0156
  %.not54 = icmp ugt i64 %i.im, %i.n
  %or.cond56 = or i1 %i.in, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4485
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4486
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 8 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc59 unwind label %.loopexit79

.noexc59:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterdEB10_EINtB13_7IterMutdEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc60 unwind label %.loopexit79

.noexc60:                                         ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4486
  call void @llvm.experimental.noalias.scope.decl(metadata !4487)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4487, !noalias !4488, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4487, !noalias !4488, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4489, !noalias !4490, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4489, !noalias !4490, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4489, !noalias !4490, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4491, !noalias !4490, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i369 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i371 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i370 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 3                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i370
  %i.ix = sub i64 %i.iw, %.val.i.i.i369
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i371
  %i.iz = sub i64 %i.iy, %.val.i.i.i369
  %diff.check372 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check372
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <2 x double>, ptr %i.jc, align 8, !noalias !4492 ; 2 uses
  %wide.load373 = load <2 x double>, ptr %i.jf, align 8, !noalias !4492 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load374 = load <2 x double>, ptr %i.jd, align 8, !noalias !4492 ; 2 uses
  %wide.load375 = load <2 x double>, ptr %i.jg, align 8, !noalias !4492 ; 2 uses
  %i.jh = fcmp olt <2 x double> %wide.load, %wide.load374
  %i.ji = fcmp olt <2 x double> %wide.load373, %wide.load375
  %i.jj = select <2 x i1> %i.jh, <2 x double> %wide.load374, <2 x double> %wide.load
  %i.jk = select <2 x i1> %i.ji, <2 x double> %wide.load375, <2 x double> %wide.load373
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <2 x double> %i.jj, ptr %i.je, align 8, !noalias !4492
  store <2 x double> %i.jk, ptr %i.jl, align 8, !noalias !4492
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !4463

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jn = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jo = add i64 %.val6.i.i, %i.jn
  %xtraiter426 = and i64 %7, 1
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jp = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jq = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jr = add i64 %i.jq, %i.iu                    ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jr
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jq
  %i.jv = load double, ptr %i.js, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.jw = load double, ptr %i.jt, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.jx = fcmp olt double %i.jv, %i.jw
  %..i.i.i.i.i.prol = select i1 %i.jx, double %i.jw, double %i.jv
  store double %..i.i.i.i.i.prol, ptr %i.ju, align 8, !noalias !4492
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jp, %scalar.ph.prol ]
  %i.jy = icmp eq i64 %i.jo, %.val.i.i
  br i1 %i.jy, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op436 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kh, %scalar.ph ] ; 3 uses
  %i.jz = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.ka = add i64 %i.jz, %i.iu                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jz
  %i.ke = load double, ptr %i.kb, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.kf = load double, ptr %i.kc, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.kg = fcmp olt double %i.ke, %i.kf
  %..i.i.i.i.i = select i1 %i.kg, double %i.kf, double %i.ke
  store double %..i.i.i.i.i, ptr %i.kd, align 8, !noalias !4492
  %i.kh = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass437 = add i64 %.sroa.0.012.i.i, %invariant.op436 ; 2 uses
  %i.ki = add i64 %.reass437, %i.iu               ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ki
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass437
  %i.km = load double, ptr %i.kj, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.kn = load double, ptr %i.kk, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.ko = fcmp olt double %i.km, %i.kn
  %..i.i.i.i.i.1 = select i1 %i.ko, double %i.kn, double %i.km
  store double %..i.i.i.i.i.1, ptr %i.kl, align 8, !noalias !4492
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4464

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4485
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kp = add i64 %.sroa.0.0156, %i.x
  %i.kq = load i64, ptr %i.ac, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kr, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kt = load double, ptr %i.ks, align 8, !noundef !5 ; 7 uses
  %i.ku = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.ku, %4
  %or.cond57 = or i1 %i.kv, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.kw = phi i64 [ %i.nr, %bb.v ], [ %i.ng, %bb.t ], [ %i.no, %.lr.ph155 ], [ %i.nt, %bb.w ], [ %i.nf, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kx = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph155 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ky = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kw, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kz = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.kz, %i.n
  %or.cond58 = or i1 %i.la, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4493
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.x
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtBZ_7IterMutdEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 %i.lb, ptr noundef nonnull readonly %i.ld, ptr noundef nonnull align 8 %i.lc, ptr noundef nonnull %i.le)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4494)
  %.val.i.i61 = load i64, ptr %i.ak, align 8, !alias.scope !4494, !noalias !4495, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.al, align 8, !alias.scope !4494, !noalias !4495, !noundef !5 ; 4 uses
  %i.lf = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.b, align 8, !alias.scope !4496, !noalias !4495, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4496, !noalias !4495, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.lf, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.lg = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.lg, -32
  %or.cond407 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond407, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.lf, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.lh = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lh ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load386 = load <2 x double>, ptr %i.li, align 8, !noalias !4494 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.lk, align 8, !noalias !4494 ; 2 uses
  %i.ll = fcmp olt <2 x double> %wide.load386, %broadcast.splat
  %i.lm = fcmp olt <2 x double> %wide.load387, %broadcast.splat
  %i.ln = select <2 x i1> %i.ll, <2 x double> %broadcast.splat, <2 x double> %wide.load386
  %i.lo = select <2 x i1> %i.lm, <2 x double> %broadcast.splat, <2 x double> %wide.load387
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <2 x double> %i.ln, ptr %i.lj, align 8, !alias.scope !4497, !noalias !4494
  store <2 x double> %i.lo, ptr %i.lp, align 8, !alias.scope !4497, !noalias !4494
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lq = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lq, label %middle.block389, label %vector.body384, !llvm.loop !4479

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.lf, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %8 = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lr = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ls = add i64 %.val6.i.i62, %i.lr
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lt = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lu = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %.val8.i.i.prol = load double, ptr %i.lv, align 8, !noalias !4494, !noundef !5 ; 2 uses
  %i.lx = fcmp olt double %.val8.i.i.prol, %i.kt
  %..i.i.i.i.i66.prol = select i1 %i.lx, double %i.kt, double %.val8.i.i.prol
  store double %..i.i.i.i.i66.prol, ptr %i.lw, align 8, !alias.scope !4497, !noalias !4494
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lt, %scalar.ph380.prol ]
  %i.ly = icmp eq i64 %i.ls, %.val.i.i61
  br i1 %i.ly, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.md, %scalar.ph380 ] ; 3 uses
  %i.lz = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %.val8.i.i = load double, ptr %i.ma, align 8, !noalias !4494, !noundef !5 ; 2 uses
  %i.mc = fcmp olt double %.val8.i.i, %i.kt
  %..i.i.i.i.i66 = select i1 %i.mc, double %i.kt, double %.val8.i.i
  store double %..i.i.i.i.i66, ptr %i.mb, align 8, !alias.scope !4497, !noalias !4494
  %i.md = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load double, ptr %i.me, align 8, !noalias !4494, !noundef !5 ; 2 uses
  %i.mg = fcmp olt double %.val8.i.i.1, %i.kt
  %..i.i.i.i.i66.1 = select i1 %i.mg, double %i.kt, double %.val8.i.i.1
  store double %..i.i.i.i.i66.1, ptr %i.mf, align 8, !alias.scope !4497, !noalias !4494
  %exitcond.not.i.i67.1 = icmp eq i64 %i.md, %i.lf
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !4480

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4493
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mh = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.mh, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.mj = load double, ptr %i.mi, align 8, !noundef !5 ; 3 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0156)
  %i.mm = sub i64 %i.ml, %i.av
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mk)
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.at) ; 2 uses
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check395 = icmp samesign ult i64 %i.mo, 4
  br i1 %min.iters.check395, label %.lr.ph.preheader410, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.preheader
  %i.mq = shl i64 %.sroa.4.0.copyload, 3
  %i.mr = add i64 %i.aw, %i.r
  %i.ms = add i64 %i.mq, %i.a
  %i.mt = sub i64 %i.ms, %i.mr
  %diff.check393 = icmp ugt i64 %i.mt, -32
  br i1 %diff.check393, label %.lr.ph.preheader410, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %i.mu = and i64 %i.mp, 3                        ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %i.mw = select i1 %i.mv, i64 4, i64 %i.mu
  %n.vec397 = sub nsw i64 %i.mp, %i.mw            ; 2 uses
  %broadcast.splatinsert398 = insertelement <2 x double> poison, double %i.mj, i64 0
  %broadcast.splat399 = shufflevector <2 x double> %broadcast.splatinsert398, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep434 = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.0.0156
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph396
  %index401 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body400 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index401 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load402 = load <2 x double>, ptr %gep, align 8 ; 2 uses
  %wide.load403 = load <2 x double>, ptr %i.mx, align 8 ; 2 uses
  %i.my = fcmp olt <2 x double> %broadcast.splat399, %wide.load402
  %i.mz = fcmp olt <2 x double> %broadcast.splat399, %wide.load403
  %i.na = select <2 x i1> %i.my, <2 x double> %wide.load402, <2 x double> %broadcast.splat399
  %i.nb = select <2 x i1> %i.mz, <2 x double> %wide.load403, <2 x double> %broadcast.splat399
  %gep435 = getelementptr [8 x i8], ptr %invariant.gep434, i64 %index401 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %gep435, i64 16
  store <2 x double> %i.na, ptr %gep435, align 8
  store <2 x double> %i.nb, ptr %i.nc, align 8
  %index.next404 = add nuw i64 %index401, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.nd, label %.lr.ph.preheader410, label %vector.body400, !llvm.loop !4481

.lr.ph.preheader410:                              ; preds = %vector.body400, %vector.memcheck392, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %vector.memcheck392 ], [ 0, %.lr.ph.preheader ], [ %n.vec397, %vector.body400 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader410, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.ne, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader410 ] ; 4 uses
  %i.ne = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.mk
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ng = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.nf
  %i.nj = load double, ptr %i.ni, align 8, !noundef !5 ; 2 uses
  %i.nk = fcmp olt double %i.mj, %i.nj
  %..i.i = select i1 %i.nk, double %i.nj, double %i.mj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ng
  store double %..i.i, ptr %i.nl, align 8
  %exitcond241.not = icmp eq i64 %i.ne, %i.x
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !4482

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.nm, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nm = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.nn = mul i64 %.sroa.021.0154, %i.z
  %i.no = add i64 %i.nn, %.sroa.070.0.copyload    ; 3 uses
  %i.np = icmp ult i64 %i.no, %4
  br i1 %i.np, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.nq = mul i64 %.sroa.021.0154, %i.ab
  %i.nr = add i64 %i.nq, %.sroa.4.0.copyload      ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %6
  br i1 %i.ns, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.nt = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %i.n
  br i1 %i.nu, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.no
  %i.nw = load double, ptr %i.nv, align 8, !noundef !5 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.nr
  %i.ny = load double, ptr %i.nx, align 8, !noundef !5 ; 2 uses
  %i.nz = fcmp olt double %i.nw, %i.ny
  %..i.i69 = select i1 %i.nz, double %i.ny, double %i.nw
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.nt
  store double %..i.i69, ptr %i.oa, align 8
  %exitcond242.not = icmp eq i64 %i.nm, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecdNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f64NvYB1a_B1s_7f64_vecNvYB1a_B1s_14f64_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecdNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f64NvYB1a_B1s_7f64_vecNvYB1a_B1s_14f64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit78.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !4546, !noalias !4547
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit78.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit78.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4546, !noalias !4547
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit78.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit78.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4546, !noalias !4547
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4546, !noalias !4547
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  br label %.loopexit78.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit78.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload246 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.070.0.copyload243 = phi i64 [ %.sroa.070.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit78.split.us
  br i1 %.not159, label %.loopexit, label %.lr.ph155

bb.h:                                             ; preds = %.loopexit78.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit78.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.070.0.copyload
  %.not52 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not52
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke350

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not53 = icmp ugt i64 %i.ig, %6
  %or.cond55 = or i1 %i.ih, %.not53
  br i1 %or.cond55, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.070.0.copyload, %bb.o ], [ %.sroa.070.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0156, %bb.m ], [ %.sroa.0.0156, %bb.p ]
  %i.ij = phi i64 [ %i.ku, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.kz, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0156
  %.not54 = icmp ugt i64 %i.im, %i.n
  %or.cond56 = or i1 %i.in, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4548
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4549
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 8 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc59 unwind label %.loopexit79

.noexc59:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterdEB10_EINtB13_7IterMutdEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc60 unwind label %.loopexit79

.noexc60:                                         ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4549
  call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4550, !noalias !4551, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4550, !noalias !4551, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4552, !noalias !4553, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4552, !noalias !4553, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4552, !noalias !4553, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4554, !noalias !4553, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i369 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i371 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i370 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 3                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i370
  %i.ix = sub i64 %i.iw, %.val.i.i.i369
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i371
  %i.iz = sub i64 %i.iy, %.val.i.i.i369
  %diff.check372 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check372
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <2 x double>, ptr %i.jc, align 8, !noalias !4555 ; 2 uses
  %wide.load373 = load <2 x double>, ptr %i.jf, align 8, !noalias !4555 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load374 = load <2 x double>, ptr %i.jd, align 8, !noalias !4555 ; 2 uses
  %wide.load375 = load <2 x double>, ptr %i.jg, align 8, !noalias !4555 ; 2 uses
  %i.jh = fcmp ogt <2 x double> %wide.load, %wide.load374
  %i.ji = fcmp ogt <2 x double> %wide.load373, %wide.load375
  %i.jj = select <2 x i1> %i.jh, <2 x double> %wide.load374, <2 x double> %wide.load
  %i.jk = select <2 x i1> %i.ji, <2 x double> %wide.load375, <2 x double> %wide.load373
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <2 x double> %i.jj, ptr %i.je, align 8, !noalias !4555
  store <2 x double> %i.jk, ptr %i.jl, align 8, !noalias !4555
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !4526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jn = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jo = add i64 %.val6.i.i, %i.jn
  %xtraiter426 = and i64 %7, 1
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jp = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jq = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jr = add i64 %i.jq, %i.iu                    ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jr
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jq
  %i.jv = load double, ptr %i.js, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.jw = load double, ptr %i.jt, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.jx = fcmp ogt double %i.jv, %i.jw
  %..i.i.i.i.i.prol = select i1 %i.jx, double %i.jw, double %i.jv
  store double %..i.i.i.i.i.prol, ptr %i.ju, align 8, !noalias !4555
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jp, %scalar.ph.prol ]
  %i.jy = icmp eq i64 %i.jo, %.val.i.i
  br i1 %i.jy, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op436 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kh, %scalar.ph ] ; 3 uses
  %i.jz = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.ka = add i64 %i.jz, %i.iu                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jz
  %i.ke = load double, ptr %i.kb, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.kf = load double, ptr %i.kc, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.kg = fcmp ogt double %i.ke, %i.kf
  %..i.i.i.i.i = select i1 %i.kg, double %i.kf, double %i.ke
  store double %..i.i.i.i.i, ptr %i.kd, align 8, !noalias !4555
  %i.kh = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass437 = add i64 %.sroa.0.012.i.i, %invariant.op436 ; 2 uses
  %i.ki = add i64 %.reass437, %i.iu               ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ki
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass437
  %i.km = load double, ptr %i.kj, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.kn = load double, ptr %i.kk, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.ko = fcmp ogt double %i.km, %i.kn
  %..i.i.i.i.i.1 = select i1 %i.ko, double %i.kn, double %i.km
  store double %..i.i.i.i.i.1, ptr %i.kl, align 8, !noalias !4555
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4527

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4548
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kp = add i64 %.sroa.0.0156, %i.x
  %i.kq = load i64, ptr %i.ac, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kr, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kt = load double, ptr %i.ks, align 8, !noundef !5 ; 7 uses
  %i.ku = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.ku, %4
  %or.cond57 = or i1 %i.kv, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.kw = phi i64 [ %i.nr, %bb.v ], [ %i.ng, %bb.t ], [ %i.no, %.lr.ph155 ], [ %i.nt, %bb.w ], [ %i.nf, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kx = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph155 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ky = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kw, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kz = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.kz, %i.n
  %or.cond58 = or i1 %i.la, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4556
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.x
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtBZ_7IterMutdEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 %i.lb, ptr noundef nonnull readonly %i.ld, ptr noundef nonnull align 8 %i.lc, ptr noundef nonnull %i.le)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4557)
  %.val.i.i61 = load i64, ptr %i.ak, align 8, !alias.scope !4557, !noalias !4558, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.al, align 8, !alias.scope !4557, !noalias !4558, !noundef !5 ; 4 uses
  %i.lf = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.b, align 8, !alias.scope !4559, !noalias !4558, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4559, !noalias !4558, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.lf, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.lg = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.lg, -32
  %or.cond407 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond407, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.lf, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.lh = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lh ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load386 = load <2 x double>, ptr %i.li, align 8, !noalias !4557 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.lk, align 8, !noalias !4557 ; 2 uses
  %i.ll = fcmp ogt <2 x double> %wide.load386, %broadcast.splat
  %i.lm = fcmp ogt <2 x double> %wide.load387, %broadcast.splat
  %i.ln = select <2 x i1> %i.ll, <2 x double> %broadcast.splat, <2 x double> %wide.load386
  %i.lo = select <2 x i1> %i.lm, <2 x double> %broadcast.splat, <2 x double> %wide.load387
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <2 x double> %i.ln, ptr %i.lj, align 8, !alias.scope !4560, !noalias !4557
  store <2 x double> %i.lo, ptr %i.lp, align 8, !alias.scope !4560, !noalias !4557
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lq = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lq, label %middle.block389, label %vector.body384, !llvm.loop !4542

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.lf, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %8 = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lr = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ls = add i64 %.val6.i.i62, %i.lr
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lt = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lu = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %.val8.i.i.prol = load double, ptr %i.lv, align 8, !noalias !4557, !noundef !5 ; 2 uses
  %i.lx = fcmp ogt double %.val8.i.i.prol, %i.kt
  %..i.i.i.i.i66.prol = select i1 %i.lx, double %i.kt, double %.val8.i.i.prol
  store double %..i.i.i.i.i66.prol, ptr %i.lw, align 8, !alias.scope !4560, !noalias !4557
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lt, %scalar.ph380.prol ]
  %i.ly = icmp eq i64 %i.ls, %.val.i.i61
  br i1 %i.ly, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.md, %scalar.ph380 ] ; 3 uses
  %i.lz = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %.val8.i.i = load double, ptr %i.ma, align 8, !noalias !4557, !noundef !5 ; 2 uses
  %i.mc = fcmp ogt double %.val8.i.i, %i.kt
  %..i.i.i.i.i66 = select i1 %i.mc, double %i.kt, double %.val8.i.i
  store double %..i.i.i.i.i66, ptr %i.mb, align 8, !alias.scope !4560, !noalias !4557
  %i.md = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load double, ptr %i.me, align 8, !noalias !4557, !noundef !5 ; 2 uses
  %i.mg = fcmp ogt double %.val8.i.i.1, %i.kt
  %..i.i.i.i.i66.1 = select i1 %i.mg, double %i.kt, double %.val8.i.i.1
  store double %..i.i.i.i.i66.1, ptr %i.mf, align 8, !alias.scope !4560, !noalias !4557
  %exitcond.not.i.i67.1 = icmp eq i64 %i.md, %i.lf
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !4543

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4556
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mh = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.mh, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.mj = load double, ptr %i.mi, align 8, !noundef !5 ; 3 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0156)
  %i.mm = sub i64 %i.ml, %i.av
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mk)
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.at) ; 2 uses
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check395 = icmp samesign ult i64 %i.mo, 4
  br i1 %min.iters.check395, label %.lr.ph.preheader410, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.preheader
  %i.mq = shl i64 %.sroa.4.0.copyload, 3
  %i.mr = add i64 %i.aw, %i.r
  %i.ms = add i64 %i.mq, %i.a
  %i.mt = sub i64 %i.ms, %i.mr
  %diff.check393 = icmp ugt i64 %i.mt, -32
  br i1 %diff.check393, label %.lr.ph.preheader410, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %i.mu = and i64 %i.mp, 3                        ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %i.mw = select i1 %i.mv, i64 4, i64 %i.mu
  %n.vec397 = sub nsw i64 %i.mp, %i.mw            ; 2 uses
  %broadcast.splatinsert398 = insertelement <2 x double> poison, double %i.mj, i64 0
  %broadcast.splat399 = shufflevector <2 x double> %broadcast.splatinsert398, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep434 = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.0.0156
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph396
  %index401 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body400 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index401 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load402 = load <2 x double>, ptr %gep, align 8 ; 2 uses
  %wide.load403 = load <2 x double>, ptr %i.mx, align 8 ; 2 uses
  %i.my = fcmp ogt <2 x double> %broadcast.splat399, %wide.load402
  %i.mz = fcmp ogt <2 x double> %broadcast.splat399, %wide.load403
  %i.na = select <2 x i1> %i.my, <2 x double> %wide.load402, <2 x double> %broadcast.splat399
  %i.nb = select <2 x i1> %i.mz, <2 x double> %wide.load403, <2 x double> %broadcast.splat399
  %gep435 = getelementptr [8 x i8], ptr %invariant.gep434, i64 %index401 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %gep435, i64 16
  store <2 x double> %i.na, ptr %gep435, align 8
  store <2 x double> %i.nb, ptr %i.nc, align 8
  %index.next404 = add nuw i64 %index401, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.nd, label %.lr.ph.preheader410, label %vector.body400, !llvm.loop !4544

.lr.ph.preheader410:                              ; preds = %vector.body400, %vector.memcheck392, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %vector.memcheck392 ], [ 0, %.lr.ph.preheader ], [ %n.vec397, %vector.body400 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader410, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.ne, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader410 ] ; 4 uses
  %i.ne = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.mk
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ng = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.nf
  %i.nj = load double, ptr %i.ni, align 8, !noundef !5 ; 2 uses
  %i.nk = fcmp ogt double %i.mj, %i.nj
  %..i.i = select i1 %i.nk, double %i.nj, double %i.mj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ng
  store double %..i.i, ptr %i.nl, align 8
  %exitcond241.not = icmp eq i64 %i.ne, %i.x
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !4545

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.nm, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nm = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.nn = mul i64 %.sroa.021.0154, %i.z
  %i.no = add i64 %i.nn, %.sroa.070.0.copyload    ; 3 uses
  %i.np = icmp ult i64 %i.no, %4
  br i1 %i.np, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.nq = mul i64 %.sroa.021.0154, %i.ab
  %i.nr = add i64 %i.nq, %.sroa.4.0.copyload      ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %6
  br i1 %i.ns, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.nt = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %i.n
  br i1 %i.nu, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.no
  %i.nw = load double, ptr %i.nv, align 8, !noundef !5 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.nr
  %i.ny = load double, ptr %i.nx, align 8, !noundef !5 ; 2 uses
  %i.nz = fcmp ogt double %i.nw, %i.ny
  %..i.i69 = select i1 %i.nz, double %i.ny, double %i.nw
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.nt
  store double %..i.i69, ptr %i.oa, align 8
  %exitcond242.not = icmp eq i64 %i.nm, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !4609, !noalias !4610
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4609, !noalias !4610
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4609, !noalias !4610
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4609, !noalias !4610
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.ku, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.kz, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4611
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4612
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 4 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterfEB10_EINtB13_7IterMutfEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 4 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4612
  call void @llvm.experimental.noalias.scope.decl(metadata !4613)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4613, !noalias !4614, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4613, !noalias !4614, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4615, !noalias !4616, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4615, !noalias !4616, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4615, !noalias !4616, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4617, !noalias !4616, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 2                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <4 x float>, ptr %i.jc, align 4, !noalias !4618 ; 2 uses
  %wide.load374 = load <4 x float>, ptr %i.jf, align 4, !noalias !4618 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load375 = load <4 x float>, ptr %i.jd, align 4, !noalias !4618 ; 2 uses
  %wide.load376 = load <4 x float>, ptr %i.jg, align 4, !noalias !4618 ; 2 uses
  %i.jh = fcmp olt <4 x float> %wide.load, %wide.load375
  %i.ji = fcmp olt <4 x float> %wide.load374, %wide.load376
  %i.jj = select <4 x i1> %i.jh, <4 x float> %wide.load375, <4 x float> %wide.load
  %i.jk = select <4 x i1> %i.ji, <4 x float> %wide.load376, <4 x float> %wide.load374
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x float> %i.jj, ptr %i.je, align 4, !noalias !4618
  store <4 x float> %i.jk, ptr %i.jl, align 4, !noalias !4618
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !4589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jn = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jo = add i64 %.val6.i.i, %i.jn
  %xtraiter427 = and i64 %7, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jp = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jq = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jr = add i64 %i.jq, %i.iu                    ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jr
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jq
  %i.jv = load float, ptr %i.js, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.jw = load float, ptr %i.jt, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.jx = fcmp olt float %i.jv, %i.jw
  %..i.i.i.i.i.prol = select i1 %i.jx, float %i.jw, float %i.jv
  store float %..i.i.i.i.i.prol, ptr %i.ju, align 4, !noalias !4618
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jp, %scalar.ph.prol ]
  %i.jy = icmp eq i64 %i.jo, %.val.i.i
  br i1 %i.jy, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op437 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kh, %scalar.ph ] ; 3 uses
  %i.jz = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.ka = add i64 %i.jz, %i.iu                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jz
  %i.ke = load float, ptr %i.kb, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.kf = load float, ptr %i.kc, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.kg = fcmp olt float %i.ke, %i.kf
  %..i.i.i.i.i = select i1 %i.kg, float %i.kf, float %i.ke
  store float %..i.i.i.i.i, ptr %i.kd, align 4, !noalias !4618
  %i.kh = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass438 = add i64 %.sroa.0.012.i.i, %invariant.op437 ; 2 uses
  %i.ki = add i64 %.reass438, %i.iu               ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ki
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass438
  %i.km = load float, ptr %i.kj, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.kn = load float, ptr %i.kk, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.ko = fcmp olt float %i.km, %i.kn
  %..i.i.i.i.i.1 = select i1 %i.ko, float %i.kn, float %i.km
  store float %..i.i.i.i.i.1, ptr %i.kl, align 4, !noalias !4618
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4590

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4611
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kp = add i64 %.sroa.0.0157, %i.x
  %i.kq = load i64, ptr %i.ac, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kr, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kt = load float, ptr %i.ks, align 4, !noundef !5 ; 7 uses
  %i.ku = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.ku, %4
  %or.cond58 = or i1 %i.kv, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kw = phi i64 [ %i.nr, %bb.v ], [ %i.ng, %bb.t ], [ %i.no, %.lr.ph156 ], [ %i.nt, %bb.w ], [ %i.nf, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kx = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ky = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kw, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kz = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kz, %i.n
  %or.cond59 = or i1 %i.la, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4619
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.x
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 4 %i.lb, ptr noundef nonnull readonly %i.ld, ptr noundef nonnull align 4 %i.lc, ptr noundef nonnull %i.le)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4620)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4620, !noalias !4621, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4620, !noalias !4621, !noundef !5 ; 4 uses
  %i.lf = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4622, !noalias !4621, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4622, !noalias !4621, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.lf, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lg = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lg, -32
  %or.cond408 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond408, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.lf, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.lh = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lh ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load387 = load <4 x float>, ptr %i.li, align 4, !noalias !4620 ; 2 uses
  %wide.load388 = load <4 x float>, ptr %i.lk, align 4, !noalias !4620 ; 2 uses
  %i.ll = fcmp olt <4 x float> %wide.load387, %broadcast.splat
  %i.lm = fcmp olt <4 x float> %wide.load388, %broadcast.splat
  %i.ln = select <4 x i1> %i.ll, <4 x float> %broadcast.splat, <4 x float> %wide.load387
  %i.lo = select <4 x i1> %i.lm, <4 x float> %broadcast.splat, <4 x float> %wide.load388
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <4 x float> %i.ln, ptr %i.lj, align 4, !alias.scope !4623, !noalias !4620
  store <4 x float> %i.lo, ptr %i.lp, align 4, !alias.scope !4623, !noalias !4620
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lq, label %middle.block390, label %vector.body385, !llvm.loop !4605

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.lf, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lr = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ls = add i64 %.val6.i.i63, %i.lr
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lt = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lu = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %.val8.i.i.prol = load float, ptr %i.lv, align 4, !noalias !4620, !noundef !5 ; 2 uses
  %i.lx = fcmp olt float %.val8.i.i.prol, %i.kt
  %..i.i.i.i.i67.prol = select i1 %i.lx, float %i.kt, float %.val8.i.i.prol
  store float %..i.i.i.i.i67.prol, ptr %i.lw, align 4, !alias.scope !4623, !noalias !4620
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lt, %scalar.ph381.prol ]
  %i.ly = icmp eq i64 %i.ls, %.val.i.i62
  br i1 %i.ly, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.md, %scalar.ph381 ] ; 3 uses
  %i.lz = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %.val8.i.i = load float, ptr %i.ma, align 4, !noalias !4620, !noundef !5 ; 2 uses
  %i.mc = fcmp olt float %.val8.i.i, %i.kt
  %..i.i.i.i.i67 = select i1 %i.mc, float %i.kt, float %.val8.i.i
  store float %..i.i.i.i.i67, ptr %i.mb, align 4, !alias.scope !4623, !noalias !4620
  %i.md = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load float, ptr %i.me, align 4, !noalias !4620, !noundef !5 ; 2 uses
  %i.mg = fcmp olt float %.val8.i.i.1, %i.kt
  %..i.i.i.i.i67.1 = select i1 %i.mg, float %i.kt, float %.val8.i.i.1
  store float %..i.i.i.i.i67.1, ptr %i.mf, align 4, !alias.scope !4623, !noalias !4620
  %exitcond.not.i.i68.1 = icmp eq i64 %i.md, %i.lf
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4606

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4619
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mh = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mh, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mj = load float, ptr %i.mi, align 4, !noundef !5 ; 3 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mm = sub i64 %i.ml, %i.av
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mk)
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.at) ; 2 uses
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check396 = icmp samesign ult i64 %i.mo, 8
  br i1 %min.iters.check396, label %.lr.ph.preheader411, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.preheader
  %i.mq = shl i64 %.sroa.4.0.copyload, 2
  %i.mr = add i64 %i.aw, %i.r
  %i.ms = add i64 %i.mq, %i.a
  %i.mt = sub i64 %i.ms, %i.mr
  %diff.check394 = icmp ugt i64 %i.mt, -32
  br i1 %diff.check394, label %.lr.ph.preheader411, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck393
  %i.mu = and i64 %i.mp, 7                        ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %i.mw = select i1 %i.mv, i64 8, i64 %i.mu
  %n.vec398 = sub nsw i64 %i.mp, %i.mw            ; 2 uses
  %broadcast.splatinsert399 = insertelement <4 x float> poison, float %i.mj, i64 0
  %broadcast.splat400 = shufflevector <4 x float> %broadcast.splatinsert399, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep435 = getelementptr [4 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index402 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load403 = load <4 x float>, ptr %gep, align 4 ; 2 uses
  %wide.load404 = load <4 x float>, ptr %i.mx, align 4 ; 2 uses
  %i.my = fcmp olt <4 x float> %broadcast.splat400, %wide.load403
  %i.mz = fcmp olt <4 x float> %broadcast.splat400, %wide.load404
  %i.na = select <4 x i1> %i.my, <4 x float> %wide.load403, <4 x float> %broadcast.splat400
  %i.nb = select <4 x i1> %i.mz, <4 x float> %wide.load404, <4 x float> %broadcast.splat400
  %gep436 = getelementptr [4 x i8], ptr %invariant.gep435, i64 %index402 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %gep436, i64 16
  store <4 x float> %i.na, ptr %gep436, align 4
  store <4 x float> %i.nb, ptr %i.nc, align 4
  %index.next405 = add nuw i64 %index402, 8       ; 2 uses
  %i.nd = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.nd, label %.lr.ph.preheader411, label %vector.body401, !llvm.loop !4607

.lr.ph.preheader411:                              ; preds = %vector.body401, %vector.memcheck393, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck393 ], [ 0, %.lr.ph.preheader ], [ %n.vec398, %vector.body401 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader411, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ne, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader411 ] ; 4 uses
  %i.ne = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mk
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ng = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nf
  %i.nj = load float, ptr %i.ni, align 4, !noundef !5 ; 2 uses
  %i.nk = fcmp olt float %i.mj, %i.nj
  %..i.i = select i1 %i.nk, float %i.nj, float %i.mj
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ng
  store float %..i.i, ptr %i.nl, align 4
  %exitcond242.not = icmp eq i64 %i.ne, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4608

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nm, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nm = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nn = mul i64 %.sroa.022.0155, %i.z
  %i.no = add i64 %i.nn, %.sroa.071.0.copyload    ; 3 uses
  %i.np = icmp ult i64 %i.no, %4
  br i1 %i.np, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nq = mul i64 %.sroa.022.0155, %i.ab
  %i.nr = add i64 %i.nq, %.sroa.4.0.copyload      ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %6
  br i1 %i.ns, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nt = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %i.n
  br i1 %i.nu, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.no
  %i.nw = load float, ptr %i.nv, align 4, !noundef !5 ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nr
  %i.ny = load float, ptr %i.nx, align 4, !noundef !5 ; 2 uses
  %i.nz = fcmp olt float %i.nw, %i.ny
  %..i.i70 = select i1 %i.nz, float %i.ny, float %i.nw
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nt
  store float %..i.i70, ptr %i.oa, align 4
  %exitcond243.not = icmp eq i64 %i.nm, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
end_hunk_6
begin_hunk_7_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !4672, !noalias !4673
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4672, !noalias !4673
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4672, !noalias !4673
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4672, !noalias !4673
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.ku, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.kz, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4674
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4675
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 4 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterfEB10_EINtB13_7IterMutfEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 4 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4675
  call void @llvm.experimental.noalias.scope.decl(metadata !4676)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4676, !noalias !4677, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4676, !noalias !4677, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4678, !noalias !4679, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4678, !noalias !4679, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4678, !noalias !4679, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4680, !noalias !4679, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 2                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <4 x float>, ptr %i.jc, align 4, !noalias !4681 ; 2 uses
  %wide.load374 = load <4 x float>, ptr %i.jf, align 4, !noalias !4681 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load375 = load <4 x float>, ptr %i.jd, align 4, !noalias !4681 ; 2 uses
  %wide.load376 = load <4 x float>, ptr %i.jg, align 4, !noalias !4681 ; 2 uses
  %i.jh = fcmp ogt <4 x float> %wide.load, %wide.load375
  %i.ji = fcmp ogt <4 x float> %wide.load374, %wide.load376
  %i.jj = select <4 x i1> %i.jh, <4 x float> %wide.load375, <4 x float> %wide.load
  %i.jk = select <4 x i1> %i.ji, <4 x float> %wide.load376, <4 x float> %wide.load374
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x float> %i.jj, ptr %i.je, align 4, !noalias !4681
  store <4 x float> %i.jk, ptr %i.jl, align 4, !noalias !4681
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !4652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jn = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jo = add i64 %.val6.i.i, %i.jn
  %xtraiter427 = and i64 %7, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jp = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jq = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jr = add i64 %i.jq, %i.iu                    ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jr
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jq
  %i.jv = load float, ptr %i.js, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.jw = load float, ptr %i.jt, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.jx = fcmp ogt float %i.jv, %i.jw
  %..i.i.i.i.i.prol = select i1 %i.jx, float %i.jw, float %i.jv
  store float %..i.i.i.i.i.prol, ptr %i.ju, align 4, !noalias !4681
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jp, %scalar.ph.prol ]
  %i.jy = icmp eq i64 %i.jo, %.val.i.i
  br i1 %i.jy, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op437 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kh, %scalar.ph ] ; 3 uses
  %i.jz = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.ka = add i64 %i.jz, %i.iu                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jz
  %i.ke = load float, ptr %i.kb, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.kf = load float, ptr %i.kc, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.kg = fcmp ogt float %i.ke, %i.kf
  %..i.i.i.i.i = select i1 %i.kg, float %i.kf, float %i.ke
  store float %..i.i.i.i.i, ptr %i.kd, align 4, !noalias !4681
  %i.kh = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass438 = add i64 %.sroa.0.012.i.i, %invariant.op437 ; 2 uses
  %i.ki = add i64 %.reass438, %i.iu               ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ki
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass438
  %i.km = load float, ptr %i.kj, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.kn = load float, ptr %i.kk, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.ko = fcmp ogt float %i.km, %i.kn
  %..i.i.i.i.i.1 = select i1 %i.ko, float %i.kn, float %i.km
  store float %..i.i.i.i.i.1, ptr %i.kl, align 4, !noalias !4681
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4653

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4674
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kp = add i64 %.sroa.0.0157, %i.x
  %i.kq = load i64, ptr %i.ac, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kr, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kt = load float, ptr %i.ks, align 4, !noundef !5 ; 7 uses
  %i.ku = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.ku, %4
  %or.cond58 = or i1 %i.kv, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kw = phi i64 [ %i.nr, %bb.v ], [ %i.ng, %bb.t ], [ %i.no, %.lr.ph156 ], [ %i.nt, %bb.w ], [ %i.nf, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kx = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ky = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kw, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kz = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kz, %i.n
  %or.cond59 = or i1 %i.la, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4682
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.x
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 4 %i.lb, ptr noundef nonnull readonly %i.ld, ptr noundef nonnull align 4 %i.lc, ptr noundef nonnull %i.le)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4683)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4683, !noalias !4684, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4683, !noalias !4684, !noundef !5 ; 4 uses
  %i.lf = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4685, !noalias !4684, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4685, !noalias !4684, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.lf, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lg = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lg, -32
  %or.cond408 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond408, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.lf, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.lh = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lh ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load387 = load <4 x float>, ptr %i.li, align 4, !noalias !4683 ; 2 uses
  %wide.load388 = load <4 x float>, ptr %i.lk, align 4, !noalias !4683 ; 2 uses
  %i.ll = fcmp ogt <4 x float> %wide.load387, %broadcast.splat
  %i.lm = fcmp ogt <4 x float> %wide.load388, %broadcast.splat
  %i.ln = select <4 x i1> %i.ll, <4 x float> %broadcast.splat, <4 x float> %wide.load387
  %i.lo = select <4 x i1> %i.lm, <4 x float> %broadcast.splat, <4 x float> %wide.load388
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <4 x float> %i.ln, ptr %i.lj, align 4, !alias.scope !4686, !noalias !4683
  store <4 x float> %i.lo, ptr %i.lp, align 4, !alias.scope !4686, !noalias !4683
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lq, label %middle.block390, label %vector.body385, !llvm.loop !4668

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.lf, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lr = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ls = add i64 %.val6.i.i63, %i.lr
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lt = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lu = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %.val8.i.i.prol = load float, ptr %i.lv, align 4, !noalias !4683, !noundef !5 ; 2 uses
  %i.lx = fcmp ogt float %.val8.i.i.prol, %i.kt
  %..i.i.i.i.i67.prol = select i1 %i.lx, float %i.kt, float %.val8.i.i.prol
  store float %..i.i.i.i.i67.prol, ptr %i.lw, align 4, !alias.scope !4686, !noalias !4683
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lt, %scalar.ph381.prol ]
  %i.ly = icmp eq i64 %i.ls, %.val.i.i62
  br i1 %i.ly, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.md, %scalar.ph381 ] ; 3 uses
  %i.lz = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %.val8.i.i = load float, ptr %i.ma, align 4, !noalias !4683, !noundef !5 ; 2 uses
  %i.mc = fcmp ogt float %.val8.i.i, %i.kt
  %..i.i.i.i.i67 = select i1 %i.mc, float %i.kt, float %.val8.i.i
  store float %..i.i.i.i.i67, ptr %i.mb, align 4, !alias.scope !4686, !noalias !4683
  %i.md = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load float, ptr %i.me, align 4, !noalias !4683, !noundef !5 ; 2 uses
  %i.mg = fcmp ogt float %.val8.i.i.1, %i.kt
  %..i.i.i.i.i67.1 = select i1 %i.mg, float %i.kt, float %.val8.i.i.1
  store float %..i.i.i.i.i67.1, ptr %i.mf, align 4, !alias.scope !4686, !noalias !4683
  %exitcond.not.i.i68.1 = icmp eq i64 %i.md, %i.lf
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4669

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4682
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mh = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mh, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mj = load float, ptr %i.mi, align 4, !noundef !5 ; 3 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mm = sub i64 %i.ml, %i.av
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mk)
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.at) ; 2 uses
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check396 = icmp samesign ult i64 %i.mo, 8
  br i1 %min.iters.check396, label %.lr.ph.preheader411, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.preheader
  %i.mq = shl i64 %.sroa.4.0.copyload, 2
  %i.mr = add i64 %i.aw, %i.r
  %i.ms = add i64 %i.mq, %i.a
  %i.mt = sub i64 %i.ms, %i.mr
  %diff.check394 = icmp ugt i64 %i.mt, -32
  br i1 %diff.check394, label %.lr.ph.preheader411, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck393
  %i.mu = and i64 %i.mp, 7                        ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %i.mw = select i1 %i.mv, i64 8, i64 %i.mu
  %n.vec398 = sub nsw i64 %i.mp, %i.mw            ; 2 uses
  %broadcast.splatinsert399 = insertelement <4 x float> poison, float %i.mj, i64 0
  %broadcast.splat400 = shufflevector <4 x float> %broadcast.splatinsert399, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep435 = getelementptr [4 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index402 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load403 = load <4 x float>, ptr %gep, align 4 ; 2 uses
  %wide.load404 = load <4 x float>, ptr %i.mx, align 4 ; 2 uses
  %i.my = fcmp ogt <4 x float> %broadcast.splat400, %wide.load403
  %i.mz = fcmp ogt <4 x float> %broadcast.splat400, %wide.load404
  %i.na = select <4 x i1> %i.my, <4 x float> %wide.load403, <4 x float> %broadcast.splat400
  %i.nb = select <4 x i1> %i.mz, <4 x float> %wide.load404, <4 x float> %broadcast.splat400
  %gep436 = getelementptr [4 x i8], ptr %invariant.gep435, i64 %index402 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %gep436, i64 16
  store <4 x float> %i.na, ptr %gep436, align 4
  store <4 x float> %i.nb, ptr %i.nc, align 4
  %index.next405 = add nuw i64 %index402, 8       ; 2 uses
  %i.nd = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.nd, label %.lr.ph.preheader411, label %vector.body401, !llvm.loop !4670

.lr.ph.preheader411:                              ; preds = %vector.body401, %vector.memcheck393, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck393 ], [ 0, %.lr.ph.preheader ], [ %n.vec398, %vector.body401 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader411, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ne, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader411 ] ; 4 uses
  %i.ne = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mk
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ng = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nf
  %i.nj = load float, ptr %i.ni, align 4, !noundef !5 ; 2 uses
  %i.nk = fcmp ogt float %i.mj, %i.nj
  %..i.i = select i1 %i.nk, float %i.nj, float %i.mj
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ng
  store float %..i.i, ptr %i.nl, align 4
  %exitcond242.not = icmp eq i64 %i.ne, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4671

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nm, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nm = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nn = mul i64 %.sroa.022.0155, %i.z
  %i.no = add i64 %i.nn, %.sroa.071.0.copyload    ; 3 uses
  %i.np = icmp ult i64 %i.no, %4
  br i1 %i.np, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nq = mul i64 %.sroa.022.0155, %i.ab
  %i.nr = add i64 %i.nq, %.sroa.4.0.copyload      ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %6
  br i1 %i.ns, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nt = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %i.n
  br i1 %i.nu, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.no
  %i.nw = load float, ptr %i.nv, align 4, !noundef !5 ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nr
  %i.ny = load float, ptr %i.nx, align 4, !noundef !5 ; 2 uses
  %i.nz = fcmp ogt float %i.nw, %i.ny
  %..i.i70 = select i1 %i.nz, float %i.ny, float %i.nw
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nt
  store float %..i.i70, ptr %i.oa, align 4
  %exitcond243.not = icmp eq i64 %i.nm, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
end_hunk_7
begin_hunk_8_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fj ; 3 uses
  %i.fn = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fo = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fp = add i64 %i.fo, %i.fn                    ; 2 uses
  store i64 %i.fp, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fq = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fr = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fs = add i64 %i.fr, %i.fq                    ; 2 uses
  store i64 %i.fs, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.ft = load i64, ptr %i.fk, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fj ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.fw = icmp ult i64 %i.ft, %i.fv
  br i1 %i.fw, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fk, align 8, !alias.scope !4737, !noalias !4738
  %i.fx = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fy = mul i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ga = sub i64 %i.fz, %i.fy                    ; 2 uses
  store i64 %i.ga, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %i.gb = load i64, ptr %i.fu, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gc = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gd = mul i64 %i.gc, %i.gb
  %i.ge = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gf = sub i64 %i.ge, %i.gd                    ; 2 uses
  store i64 %i.gf, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us.5 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gg = add nsw i64 %i.ax, -7                   ; 4 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gg ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gj = add i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gg ; 3 uses
  %i.gk = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gl = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gm = add i64 %i.gl, %i.gk                    ; 2 uses
  store i64 %i.gm, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.gn = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gp = add i64 %i.go, %i.gn                    ; 2 uses
  store i64 %i.gp, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.gq = load i64, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gg ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.gt = icmp ult i64 %i.gq, %i.gs
  br i1 %i.gt, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738
  %i.gu = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gv = mul i64 %i.gu, %i.gs
  %i.gw = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gx = sub i64 %i.gw, %i.gv                    ; 2 uses
  store i64 %i.gx, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %i.gy = load i64, ptr %i.gr, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gz = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ha = mul i64 %i.gz, %i.gy
  %i.hb = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hc = sub i64 %i.hb, %i.ha                    ; 2 uses
  store i64 %i.hc, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us.6 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.hd = add nsw i64 %i.ax, -8                   ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.hd ; 4 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.hd ; 3 uses
  %i.hh = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hi = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  store i64 %i.hj, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hk = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hl = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hm = add i64 %i.hl, %i.hk                    ; 2 uses
  store i64 %i.hm, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.hn = load i64, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.hd ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.hq = icmp ult i64 %i.hn, %i.hp
  br i1 %i.hq, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738
  %i.hr = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hs = mul i64 %i.hr, %i.hp
  %i.ht = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hu = sub i64 %i.ht, %i.hs                    ; 2 uses
  store i64 %i.hu, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %i.hv = load i64, ptr %i.ho, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hw = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hx = mul i64 %i.hw, %i.hv
  %i.hy = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hz = sub i64 %i.hy, %i.hx                    ; 2 uses
  store i64 %i.hz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ia = add i64 %i.ax, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ia, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bh, %.lr.ph.i.split.us ], [ %i.bu, %.loopexit.i.us ], [ %i.ce, %.lr.ph.i.split.us.1 ], [ %i.cr, %.loopexit.i.us.1 ], [ %i.db, %.lr.ph.i.split.us.2 ], [ %i.do, %.loopexit.i.us.2 ], [ %i.dy, %.lr.ph.i.split.us.3 ], [ %i.el, %.loopexit.i.us.3 ], [ %i.ev, %.lr.ph.i.split.us.4 ], [ %i.fi, %.loopexit.i.us.4 ], [ %i.fs, %.lr.ph.i.split.us.5 ], [ %i.gf, %.loopexit.i.us.5 ], [ %i.gp, %.lr.ph.i.split.us.6 ], [ %i.hc, %.loopexit.i.us.6 ], [ %i.hm, %.lr.ph.i.split.us.7 ], [ %i.hz, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.be, %.lr.ph.i.split.us ], [ %i.bp, %.loopexit.i.us ], [ %i.cb, %.lr.ph.i.split.us.1 ], [ %i.cm, %.loopexit.i.us.1 ], [ %i.cy, %.lr.ph.i.split.us.2 ], [ %i.dj, %.loopexit.i.us.2 ], [ %i.dv, %.lr.ph.i.split.us.3 ], [ %i.eg, %.loopexit.i.us.3 ], [ %i.es, %.lr.ph.i.split.us.4 ], [ %i.fd, %.loopexit.i.us.4 ], [ %i.fp, %.lr.ph.i.split.us.5 ], [ %i.ga, %.loopexit.i.us.5 ], [ %i.gm, %.lr.ph.i.split.us.6 ], [ %i.gx, %.loopexit.i.us.6 ], [ %i.hj, %.lr.ph.i.split.us.7 ], [ %i.hu, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ib = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ib, %4
  %or.cond = or i1 %i.ic, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.id = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.id, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.if = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ig = icmp ult i64 %i.if, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.if, %6
  %or.cond56 = or i1 %i.ig, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ih = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ii = phi i64 [ %i.kv, %bb.o ], [ %i.ib, %bb.j ], [ %i.if, %bb.l ], [ %i.il, %bb.m ], [ %i.la, %bb.p ]
  %i.ij = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.ik = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ih, i64 noundef %i.ii, i64 noundef %i.ij, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.il = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.im = icmp ult i64 %i.il, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.il, %i.n
  %or.cond57 = or i1 %i.im, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4739
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.x
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4740
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.ie, ptr noundef nonnull readonly %i.io, ptr noundef nonnull readonly %i.in, ptr noundef nonnull readonly %i.ip)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.iq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EINtB13_7IterMuthEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.ir)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4740
  call void @llvm.experimental.noalias.scope.decl(metadata !4741)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4741, !noalias !4742, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4741, !noalias !4742, !noundef !5 ; 4 uses
  %i.is = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.it = load i64, ptr %i.ap, align 8, !alias.scope !4743, !noalias !4744, !noundef !5 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4743, !noalias !4744, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4743, !noalias !4744, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4745, !noalias !4744, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.is, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iu = add i64 %i.it, %.val1.i.i.i.i.i371
  %i.iv = sub i64 %i.iu, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.iv, -32
  %i.iw = add i64 %i.it, %.val.i.i.i.i.i372
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.ix, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.is, 32
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iy = and i64 %i.is, 28
  %n.vec = and i64 %i.is, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iz = add i64 %index, %.val.i.i               ; 2 uses
  %i.ja = add i64 %i.iz, %i.it                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.iz ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load = load <16 x i8>, ptr %i.jb, align 1, !noalias !4746
  %wide.load375 = load <16 x i8>, ptr %i.je, align 1, !noalias !4746
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load376 = load <16 x i8>, ptr %i.jc, align 1, !noalias !4746
  %wide.load377 = load <16 x i8>, ptr %i.jf, align 1, !noalias !4746
  %i.jg = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load376)
  %i.jh = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load375, <16 x i8> %wide.load377)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <16 x i8> %i.jg, ptr %i.jd, align 1, !noalias !4746
  store <16 x i8> %i.jh, ptr %i.ji, align 1, !noalias !4746
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !4715

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.is, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.is, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jk = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jl = add i64 %i.jk, %i.it                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jk
  %wide.load380 = load <4 x i8>, ptr %i.jm, align 1, !noalias !4746
  %wide.load381 = load <4 x i8>, ptr %i.jn, align 1, !noalias !4746
  %i.jp = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load380, <4 x i8> %wide.load381)
  store <4 x i8> %i.jp, ptr %i.jo, align 1, !noalias !4746
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.jq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4716

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.is, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jr = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.js = add i64 %.val6.i.i, %i.jr
  %xtraiter448 = and i64 %7, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.jt = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.ju = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jv = add i64 %i.ju, %i.it                    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jv
  %i.jy = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ju
  %i.jz = load i8, ptr %i.jw, align 1, !noalias !4746, !noundef !5
  %i.ka = load i8, ptr %i.jx, align 1, !noalias !4746, !noundef !5
  %..i.i.i.i.i.prol = call i8 @llvm.umax.i8(i8 %i.jz, i8 %i.ka)
  store i8 %..i.i.i.i.i.prol, ptr %i.jy, align 1, !noalias !4746
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jt, %vec.epilog.scalar.ph.prol ]
  %i.kb = icmp eq i64 %i.js, %.val.i.i
  br i1 %i.kb, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.kj, %vec.epilog.scalar.ph ] ; 3 uses
  %i.kc = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kd = add i64 %i.kc, %i.it                    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kd
  %i.kg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.kc
  %i.kh = load i8, ptr %i.ke, align 1, !noalias !4746, !noundef !5
  %i.ki = load i8, ptr %i.kf, align 1, !noalias !4746, !noundef !5
  %..i.i.i.i.i = call i8 @llvm.umax.i8(i8 %i.kh, i8 %i.ki)
  store i8 %..i.i.i.i.i, ptr %i.kg, align 1, !noalias !4746
  %i.kj = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.kk = add i64 %.reass459, %i.it               ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kk
  %i.kn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass459
  %i.ko = load i8, ptr %i.kl, align 1, !noalias !4746, !noundef !5
  %i.kp = load i8, ptr %i.km, align 1, !noalias !4746, !noundef !5
  %..i.i.i.i.i.1 = call i8 @llvm.umax.i8(i8 %i.ko, i8 %i.kp)
  store i8 %..i.i.i.i.i.1, ptr %i.kn, align 1, !noalias !4746
  %exitcond.not.i.i.1 = icmp eq i64 %i.kj, %i.is
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !4717

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4739
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kq = add i64 %.sroa.0.0157, %i.x
  %i.kr = load i64, ptr %i.ac, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ks, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kt = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload
  %i.ku = load i8, ptr %i.kt, align 1, !noundef !5 ; 5 uses
  %i.kv = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kv, %4
  %or.cond58 = or i1 %i.kw, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kx = phi i64 [ %i.nl, %bb.v ], [ %i.nb, %bb.t ], [ %i.ni, %.lr.ph156 ], [ %i.nn, %bb.w ], [ %i.na, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ky = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kz = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kx, i64 noundef %i.ky, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.la = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.lb = icmp ult i64 %i.la, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.la, %i.n
  %or.cond59 = or i1 %i.lb, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4747
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.x
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.lc, ptr noundef nonnull readonly %i.le, ptr noundef nonnull %i.ld, ptr noundef nonnull %i.lf)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4748, !noalias !4749, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4748, !noalias !4749, !noundef !5 ; 4 uses
  %i.lg = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4750, !noalias !4749, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4750, !noalias !4749, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.lg, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lh = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lh, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.lg, 32
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.li = and i64 %i.lg, 28
  %n.vec392 = and i64 %i.lg, -32                  ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.ku, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lj = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lj ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load395 = load <16 x i8>, ptr %i.lk, align 1, !noalias !4748
  %wide.load396 = load <16 x i8>, ptr %i.lm, align 1, !noalias !4748
  %i.ln = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load395, <16 x i8> %broadcast.splat)
  %i.lo = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load396, <16 x i8> %broadcast.splat)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <16 x i8> %i.ln, ptr %i.ll, align 1, !alias.scope !4751, !noalias !4748
  store <16 x i8> %i.lo, ptr %i.lp, align 1, !alias.scope !4751, !noalias !4748
  %index.next397 = add nuw i64 %index394, 32      ; 2 uses
  %i.lq = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lq, label %middle.block398, label %vector.body393, !llvm.loop !4732

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.lg, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.li, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !23

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.lg, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i8> poison, i8 %i.ku, i64 0
  %broadcast.splat408 = shufflevector <4 x i8> %broadcast.splatinsert407, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lr = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lr
  %wide.load411 = load <4 x i8>, ptr %i.ls, align 1, !noalias !4748
  %i.lu = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load411, <4 x i8> %broadcast.splat408)
  store <4 x i8> %i.lu, ptr %i.lt, align 1, !alias.scope !4751, !noalias !4748
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lv, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !4733

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.lg, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lw = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lx = add i64 %.val6.i.i63, %i.lw
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.ly = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lz = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lz
  %.val8.i.i.prol = load i8, ptr %i.ma, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67.prol = call i8 @llvm.umax.i8(i8 %.val8.i.i.prol, i8 %i.ku)
  store i8 %..i.i.i.i.i67.prol, ptr %i.mb, align 1, !alias.scope !4751, !noalias !4748
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.ly, %vec.epilog.scalar.ph402.prol ]
  %i.mc = icmp eq i64 %i.lx, %.val.i.i62
  br i1 %i.mc, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mg, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.md = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.md
  %.val8.i.i = load i8, ptr %i.me, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67 = call i8 @llvm.umax.i8(i8 %.val8.i.i, i8 %i.ku)
  store i8 %..i.i.i.i.i67, ptr %i.mf, align 1, !alias.scope !4751, !noalias !4748
  %i.mg = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %.reass
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i8, ptr %i.mh, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67.1 = call i8 @llvm.umax.i8(i8 %.val8.i.i.1, i8 %i.ku)
  store i8 %..i.i.i.i.i67.1, ptr %i.mi, align 1, !alias.scope !4751, !noalias !4748
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mg, %i.lg
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !4734

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4747
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mj = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mj, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload
  %i.ml = load i8, ptr %i.mk, align 1, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mm = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mn = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mo = sub i64 %i.mn, %i.au
  %i.mp = call i64 @llvm.umin.i64(i64 %i.mo, i64 %i.mm)
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mp, i64 %i.as) ; 2 uses
  %i.mr = add nuw i64 %i.mq, 1                    ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.mq, 16
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.ms = add i64 %.sroa.4.0.copyload, %i.a
  %i.mt = sub i64 %i.ms, %i.av
  %diff.check417 = icmp ugt i64 %i.mt, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.mu = and i64 %i.mr, 15                       ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %i.mw = select i1 %i.mv, i64 16, i64 %i.mu
  %n.vec420 = sub i64 %i.mr, %i.mw                ; 2 uses
  %broadcast.splatinsert421 = insertelement <16 x i8> poison, i8 %i.ml, i64 0
  %broadcast.splat422 = shufflevector <16 x i8> %broadcast.splatinsert421, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr i8, ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index424
  %wide.load425 = load <16 x i8>, ptr %gep, align 1
  %i.mx = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %broadcast.splat422, <16 x i8> %wide.load425)
  %gep457 = getelementptr i8, ptr %invariant.gep456, i64 %index424
  store <16 x i8> %i.mx, ptr %gep457, align 1
  %index.next426 = add nuw i64 %index424, 16      ; 2 uses
  %i.my = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.my, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !4735

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mz, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.020.0154, 1          ; 2 uses
  %i.na = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mm
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nb = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %i.n
  br i1 %i.nc, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 %i.na
  %i.ne = load i8, ptr %i.nd, align 1, !noundef !5
  %..i.i = call noundef i8 @llvm.umax.i8(i8 %i.ml, i8 %i.ne)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.nb
  store i8 %..i.i, ptr %i.nf, align 1
  %exitcond242.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4736

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ng, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ng = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nh = mul i64 %.sroa.022.0155, %i.z
  %i.ni = add i64 %i.nh, %.sroa.071.0.copyload    ; 3 uses
  %i.nj = icmp ult i64 %i.ni, %4
  br i1 %i.nj, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nk = mul i64 %.sroa.022.0155, %i.ab
  %i.nl = add i64 %i.nk, %.sroa.4.0.copyload      ; 3 uses
  %i.nm = icmp ult i64 %i.nl, %6
  br i1 %i.nm, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nn = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.no = icmp ult i64 %i.nn, %i.n
  br i1 %i.no, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 %i.ni
  %i.nq = load i8, ptr %i.np, align 1, !noundef !5
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 %i.nl
  %i.ns = load i8, ptr %i.nr, align 1, !noundef !5
  %..i.i70 = call noundef i8 @llvm.umax.i8(i8 %i.nq, i8 %i.ns)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.nn
  store i8 %..i.i70, ptr %i.nt, align 1
  %exitcond243.not = icmp eq i64 %i.ng, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.v, align 8
end_hunk_8
begin_hunk_9_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fj ; 3 uses
  %i.fn = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fo = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fp = add i64 %i.fo, %i.fn                    ; 2 uses
  store i64 %i.fp, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fq = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fr = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fs = add i64 %i.fr, %i.fq                    ; 2 uses
  store i64 %i.fs, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.ft = load i64, ptr %i.fk, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fj ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.fw = icmp ult i64 %i.ft, %i.fv
  br i1 %i.fw, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fk, align 8, !alias.scope !4802, !noalias !4803
  %i.fx = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fy = mul i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ga = sub i64 %i.fz, %i.fy                    ; 2 uses
  store i64 %i.ga, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %i.gb = load i64, ptr %i.fu, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gc = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gd = mul i64 %i.gc, %i.gb
  %i.ge = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gf = sub i64 %i.ge, %i.gd                    ; 2 uses
  store i64 %i.gf, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us.5 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gg = add nsw i64 %i.ax, -7                   ; 4 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gg ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gj = add i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gg ; 3 uses
  %i.gk = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gl = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gm = add i64 %i.gl, %i.gk                    ; 2 uses
  store i64 %i.gm, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.gn = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gp = add i64 %i.go, %i.gn                    ; 2 uses
  store i64 %i.gp, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.gq = load i64, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gg ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.gt = icmp ult i64 %i.gq, %i.gs
  br i1 %i.gt, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803
  %i.gu = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gv = mul i64 %i.gu, %i.gs
  %i.gw = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gx = sub i64 %i.gw, %i.gv                    ; 2 uses
  store i64 %i.gx, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %i.gy = load i64, ptr %i.gr, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gz = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ha = mul i64 %i.gz, %i.gy
  %i.hb = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hc = sub i64 %i.hb, %i.ha                    ; 2 uses
  store i64 %i.hc, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us.6 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.hd = add nsw i64 %i.ax, -8                   ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.hd ; 4 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.hd ; 3 uses
  %i.hh = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hi = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  store i64 %i.hj, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hk = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hl = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hm = add i64 %i.hl, %i.hk                    ; 2 uses
  store i64 %i.hm, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.hn = load i64, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.hd ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.hq = icmp ult i64 %i.hn, %i.hp
  br i1 %i.hq, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803
  %i.hr = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hs = mul i64 %i.hr, %i.hp
  %i.ht = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hu = sub i64 %i.ht, %i.hs                    ; 2 uses
  store i64 %i.hu, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %i.hv = load i64, ptr %i.ho, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hw = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hx = mul i64 %i.hw, %i.hv
  %i.hy = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hz = sub i64 %i.hy, %i.hx                    ; 2 uses
  store i64 %i.hz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ia = add i64 %i.ax, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ia, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bh, %.lr.ph.i.split.us ], [ %i.bu, %.loopexit.i.us ], [ %i.ce, %.lr.ph.i.split.us.1 ], [ %i.cr, %.loopexit.i.us.1 ], [ %i.db, %.lr.ph.i.split.us.2 ], [ %i.do, %.loopexit.i.us.2 ], [ %i.dy, %.lr.ph.i.split.us.3 ], [ %i.el, %.loopexit.i.us.3 ], [ %i.ev, %.lr.ph.i.split.us.4 ], [ %i.fi, %.loopexit.i.us.4 ], [ %i.fs, %.lr.ph.i.split.us.5 ], [ %i.gf, %.loopexit.i.us.5 ], [ %i.gp, %.lr.ph.i.split.us.6 ], [ %i.hc, %.loopexit.i.us.6 ], [ %i.hm, %.lr.ph.i.split.us.7 ], [ %i.hz, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.be, %.lr.ph.i.split.us ], [ %i.bp, %.loopexit.i.us ], [ %i.cb, %.lr.ph.i.split.us.1 ], [ %i.cm, %.loopexit.i.us.1 ], [ %i.cy, %.lr.ph.i.split.us.2 ], [ %i.dj, %.loopexit.i.us.2 ], [ %i.dv, %.lr.ph.i.split.us.3 ], [ %i.eg, %.loopexit.i.us.3 ], [ %i.es, %.lr.ph.i.split.us.4 ], [ %i.fd, %.loopexit.i.us.4 ], [ %i.fp, %.lr.ph.i.split.us.5 ], [ %i.ga, %.loopexit.i.us.5 ], [ %i.gm, %.lr.ph.i.split.us.6 ], [ %i.gx, %.loopexit.i.us.6 ], [ %i.hj, %.lr.ph.i.split.us.7 ], [ %i.hu, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ib = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ib, %4
  %or.cond = or i1 %i.ic, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.id = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.id, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.if = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ig = icmp ult i64 %i.if, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.if, %6
  %or.cond56 = or i1 %i.ig, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ih = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ii = phi i64 [ %i.kv, %bb.o ], [ %i.ib, %bb.j ], [ %i.if, %bb.l ], [ %i.il, %bb.m ], [ %i.la, %bb.p ]
  %i.ij = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.ik = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ih, i64 noundef %i.ii, i64 noundef %i.ij, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.il = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.im = icmp ult i64 %i.il, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.il, %i.n
  %or.cond57 = or i1 %i.im, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4804
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.x
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4805
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.ie, ptr noundef nonnull readonly %i.io, ptr noundef nonnull readonly %i.in, ptr noundef nonnull readonly %i.ip)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.iq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EINtB13_7IterMuthEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.ir)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4805
  call void @llvm.experimental.noalias.scope.decl(metadata !4806)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4806, !noalias !4807, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4806, !noalias !4807, !noundef !5 ; 4 uses
  %i.is = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.it = load i64, ptr %i.ap, align 8, !alias.scope !4808, !noalias !4809, !noundef !5 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4808, !noalias !4809, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4808, !noalias !4809, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4810, !noalias !4809, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.is, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iu = add i64 %i.it, %.val1.i.i.i.i.i371
  %i.iv = sub i64 %i.iu, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.iv, -32
  %i.iw = add i64 %i.it, %.val.i.i.i.i.i372
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.ix, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.is, 32
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iy = and i64 %i.is, 28
  %n.vec = and i64 %i.is, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iz = add i64 %index, %.val.i.i               ; 2 uses
  %i.ja = add i64 %i.iz, %i.it                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.iz ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load = load <16 x i8>, ptr %i.jb, align 1, !noalias !4811
  %wide.load375 = load <16 x i8>, ptr %i.je, align 1, !noalias !4811
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load376 = load <16 x i8>, ptr %i.jc, align 1, !noalias !4811
  %wide.load377 = load <16 x i8>, ptr %i.jf, align 1, !noalias !4811
  %i.jg = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load376)
  %i.jh = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load375, <16 x i8> %wide.load377)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <16 x i8> %i.jg, ptr %i.jd, align 1, !noalias !4811
  store <16 x i8> %i.jh, ptr %i.ji, align 1, !noalias !4811
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !4780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.is, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.is, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jk = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jl = add i64 %i.jk, %i.it                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jk
  %wide.load380 = load <4 x i8>, ptr %i.jm, align 1, !noalias !4811
  %wide.load381 = load <4 x i8>, ptr %i.jn, align 1, !noalias !4811
  %i.jp = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load380, <4 x i8> %wide.load381)
  store <4 x i8> %i.jp, ptr %i.jo, align 1, !noalias !4811
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.jq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4781

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.is, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jr = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.js = add i64 %.val6.i.i, %i.jr
  %xtraiter448 = and i64 %7, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.jt = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.ju = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jv = add i64 %i.ju, %i.it                    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jv
  %i.jy = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ju
  %i.jz = load i8, ptr %i.jw, align 1, !noalias !4811, !noundef !5
  %i.ka = load i8, ptr %i.jx, align 1, !noalias !4811, !noundef !5
  %..i.i.i.i.i.prol = call i8 @llvm.umin.i8(i8 %i.jz, i8 %i.ka)
  store i8 %..i.i.i.i.i.prol, ptr %i.jy, align 1, !noalias !4811
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jt, %vec.epilog.scalar.ph.prol ]
  %i.kb = icmp eq i64 %i.js, %.val.i.i
  br i1 %i.kb, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.kj, %vec.epilog.scalar.ph ] ; 3 uses
  %i.kc = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kd = add i64 %i.kc, %i.it                    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kd
  %i.kg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.kc
  %i.kh = load i8, ptr %i.ke, align 1, !noalias !4811, !noundef !5
  %i.ki = load i8, ptr %i.kf, align 1, !noalias !4811, !noundef !5
  %..i.i.i.i.i = call i8 @llvm.umin.i8(i8 %i.kh, i8 %i.ki)
  store i8 %..i.i.i.i.i, ptr %i.kg, align 1, !noalias !4811
  %i.kj = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.kk = add i64 %.reass459, %i.it               ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kk
  %i.kn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass459
  %i.ko = load i8, ptr %i.kl, align 1, !noalias !4811, !noundef !5
  %i.kp = load i8, ptr %i.km, align 1, !noalias !4811, !noundef !5
  %..i.i.i.i.i.1 = call i8 @llvm.umin.i8(i8 %i.ko, i8 %i.kp)
  store i8 %..i.i.i.i.i.1, ptr %i.kn, align 1, !noalias !4811
  %exitcond.not.i.i.1 = icmp eq i64 %i.kj, %i.is
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !4782

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4804
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kq = add i64 %.sroa.0.0157, %i.x
  %i.kr = load i64, ptr %i.ac, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ks, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kt = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload
  %i.ku = load i8, ptr %i.kt, align 1, !noundef !5 ; 5 uses
  %i.kv = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kv, %4
  %or.cond58 = or i1 %i.kw, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kx = phi i64 [ %i.nl, %bb.v ], [ %i.nb, %bb.t ], [ %i.ni, %.lr.ph156 ], [ %i.nn, %bb.w ], [ %i.na, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ky = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kz = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kx, i64 noundef %i.ky, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.la = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.lb = icmp ult i64 %i.la, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.la, %i.n
  %or.cond59 = or i1 %i.lb, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4812
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.x
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.lc, ptr noundef nonnull readonly %i.le, ptr noundef nonnull %i.ld, ptr noundef nonnull %i.lf)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4813, !noalias !4814, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4813, !noalias !4814, !noundef !5 ; 4 uses
  %i.lg = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4815, !noalias !4814, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4815, !noalias !4814, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.lg, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lh = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lh, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.lg, 32
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.li = and i64 %i.lg, 28
  %n.vec392 = and i64 %i.lg, -32                  ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.ku, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lj = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lj ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load395 = load <16 x i8>, ptr %i.lk, align 1, !noalias !4813
  %wide.load396 = load <16 x i8>, ptr %i.lm, align 1, !noalias !4813
  %i.ln = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load395, <16 x i8> %broadcast.splat)
  %i.lo = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load396, <16 x i8> %broadcast.splat)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <16 x i8> %i.ln, ptr %i.ll, align 1, !alias.scope !4816, !noalias !4813
  store <16 x i8> %i.lo, ptr %i.lp, align 1, !alias.scope !4816, !noalias !4813
  %index.next397 = add nuw i64 %index394, 32      ; 2 uses
  %i.lq = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lq, label %middle.block398, label %vector.body393, !llvm.loop !4797

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.lg, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.li, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !23

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.lg, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i8> poison, i8 %i.ku, i64 0
  %broadcast.splat408 = shufflevector <4 x i8> %broadcast.splatinsert407, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lr = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lr
  %wide.load411 = load <4 x i8>, ptr %i.ls, align 1, !noalias !4813
  %i.lu = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load411, <4 x i8> %broadcast.splat408)
  store <4 x i8> %i.lu, ptr %i.lt, align 1, !alias.scope !4816, !noalias !4813
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lv, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !4798

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.lg, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lw = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lx = add i64 %.val6.i.i63, %i.lw
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.ly = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lz = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lz
  %.val8.i.i.prol = load i8, ptr %i.ma, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67.prol = call i8 @llvm.umin.i8(i8 %.val8.i.i.prol, i8 %i.ku)
  store i8 %..i.i.i.i.i67.prol, ptr %i.mb, align 1, !alias.scope !4816, !noalias !4813
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.ly, %vec.epilog.scalar.ph402.prol ]
  %i.mc = icmp eq i64 %i.lx, %.val.i.i62
  br i1 %i.mc, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mg, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.md = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.md
  %.val8.i.i = load i8, ptr %i.me, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67 = call i8 @llvm.umin.i8(i8 %.val8.i.i, i8 %i.ku)
  store i8 %..i.i.i.i.i67, ptr %i.mf, align 1, !alias.scope !4816, !noalias !4813
  %i.mg = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %.reass
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i8, ptr %i.mh, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67.1 = call i8 @llvm.umin.i8(i8 %.val8.i.i.1, i8 %i.ku)
  store i8 %..i.i.i.i.i67.1, ptr %i.mi, align 1, !alias.scope !4816, !noalias !4813
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mg, %i.lg
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !4799

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4812
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mj = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mj, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload
  %i.ml = load i8, ptr %i.mk, align 1, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mm = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mn = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mo = sub i64 %i.mn, %i.au
  %i.mp = call i64 @llvm.umin.i64(i64 %i.mo, i64 %i.mm)
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mp, i64 %i.as) ; 2 uses
  %i.mr = add nuw i64 %i.mq, 1                    ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.mq, 16
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.ms = add i64 %.sroa.4.0.copyload, %i.a
  %i.mt = sub i64 %i.ms, %i.av
  %diff.check417 = icmp ugt i64 %i.mt, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.mu = and i64 %i.mr, 15                       ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %i.mw = select i1 %i.mv, i64 16, i64 %i.mu
  %n.vec420 = sub i64 %i.mr, %i.mw                ; 2 uses
  %broadcast.splatinsert421 = insertelement <16 x i8> poison, i8 %i.ml, i64 0
  %broadcast.splat422 = shufflevector <16 x i8> %broadcast.splatinsert421, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr i8, ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index424
  %wide.load425 = load <16 x i8>, ptr %gep, align 1
  %i.mx = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %broadcast.splat422, <16 x i8> %wide.load425)
  %gep457 = getelementptr i8, ptr %invariant.gep456, i64 %index424
  store <16 x i8> %i.mx, ptr %gep457, align 1
  %index.next426 = add nuw i64 %index424, 16      ; 2 uses
  %i.my = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.my, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !4800

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mz, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.020.0154, 1          ; 2 uses
  %i.na = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mm
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nb = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %i.n
  br i1 %i.nc, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 %i.na
  %i.ne = load i8, ptr %i.nd, align 1, !noundef !5
  %..i.i = call noundef i8 @llvm.umin.i8(i8 %i.ml, i8 %i.ne)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.nb
  store i8 %..i.i, ptr %i.nf, align 1
  %exitcond242.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4801

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ng, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ng = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nh = mul i64 %.sroa.022.0155, %i.z
  %i.ni = add i64 %i.nh, %.sroa.071.0.copyload    ; 3 uses
  %i.nj = icmp ult i64 %i.ni, %4
  br i1 %i.nj, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nk = mul i64 %.sroa.022.0155, %i.ab
  %i.nl = add i64 %i.nk, %.sroa.4.0.copyload      ; 3 uses
  %i.nm = icmp ult i64 %i.nl, %6
  br i1 %i.nm, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nn = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.no = icmp ult i64 %i.nn, %i.n
  br i1 %i.no, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 %i.ni
  %i.nq = load i8, ptr %i.np, align 1, !noundef !5
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 %i.nl
  %i.ns = load i8, ptr %i.nr, align 1, !noundef !5
  %..i.i70 = call noundef i8 @llvm.umin.i8(i8 %i.nq, i8 %i.ns)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.nn
  store i8 %..i.i70, ptr %i.nt, align 1
  %exitcond243.not = icmp eq i64 %i.ng, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.v, align 8
end_hunk_9
begin_hunk_10_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !4865, !noalias !4866
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4865, !noalias !4866
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4865, !noalias !4866
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4865, !noalias !4866
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.kp, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ku, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4867
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4868
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 4 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterlEB10_EINtB13_7IterMutlEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 4 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4868
  call void @llvm.experimental.noalias.scope.decl(metadata !4869)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4869, !noalias !4870, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4869, !noalias !4870, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4871, !noalias !4872, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4871, !noalias !4872, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4871, !noalias !4872, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4873, !noalias !4872, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 2                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <4 x i32>, ptr %i.jc, align 4, !noalias !4874
  %wide.load374 = load <4 x i32>, ptr %i.jf, align 4, !noalias !4874
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load375 = load <4 x i32>, ptr %i.jd, align 4, !noalias !4874
  %wide.load376 = load <4 x i32>, ptr %i.jg, align 4, !noalias !4874
  %i.jh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load375)
  %i.ji = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load374, <4 x i32> %wide.load376)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %i.jh, ptr %i.je, align 4, !noalias !4874
  store <4 x i32> %i.ji, ptr %i.jj, align 4, !noalias !4874
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !4845

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jl = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jm = add i64 %.val6.i.i, %i.jl
  %xtraiter427 = and i64 %7, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jn = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jo = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jp
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jo
  %i.jt = load i32, ptr %i.jq, align 4, !noalias !4874, !noundef !5
  %i.ju = load i32, ptr %i.jr, align 4, !noalias !4874, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.smax.i32(i32 %i.jt, i32 %i.ju)
  store i32 %..i.i.i.i.i.prol, ptr %i.js, align 4, !noalias !4874
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %i.jv = icmp eq i64 %i.jm, %.val.i.i
  br i1 %i.jv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op437 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jw = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i32, ptr %i.jy, align 4, !noalias !4874, !noundef !5
  %i.kc = load i32, ptr %i.jz, align 4, !noalias !4874, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.kb, i32 %i.kc)
  store i32 %..i.i.i.i.i, ptr %i.ka, align 4, !noalias !4874
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass438 = add i64 %.sroa.0.012.i.i, %invariant.op437 ; 2 uses
  %i.ke = add i64 %.reass438, %i.iu               ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass438
  %i.ki = load i32, ptr %i.kf, align 4, !noalias !4874, !noundef !5
  %i.kj = load i32, ptr %i.kg, align 4, !noalias !4874, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %i.ki, i32 %i.kj)
  store i32 %..i.i.i.i.i.1, ptr %i.kh, align 4, !noalias !4874
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4846

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4867
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kk = add i64 %.sroa.0.0157, %i.x
  %i.kl = load i64, ptr %i.ac, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i32, ptr %i.kn, align 4, !noundef !5 ; 4 uses
  %i.kp = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond58 = or i1 %i.kq, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kr = phi i64 [ %i.ne, %bb.v ], [ %i.mu, %bb.t ], [ %i.nb, %.lr.ph156 ], [ %i.ng, %bb.w ], [ %i.mt, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ks = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kt = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kr, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ku = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ku, %i.n
  %or.cond59 = or i1 %i.kv, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4875
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.x
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtBZ_7IterMutlEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 4 %i.kw, ptr noundef nonnull readonly %i.ky, ptr noundef nonnull align 4 %i.kx, ptr noundef nonnull %i.kz)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4876)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4876, !noalias !4877, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4876, !noalias !4877, !noundef !5 ; 4 uses
  %i.la = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4878, !noalias !4877, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4878, !noalias !4877, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.la, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lb = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lb, -32
  %or.cond408 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond408, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.la, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ko, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.lc = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.ld, align 4, !noalias !4876
  %wide.load388 = load <4 x i32>, ptr %i.lf, align 4, !noalias !4876
  %i.lg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.lh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <4 x i32> %i.lg, ptr %i.le, align 4, !alias.scope !4879, !noalias !4876
  store <4 x i32> %i.lh, ptr %i.li, align 4, !alias.scope !4879, !noalias !4876
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lj, label %middle.block390, label %vector.body385, !llvm.loop !4861

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.la, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lk = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ll = add i64 %.val6.i.i63, %i.lk
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lm = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ln = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ln
  %.val8.i.i.prol = load i32, ptr %i.lo, align 4, !noalias !4876, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.smax.i32(i32 %.val8.i.i.prol, i32 %i.ko)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lp, align 4, !alias.scope !4879, !noalias !4876
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lm, %scalar.ph381.prol ]
  %i.lq = icmp eq i64 %i.ll, %.val.i.i62
  br i1 %i.lq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lu, %scalar.ph381 ] ; 3 uses
  %i.lr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i = load i32, ptr %i.ls, align 4, !noalias !4876, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.smax.i32(i32 %.val8.i.i, i32 %i.ko)
  store i32 %..i.i.i.i.i67, ptr %i.lt, align 4, !alias.scope !4879, !noalias !4876
  %i.lu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.lv, align 4, !noalias !4876, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.smax.i32(i32 %.val8.i.i.1, i32 %i.ko)
  store i32 %..i.i.i.i.i67.1, ptr %i.lw, align 4, !alias.scope !4879, !noalias !4876
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lu, %i.la
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4862

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4875
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lx = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lx, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lz = load i32, ptr %i.ly, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ma = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mb = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mc = sub i64 %i.mb, %i.av
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 %i.ma)
  %i.me = call i64 @llvm.umin.i64(i64 %i.md, i64 %i.at) ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check396 = icmp samesign ult i64 %i.me, 8
  br i1 %min.iters.check396, label %.lr.ph.preheader411, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.preheader
  %i.mg = shl i64 %.sroa.4.0.copyload, 2
  %i.mh = add i64 %i.aw, %i.r
  %i.mi = add i64 %i.mg, %i.a
  %i.mj = sub i64 %i.mi, %i.mh
  %diff.check394 = icmp ugt i64 %i.mj, -32
  br i1 %diff.check394, label %.lr.ph.preheader411, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck393
  %i.mk = and i64 %i.mf, 7                        ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = select i1 %i.ml, i64 8, i64 %i.mk
  %n.vec398 = sub nsw i64 %i.mf, %i.mm            ; 2 uses
  %broadcast.splatinsert399 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat400 = shufflevector <4 x i32> %broadcast.splatinsert399, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep435 = getelementptr [4 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index402 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load403 = load <4 x i32>, ptr %gep, align 4
  %wide.load404 = load <4 x i32>, ptr %i.mn, align 4
  %i.mo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load403)
  %i.mp = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load404)
  %gep436 = getelementptr [4 x i8], ptr %invariant.gep435, i64 %index402 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep436, i64 16
  store <4 x i32> %i.mo, ptr %gep436, align 4
  store <4 x i32> %i.mp, ptr %i.mq, align 4
  %index.next405 = add nuw i64 %index402, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.mr, label %.lr.ph.preheader411, label %vector.body401, !llvm.loop !4863

.lr.ph.preheader411:                              ; preds = %vector.body401, %vector.memcheck393, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck393 ], [ 0, %.lr.ph.preheader ], [ %n.vec398, %vector.body401 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader411, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ms, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader411 ] ; 4 uses
  %i.ms = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mt = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.ma
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mu = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.n
  br i1 %i.mv, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mt
  %i.mx = load i32, ptr %i.mw, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.smax.i32(i32 %i.lz, i32 %i.mx)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mu
  store i32 %..i.i, ptr %i.my, align 4
  %exitcond242.not = icmp eq i64 %i.ms, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4864

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.mz, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.na = mul i64 %.sroa.022.0155, %i.z
  %i.nb = add i64 %i.na, %.sroa.071.0.copyload    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %4
  br i1 %i.nc, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nd = mul i64 %.sroa.022.0155, %i.ab
  %i.ne = add i64 %i.nd, %.sroa.4.0.copyload      ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %6
  br i1 %i.nf, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.ng = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nb
  %i.nj = load i32, ptr %i.ni, align 4, !noundef !5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ne
  %i.nl = load i32, ptr %i.nk, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.smax.i32(i32 %i.nj, i32 %i.nl)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ng
  store i32 %..i.i70, ptr %i.nm, align 4
  %exitcond243.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
end_hunk_10
begin_hunk_11_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !4928, !noalias !4929
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4928, !noalias !4929
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4928, !noalias !4929
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4928, !noalias !4929
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.kp, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ku, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4930
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4931
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 4 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterlEB10_EINtB13_7IterMutlEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 4 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4931
  call void @llvm.experimental.noalias.scope.decl(metadata !4932)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4932, !noalias !4933, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4932, !noalias !4933, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4934, !noalias !4935, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4934, !noalias !4935, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4934, !noalias !4935, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4936, !noalias !4935, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 2                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <4 x i32>, ptr %i.jc, align 4, !noalias !4937
  %wide.load374 = load <4 x i32>, ptr %i.jf, align 4, !noalias !4937
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load375 = load <4 x i32>, ptr %i.jd, align 4, !noalias !4937
  %wide.load376 = load <4 x i32>, ptr %i.jg, align 4, !noalias !4937
  %i.jh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load375)
  %i.ji = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load374, <4 x i32> %wide.load376)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %i.jh, ptr %i.je, align 4, !noalias !4937
  store <4 x i32> %i.ji, ptr %i.jj, align 4, !noalias !4937
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !4908

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jl = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jm = add i64 %.val6.i.i, %i.jl
  %xtraiter427 = and i64 %7, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jn = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jo = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jp
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jo
  %i.jt = load i32, ptr %i.jq, align 4, !noalias !4937, !noundef !5
  %i.ju = load i32, ptr %i.jr, align 4, !noalias !4937, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.smin.i32(i32 %i.jt, i32 %i.ju)
  store i32 %..i.i.i.i.i.prol, ptr %i.js, align 4, !noalias !4937
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %i.jv = icmp eq i64 %i.jm, %.val.i.i
  br i1 %i.jv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op437 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jw = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i32, ptr %i.jy, align 4, !noalias !4937, !noundef !5
  %i.kc = load i32, ptr %i.jz, align 4, !noalias !4937, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.kb, i32 %i.kc)
  store i32 %..i.i.i.i.i, ptr %i.ka, align 4, !noalias !4937
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass438 = add i64 %.sroa.0.012.i.i, %invariant.op437 ; 2 uses
  %i.ke = add i64 %.reass438, %i.iu               ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass438
  %i.ki = load i32, ptr %i.kf, align 4, !noalias !4937, !noundef !5
  %i.kj = load i32, ptr %i.kg, align 4, !noalias !4937, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.smin.i32(i32 %i.ki, i32 %i.kj)
  store i32 %..i.i.i.i.i.1, ptr %i.kh, align 4, !noalias !4937
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4909

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4930
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kk = add i64 %.sroa.0.0157, %i.x
  %i.kl = load i64, ptr %i.ac, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i32, ptr %i.kn, align 4, !noundef !5 ; 4 uses
  %i.kp = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond58 = or i1 %i.kq, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kr = phi i64 [ %i.ne, %bb.v ], [ %i.mu, %bb.t ], [ %i.nb, %.lr.ph156 ], [ %i.ng, %bb.w ], [ %i.mt, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ks = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kt = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kr, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ku = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ku, %i.n
  %or.cond59 = or i1 %i.kv, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4938
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.x
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtBZ_7IterMutlEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 4 %i.kw, ptr noundef nonnull readonly %i.ky, ptr noundef nonnull align 4 %i.kx, ptr noundef nonnull %i.kz)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4939)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4939, !noalias !4940, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4939, !noalias !4940, !noundef !5 ; 4 uses
  %i.la = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4941, !noalias !4940, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4941, !noalias !4940, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.la, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lb = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lb, -32
  %or.cond408 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond408, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.la, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ko, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.lc = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.ld, align 4, !noalias !4939
  %wide.load388 = load <4 x i32>, ptr %i.lf, align 4, !noalias !4939
  %i.lg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.lh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <4 x i32> %i.lg, ptr %i.le, align 4, !alias.scope !4942, !noalias !4939
  store <4 x i32> %i.lh, ptr %i.li, align 4, !alias.scope !4942, !noalias !4939
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lj, label %middle.block390, label %vector.body385, !llvm.loop !4924

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.la, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lk = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ll = add i64 %.val6.i.i63, %i.lk
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lm = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ln = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ln
  %.val8.i.i.prol = load i32, ptr %i.lo, align 4, !noalias !4939, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.smin.i32(i32 %.val8.i.i.prol, i32 %i.ko)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lp, align 4, !alias.scope !4942, !noalias !4939
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lm, %scalar.ph381.prol ]
  %i.lq = icmp eq i64 %i.ll, %.val.i.i62
  br i1 %i.lq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lu, %scalar.ph381 ] ; 3 uses
  %i.lr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i = load i32, ptr %i.ls, align 4, !noalias !4939, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.smin.i32(i32 %.val8.i.i, i32 %i.ko)
  store i32 %..i.i.i.i.i67, ptr %i.lt, align 4, !alias.scope !4942, !noalias !4939
  %i.lu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.lv, align 4, !noalias !4939, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.smin.i32(i32 %.val8.i.i.1, i32 %i.ko)
  store i32 %..i.i.i.i.i67.1, ptr %i.lw, align 4, !alias.scope !4942, !noalias !4939
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lu, %i.la
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4925

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4938
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lx = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lx, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lz = load i32, ptr %i.ly, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ma = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mb = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mc = sub i64 %i.mb, %i.av
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 %i.ma)
  %i.me = call i64 @llvm.umin.i64(i64 %i.md, i64 %i.at) ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check396 = icmp samesign ult i64 %i.me, 8
  br i1 %min.iters.check396, label %.lr.ph.preheader411, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.preheader
  %i.mg = shl i64 %.sroa.4.0.copyload, 2
  %i.mh = add i64 %i.aw, %i.r
  %i.mi = add i64 %i.mg, %i.a
  %i.mj = sub i64 %i.mi, %i.mh
  %diff.check394 = icmp ugt i64 %i.mj, -32
  br i1 %diff.check394, label %.lr.ph.preheader411, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck393
  %i.mk = and i64 %i.mf, 7                        ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = select i1 %i.ml, i64 8, i64 %i.mk
  %n.vec398 = sub nsw i64 %i.mf, %i.mm            ; 2 uses
  %broadcast.splatinsert399 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat400 = shufflevector <4 x i32> %broadcast.splatinsert399, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep435 = getelementptr [4 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index402 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load403 = load <4 x i32>, ptr %gep, align 4
  %wide.load404 = load <4 x i32>, ptr %i.mn, align 4
  %i.mo = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load403)
  %i.mp = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load404)
  %gep436 = getelementptr [4 x i8], ptr %invariant.gep435, i64 %index402 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep436, i64 16
  store <4 x i32> %i.mo, ptr %gep436, align 4
  store <4 x i32> %i.mp, ptr %i.mq, align 4
  %index.next405 = add nuw i64 %index402, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.mr, label %.lr.ph.preheader411, label %vector.body401, !llvm.loop !4926

.lr.ph.preheader411:                              ; preds = %vector.body401, %vector.memcheck393, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck393 ], [ 0, %.lr.ph.preheader ], [ %n.vec398, %vector.body401 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader411, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ms, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader411 ] ; 4 uses
  %i.ms = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mt = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.ma
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mu = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.n
  br i1 %i.mv, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mt
  %i.mx = load i32, ptr %i.mw, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.smin.i32(i32 %i.lz, i32 %i.mx)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mu
  store i32 %..i.i, ptr %i.my, align 4
  %exitcond242.not = icmp eq i64 %i.ms, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4927

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.mz, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.na = mul i64 %.sroa.022.0155, %i.z
  %i.nb = add i64 %i.na, %.sroa.071.0.copyload    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %4
  br i1 %i.nc, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nd = mul i64 %.sroa.022.0155, %i.ab
  %i.ne = add i64 %i.nd, %.sroa.4.0.copyload      ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %6
  br i1 %i.nf, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.ng = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nb
  %i.nj = load i32, ptr %i.ni, align 4, !noundef !5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ne
  %i.nl = load i32, ptr %i.nk, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.smin.i32(i32 %i.nj, i32 %i.nl)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ng
  store i32 %..i.i70, ptr %i.nm, align 4
  %exitcond243.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
end_hunk_11
begin_hunk_12_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !4991, !noalias !4992
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4991, !noalias !4992
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4991, !noalias !4992
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4991, !noalias !4992
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.kp, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ku, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4993
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4994
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 4 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItermEB10_EINtB13_7IterMutmEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 4 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4994
  call void @llvm.experimental.noalias.scope.decl(metadata !4995)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4995, !noalias !4996, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4995, !noalias !4996, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4997, !noalias !4998, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4997, !noalias !4998, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4997, !noalias !4998, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4999, !noalias !4998, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 2                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <4 x i32>, ptr %i.jc, align 4, !noalias !5000
  %wide.load374 = load <4 x i32>, ptr %i.jf, align 4, !noalias !5000
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load375 = load <4 x i32>, ptr %i.jd, align 4, !noalias !5000
  %wide.load376 = load <4 x i32>, ptr %i.jg, align 4, !noalias !5000
  %i.jh = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load375)
  %i.ji = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load374, <4 x i32> %wide.load376)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %i.jh, ptr %i.je, align 4, !noalias !5000
  store <4 x i32> %i.ji, ptr %i.jj, align 4, !noalias !5000
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !4971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jl = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jm = add i64 %.val6.i.i, %i.jl
  %xtraiter427 = and i64 %7, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jn = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jo = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jp
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jo
  %i.jt = load i32, ptr %i.jq, align 4, !noalias !5000, !noundef !5
  %i.ju = load i32, ptr %i.jr, align 4, !noalias !5000, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.umax.i32(i32 %i.jt, i32 %i.ju)
  store i32 %..i.i.i.i.i.prol, ptr %i.js, align 4, !noalias !5000
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %i.jv = icmp eq i64 %i.jm, %.val.i.i
  br i1 %i.jv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op437 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jw = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i32, ptr %i.jy, align 4, !noalias !5000, !noundef !5
  %i.kc = load i32, ptr %i.jz, align 4, !noalias !5000, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.kb, i32 %i.kc)
  store i32 %..i.i.i.i.i, ptr %i.ka, align 4, !noalias !5000
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass438 = add i64 %.sroa.0.012.i.i, %invariant.op437 ; 2 uses
  %i.ke = add i64 %.reass438, %i.iu               ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass438
  %i.ki = load i32, ptr %i.kf, align 4, !noalias !5000, !noundef !5
  %i.kj = load i32, ptr %i.kg, align 4, !noalias !5000, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.umax.i32(i32 %i.ki, i32 %i.kj)
  store i32 %..i.i.i.i.i.1, ptr %i.kh, align 4, !noalias !5000
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4972

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4993
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kk = add i64 %.sroa.0.0157, %i.x
  %i.kl = load i64, ptr %i.ac, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i32, ptr %i.kn, align 4, !noundef !5 ; 4 uses
  %i.kp = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond58 = or i1 %i.kq, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kr = phi i64 [ %i.ne, %bb.v ], [ %i.mu, %bb.t ], [ %i.nb, %.lr.ph156 ], [ %i.ng, %bb.w ], [ %i.mt, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ks = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kt = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kr, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ku = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ku, %i.n
  %or.cond59 = or i1 %i.kv, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5001
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.x
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 4 %i.kw, ptr noundef nonnull readonly %i.ky, ptr noundef nonnull align 4 %i.kx, ptr noundef nonnull %i.kz)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5002)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !5002, !noalias !5003, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !5002, !noalias !5003, !noundef !5 ; 4 uses
  %i.la = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !5004, !noalias !5003, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5004, !noalias !5003, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.la, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lb = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lb, -32
  %or.cond408 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond408, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.la, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ko, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.lc = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.ld, align 4, !noalias !5002
  %wide.load388 = load <4 x i32>, ptr %i.lf, align 4, !noalias !5002
  %i.lg = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.lh = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <4 x i32> %i.lg, ptr %i.le, align 4, !alias.scope !5005, !noalias !5002
  store <4 x i32> %i.lh, ptr %i.li, align 4, !alias.scope !5005, !noalias !5002
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lj, label %middle.block390, label %vector.body385, !llvm.loop !4987

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.la, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lk = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ll = add i64 %.val6.i.i63, %i.lk
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lm = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ln = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ln
  %.val8.i.i.prol = load i32, ptr %i.lo, align 4, !noalias !5002, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.umax.i32(i32 %.val8.i.i.prol, i32 %i.ko)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lp, align 4, !alias.scope !5005, !noalias !5002
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lm, %scalar.ph381.prol ]
  %i.lq = icmp eq i64 %i.ll, %.val.i.i62
  br i1 %i.lq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lu, %scalar.ph381 ] ; 3 uses
  %i.lr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i = load i32, ptr %i.ls, align 4, !noalias !5002, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.umax.i32(i32 %.val8.i.i, i32 %i.ko)
  store i32 %..i.i.i.i.i67, ptr %i.lt, align 4, !alias.scope !5005, !noalias !5002
  %i.lu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.lv, align 4, !noalias !5002, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.umax.i32(i32 %.val8.i.i.1, i32 %i.ko)
  store i32 %..i.i.i.i.i67.1, ptr %i.lw, align 4, !alias.scope !5005, !noalias !5002
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lu, %i.la
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4988

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5001
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lx = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lx, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lz = load i32, ptr %i.ly, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ma = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mb = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mc = sub i64 %i.mb, %i.av
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 %i.ma)
  %i.me = call i64 @llvm.umin.i64(i64 %i.md, i64 %i.at) ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check396 = icmp samesign ult i64 %i.me, 8
  br i1 %min.iters.check396, label %.lr.ph.preheader411, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.preheader
  %i.mg = shl i64 %.sroa.4.0.copyload, 2
  %i.mh = add i64 %i.aw, %i.r
  %i.mi = add i64 %i.mg, %i.a
  %i.mj = sub i64 %i.mi, %i.mh
  %diff.check394 = icmp ugt i64 %i.mj, -32
  br i1 %diff.check394, label %.lr.ph.preheader411, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck393
  %i.mk = and i64 %i.mf, 7                        ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = select i1 %i.ml, i64 8, i64 %i.mk
  %n.vec398 = sub nsw i64 %i.mf, %i.mm            ; 2 uses
  %broadcast.splatinsert399 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat400 = shufflevector <4 x i32> %broadcast.splatinsert399, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep435 = getelementptr [4 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index402 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load403 = load <4 x i32>, ptr %gep, align 4
  %wide.load404 = load <4 x i32>, ptr %i.mn, align 4
  %i.mo = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load403)
  %i.mp = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load404)
  %gep436 = getelementptr [4 x i8], ptr %invariant.gep435, i64 %index402 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep436, i64 16
  store <4 x i32> %i.mo, ptr %gep436, align 4
  store <4 x i32> %i.mp, ptr %i.mq, align 4
  %index.next405 = add nuw i64 %index402, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.mr, label %.lr.ph.preheader411, label %vector.body401, !llvm.loop !4989

.lr.ph.preheader411:                              ; preds = %vector.body401, %vector.memcheck393, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck393 ], [ 0, %.lr.ph.preheader ], [ %n.vec398, %vector.body401 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader411, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ms, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader411 ] ; 4 uses
  %i.ms = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mt = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.ma
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mu = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.n
  br i1 %i.mv, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mt
  %i.mx = load i32, ptr %i.mw, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.umax.i32(i32 %i.lz, i32 %i.mx)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mu
  store i32 %..i.i, ptr %i.my, align 4
  %exitcond242.not = icmp eq i64 %i.ms, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4990

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.mz, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.na = mul i64 %.sroa.022.0155, %i.z
  %i.nb = add i64 %i.na, %.sroa.071.0.copyload    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %4
  br i1 %i.nc, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nd = mul i64 %.sroa.022.0155, %i.ab
  %i.ne = add i64 %i.nd, %.sroa.4.0.copyload      ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %6
  br i1 %i.nf, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.ng = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nb
  %i.nj = load i32, ptr %i.ni, align 4, !noundef !5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ne
  %i.nl = load i32, ptr %i.nk, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.umax.i32(i32 %i.nj, i32 %i.nl)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ng
  store i32 %..i.i70, ptr %i.nm, align 4
  %exitcond243.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
end_hunk_12
begin_hunk_13_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !5054, !noalias !5055
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !5054, !noalias !5055
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !5054, !noalias !5055
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !5054, !noalias !5055
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.kp, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ku, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5056
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5057
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 4 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItermEB10_EINtB13_7IterMutmEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 4 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5057
  call void @llvm.experimental.noalias.scope.decl(metadata !5058)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !5058, !noalias !5059, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !5058, !noalias !5059, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !5060, !noalias !5061, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5060, !noalias !5061, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !5060, !noalias !5061, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !5062, !noalias !5061, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 2                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <4 x i32>, ptr %i.jc, align 4, !noalias !5063
  %wide.load374 = load <4 x i32>, ptr %i.jf, align 4, !noalias !5063
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load375 = load <4 x i32>, ptr %i.jd, align 4, !noalias !5063
  %wide.load376 = load <4 x i32>, ptr %i.jg, align 4, !noalias !5063
  %i.jh = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load375)
  %i.ji = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load374, <4 x i32> %wide.load376)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %i.jh, ptr %i.je, align 4, !noalias !5063
  store <4 x i32> %i.ji, ptr %i.jj, align 4, !noalias !5063
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !5034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jl = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jm = add i64 %.val6.i.i, %i.jl
  %xtraiter427 = and i64 %7, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jn = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jo = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jp
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jo
  %i.jt = load i32, ptr %i.jq, align 4, !noalias !5063, !noundef !5
  %i.ju = load i32, ptr %i.jr, align 4, !noalias !5063, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.umin.i32(i32 %i.jt, i32 %i.ju)
  store i32 %..i.i.i.i.i.prol, ptr %i.js, align 4, !noalias !5063
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %i.jv = icmp eq i64 %i.jm, %.val.i.i
  br i1 %i.jv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op437 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jw = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i32, ptr %i.jy, align 4, !noalias !5063, !noundef !5
  %i.kc = load i32, ptr %i.jz, align 4, !noalias !5063, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.kb, i32 %i.kc)
  store i32 %..i.i.i.i.i, ptr %i.ka, align 4, !noalias !5063
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass438 = add i64 %.sroa.0.012.i.i, %invariant.op437 ; 2 uses
  %i.ke = add i64 %.reass438, %i.iu               ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass438
  %i.ki = load i32, ptr %i.kf, align 4, !noalias !5063, !noundef !5
  %i.kj = load i32, ptr %i.kg, align 4, !noalias !5063, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.kj)
  store i32 %..i.i.i.i.i.1, ptr %i.kh, align 4, !noalias !5063
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !5035

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5056
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kk = add i64 %.sroa.0.0157, %i.x
  %i.kl = load i64, ptr %i.ac, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i32, ptr %i.kn, align 4, !noundef !5 ; 4 uses
  %i.kp = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond58 = or i1 %i.kq, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kr = phi i64 [ %i.ne, %bb.v ], [ %i.mu, %bb.t ], [ %i.nb, %.lr.ph156 ], [ %i.ng, %bb.w ], [ %i.mt, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ks = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kt = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kr, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ku = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ku, %i.n
  %or.cond59 = or i1 %i.kv, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5064
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.x
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 4 %i.kw, ptr noundef nonnull readonly %i.ky, ptr noundef nonnull align 4 %i.kx, ptr noundef nonnull %i.kz)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5065)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !5065, !noalias !5066, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !5065, !noalias !5066, !noundef !5 ; 4 uses
  %i.la = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !5067, !noalias !5066, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5067, !noalias !5066, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.la, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lb = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lb, -32
  %or.cond408 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond408, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.la, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ko, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.lc = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.ld, align 4, !noalias !5065
  %wide.load388 = load <4 x i32>, ptr %i.lf, align 4, !noalias !5065
  %i.lg = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.lh = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <4 x i32> %i.lg, ptr %i.le, align 4, !alias.scope !5068, !noalias !5065
  store <4 x i32> %i.lh, ptr %i.li, align 4, !alias.scope !5068, !noalias !5065
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lj, label %middle.block390, label %vector.body385, !llvm.loop !5050

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.la, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lk = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ll = add i64 %.val6.i.i63, %i.lk
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lm = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ln = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ln
  %.val8.i.i.prol = load i32, ptr %i.lo, align 4, !noalias !5065, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.umin.i32(i32 %.val8.i.i.prol, i32 %i.ko)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lp, align 4, !alias.scope !5068, !noalias !5065
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lm, %scalar.ph381.prol ]
  %i.lq = icmp eq i64 %i.ll, %.val.i.i62
  br i1 %i.lq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lu, %scalar.ph381 ] ; 3 uses
  %i.lr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i = load i32, ptr %i.ls, align 4, !noalias !5065, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.umin.i32(i32 %.val8.i.i, i32 %i.ko)
  store i32 %..i.i.i.i.i67, ptr %i.lt, align 4, !alias.scope !5068, !noalias !5065
  %i.lu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.lv, align 4, !noalias !5065, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.umin.i32(i32 %.val8.i.i.1, i32 %i.ko)
  store i32 %..i.i.i.i.i67.1, ptr %i.lw, align 4, !alias.scope !5068, !noalias !5065
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lu, %i.la
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !5051

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5064
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lx = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lx, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lz = load i32, ptr %i.ly, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ma = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mb = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mc = sub i64 %i.mb, %i.av
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 %i.ma)
  %i.me = call i64 @llvm.umin.i64(i64 %i.md, i64 %i.at) ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check396 = icmp samesign ult i64 %i.me, 8
  br i1 %min.iters.check396, label %.lr.ph.preheader411, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.preheader
  %i.mg = shl i64 %.sroa.4.0.copyload, 2
  %i.mh = add i64 %i.aw, %i.r
  %i.mi = add i64 %i.mg, %i.a
  %i.mj = sub i64 %i.mi, %i.mh
  %diff.check394 = icmp ugt i64 %i.mj, -32
  br i1 %diff.check394, label %.lr.ph.preheader411, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck393
  %i.mk = and i64 %i.mf, 7                        ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = select i1 %i.ml, i64 8, i64 %i.mk
  %n.vec398 = sub nsw i64 %i.mf, %i.mm            ; 2 uses
  %broadcast.splatinsert399 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat400 = shufflevector <4 x i32> %broadcast.splatinsert399, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep435 = getelementptr [4 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index402 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load403 = load <4 x i32>, ptr %gep, align 4
  %wide.load404 = load <4 x i32>, ptr %i.mn, align 4
  %i.mo = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load403)
  %i.mp = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat400, <4 x i32> %wide.load404)
  %gep436 = getelementptr [4 x i8], ptr %invariant.gep435, i64 %index402 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep436, i64 16
  store <4 x i32> %i.mo, ptr %gep436, align 4
  store <4 x i32> %i.mp, ptr %i.mq, align 4
  %index.next405 = add nuw i64 %index402, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.mr, label %.lr.ph.preheader411, label %vector.body401, !llvm.loop !5052

.lr.ph.preheader411:                              ; preds = %vector.body401, %vector.memcheck393, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck393 ], [ 0, %.lr.ph.preheader ], [ %n.vec398, %vector.body401 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader411, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ms, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader411 ] ; 4 uses
  %i.ms = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mt = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.ma
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mu = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.n
  br i1 %i.mv, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mt
  %i.mx = load i32, ptr %i.mw, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.umin.i32(i32 %i.lz, i32 %i.mx)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mu
  store i32 %..i.i, ptr %i.my, align 4
  %exitcond242.not = icmp eq i64 %i.ms, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5053

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.mz, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.na = mul i64 %.sroa.022.0155, %i.z
  %i.nb = add i64 %i.na, %.sroa.071.0.copyload    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %4
  br i1 %i.nc, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nd = mul i64 %.sroa.022.0155, %i.ab
  %i.ne = add i64 %i.nd, %.sroa.4.0.copyload      ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %6
  br i1 %i.nf, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.ng = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nb
  %i.nj = load i32, ptr %i.ni, align 4, !noundef !5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ne
  %i.nl = load i32, ptr %i.nk, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.umin.i32(i32 %i.nj, i32 %i.nl)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ng
  store i32 %..i.i70, ptr %i.nm, align 4
  %exitcond243.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
end_hunk_13
begin_hunk_14_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !5119, !noalias !5120
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.kx, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.lc, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5121
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5122
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItersEB10_EINtB13_7IterMutsEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5122
  call void @llvm.experimental.noalias.scope.decl(metadata !5123)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !5123, !noalias !5124, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !5123, !noalias !5124, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !5125, !noalias !5126, !noundef !5 ; 6 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5125, !noalias !5126, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !5125, !noalias !5126, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !5127, !noalias !5126, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.it, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.it, 16
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ja = and i64 %i.it, 12
  %n.vec = and i64 %i.it, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jb = add i64 %index, %.val.i.i               ; 2 uses
  %i.jc = add i64 %i.jb, %i.iu                    ; 2 uses
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jb ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load = load <8 x i16>, ptr %i.jd, align 2, !noalias !5128
  %wide.load375 = load <8 x i16>, ptr %i.jg, align 2, !noalias !5128
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load376 = load <8 x i16>, ptr %i.je, align 2, !noalias !5128
  %wide.load377 = load <8 x i16>, ptr %i.jh, align 2, !noalias !5128
  %i.ji = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load376)
  %i.jj = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load375, <8 x i16> %wide.load377)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <8 x i16> %i.ji, ptr %i.jf, align 2, !noalias !5128
  store <8 x i16> %i.jj, ptr %i.jk, align 2, !noalias !5128
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !5097

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.it, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jm = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jn = add i64 %i.jm, %i.iu                    ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jn
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jm
  %wide.load380 = load <4 x i16>, ptr %i.jo, align 2, !noalias !5128
  %wide.load381 = load <4 x i16>, ptr %i.jp, align 2, !noalias !5128
  %i.jr = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load380, <4 x i16> %wide.load381)
  store <4 x i16> %i.jr, ptr %i.jq, align 2, !noalias !5128
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.js, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5098

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.it, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jt = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.ju = add i64 %.val6.i.i, %i.jt
  %xtraiter448 = and i64 %7, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.jv = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jw = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i16, ptr %i.jy, align 2, !noalias !5128, !noundef !5
  %i.kc = load i16, ptr %i.jz, align 2, !noalias !5128, !noundef !5
  %..i.i.i.i.i.prol = call i16 @llvm.smax.i16(i16 %i.kb, i16 %i.kc)
  store i16 %..i.i.i.i.i.prol, ptr %i.ka, align 2, !noalias !5128
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jv, %vec.epilog.scalar.ph.prol ]
  %i.kd = icmp eq i64 %i.ju, %.val.i.i
  br i1 %i.kd, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.kl, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ke = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kf = add i64 %i.ke, %i.iu                    ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kf
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ke
  %i.kj = load i16, ptr %i.kg, align 2, !noalias !5128, !noundef !5
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !5128, !noundef !5
  %..i.i.i.i.i = call i16 @llvm.smax.i16(i16 %i.kj, i16 %i.kk)
  store i16 %..i.i.i.i.i, ptr %i.ki, align 2, !noalias !5128
  %i.kl = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.km = add i64 %.reass459, %i.iu               ; 2 uses
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.km
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.km
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %.reass459
  %i.kq = load i16, ptr %i.kn, align 2, !noalias !5128, !noundef !5
  %i.kr = load i16, ptr %i.ko, align 2, !noalias !5128, !noundef !5
  %..i.i.i.i.i.1 = call i16 @llvm.smax.i16(i16 %i.kq, i16 %i.kr)
  store i16 %..i.i.i.i.i.1, ptr %i.kp, align 2, !noalias !5128
  %exitcond.not.i.i.1 = icmp eq i64 %i.kl, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !5099

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ks = add i64 %.sroa.0.0157, %i.x
  %i.kt = load i64, ptr %i.ac, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.ku = icmp eq i64 %i.kt, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ku, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kw = load i16, ptr %i.kv, align 2, !noundef !5 ; 5 uses
  %i.kx = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kx, %4
  %or.cond58 = or i1 %i.ky, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kz = phi i64 [ %i.np, %bb.v ], [ %i.nf, %bb.t ], [ %i.nm, %.lr.ph156 ], [ %i.nr, %bb.w ], [ %i.ne, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.la = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.lb = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef %i.la, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lb) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.lc = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.ld = icmp ult i64 %i.lc, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.lc, %i.n
  %or.cond59 = or i1 %i.ld, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5129
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %i.x
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEINtBZ_7IterMutsEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.le, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull align 2 %i.lf, ptr noundef nonnull %i.lh)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5130)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !5130, !noalias !5131, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !5130, !noalias !5131, !noundef !5 ; 4 uses
  %i.li = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !5132, !noalias !5131, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5132, !noalias !5131, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.li, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lj = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lj, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.li, 16
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lk = and i64 %i.li, 12
  %n.vec392 = and i64 %i.li, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kw, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.ll = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ll ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load395 = load <8 x i16>, ptr %i.lm, align 2, !noalias !5130
  %wide.load396 = load <8 x i16>, ptr %i.lo, align 2, !noalias !5130
  %i.lp = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load395, <8 x i16> %broadcast.splat)
  %i.lq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load396, <8 x i16> %broadcast.splat)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store <8 x i16> %i.lp, ptr %i.ln, align 2, !alias.scope !5133, !noalias !5130
  store <8 x i16> %i.lq, ptr %i.lr, align 2, !alias.scope !5133, !noalias !5130
  %index.next397 = add nuw i64 %index394, 16      ; 2 uses
  %i.ls = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.ls, label %middle.block398, label %vector.body393, !llvm.loop !5114

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.li, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !20

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.li, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i16> poison, i16 %i.kw, i64 0
  %broadcast.splat408 = shufflevector <4 x i16> %broadcast.splatinsert407, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lt = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt
  %wide.load411 = load <4 x i16>, ptr %i.lu, align 2, !noalias !5130
  %i.lw = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load411, <4 x i16> %broadcast.splat408)
  store <4 x i16> %i.lw, ptr %i.lv, align 2, !alias.scope !5133, !noalias !5130
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lx, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !5115

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.li, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ly = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lz = add i64 %.val6.i.i63, %i.ly
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.ma = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.mb = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mb
  %.val8.i.i.prol = load i16, ptr %i.mc, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67.prol = call i16 @llvm.smax.i16(i16 %.val8.i.i.prol, i16 %i.kw)
  store i16 %..i.i.i.i.i67.prol, ptr %i.md, align 2, !alias.scope !5133, !noalias !5130
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.ma, %vec.epilog.scalar.ph402.prol ]
  %i.me = icmp eq i64 %i.lz, %.val.i.i62
  br i1 %i.me, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mi, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mf = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mf
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mf
  %.val8.i.i = load i16, ptr %i.mg, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67 = call i16 @llvm.smax.i16(i16 %.val8.i.i, i16 %i.kw)
  store i16 %..i.i.i.i.i67, ptr %i.mh, align 2, !alias.scope !5133, !noalias !5130
  %i.mi = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.mj, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67.1 = call i16 @llvm.smax.i16(i16 %.val8.i.i.1, i16 %i.kw)
  store i16 %..i.i.i.i.i67.1, ptr %i.mk, align 2, !alias.scope !5133, !noalias !5130
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mi, %i.li
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !5116

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5129
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.ml = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.ml, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mn = load i16, ptr %i.mm, align 2, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mo = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mp = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mq = sub i64 %i.mp, %i.av
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mq, i64 %i.mo)
  %i.ms = call i64 @llvm.umin.i64(i64 %i.mr, i64 %i.at) ; 2 uses
  %i.mt = add nuw nsw i64 %i.ms, 1                ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.ms, 8
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.mu = shl i64 %.sroa.4.0.copyload, 1
  %i.mv = add i64 %i.aw, %i.r
  %i.mw = add i64 %i.mu, %i.a
  %i.mx = sub i64 %i.mw, %i.mv
  %diff.check417 = icmp ugt i64 %i.mx, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.my = and i64 %i.mt, 7                        ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0
  %i.na = select i1 %i.mz, i64 8, i64 %i.my
  %n.vec420 = sub nsw i64 %i.mt, %i.na            ; 2 uses
  %broadcast.splatinsert421 = insertelement <8 x i16> poison, i16 %i.mn, i64 0
  %broadcast.splat422 = shufflevector <8 x i16> %broadcast.splatinsert421, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index424
  %wide.load425 = load <8 x i16>, ptr %gep, align 2
  %i.nb = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %broadcast.splat422, <8 x i16> %wide.load425)
  %gep457 = getelementptr [2 x i8], ptr %invariant.gep456, i64 %index424
  store <8 x i16> %i.nb, ptr %gep457, align 2
  %index.next426 = add nuw i64 %index424, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.nc, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !5117

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.nd, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.nd = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.ne = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mo
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nf = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %i.n
  br i1 %i.ng, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ne
  %i.ni = load i16, ptr %i.nh, align 2, !noundef !5
  %..i.i = call noundef i16 @llvm.smax.i16(i16 %i.mn, i16 %i.ni)
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nf
  store i16 %..i.i, ptr %i.nj, align 2
  %exitcond242.not = icmp eq i64 %i.nd, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5118

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nk, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nk = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nl = mul i64 %.sroa.022.0155, %i.z
  %i.nm = add i64 %i.nl, %.sroa.071.0.copyload    ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %4
  br i1 %i.nn, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.no = mul i64 %.sroa.022.0155, %i.ab
  %i.np = add i64 %i.no, %.sroa.4.0.copyload      ; 3 uses
  %i.nq = icmp ult i64 %i.np, %6
  br i1 %i.nq, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nr = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %i.n
  br i1 %i.ns, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.nm
  %i.nu = load i16, ptr %i.nt, align 2, !noundef !5
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.np
  %i.nw = load i16, ptr %i.nv, align 2, !noundef !5
  %..i.i70 = call noundef i16 @llvm.smax.i16(i16 %i.nu, i16 %i.nw)
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nr
  store i16 %..i.i70, ptr %i.nx, align 2
  %exitcond243.not = icmp eq i64 %i.nk, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8
end_hunk_14
begin_hunk_15_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit79.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !5184, !noalias !5185
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit79.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.kx, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.lc, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5186
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5187
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItersEB10_EINtB13_7IterMutsEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5187
  call void @llvm.experimental.noalias.scope.decl(metadata !5188)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !5188, !noalias !5189, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !5188, !noalias !5189, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !5190, !noalias !5191, !noundef !5 ; 6 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5190, !noalias !5191, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !5190, !noalias !5191, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !5192, !noalias !5191, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.it, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.it, 16
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ja = and i64 %i.it, 12
  %n.vec = and i64 %i.it, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jb = add i64 %index, %.val.i.i               ; 2 uses
  %i.jc = add i64 %i.jb, %i.iu                    ; 2 uses
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jb ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load = load <8 x i16>, ptr %i.jd, align 2, !noalias !5193
  %wide.load375 = load <8 x i16>, ptr %i.jg, align 2, !noalias !5193
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load376 = load <8 x i16>, ptr %i.je, align 2, !noalias !5193
  %wide.load377 = load <8 x i16>, ptr %i.jh, align 2, !noalias !5193
  %i.ji = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load376)
  %i.jj = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load375, <8 x i16> %wide.load377)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <8 x i16> %i.ji, ptr %i.jf, align 2, !noalias !5193
  store <8 x i16> %i.jj, ptr %i.jk, align 2, !noalias !5193
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !5162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.it, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jm = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jn = add i64 %i.jm, %i.iu                    ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jn
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jm
  %wide.load380 = load <4 x i16>, ptr %i.jo, align 2, !noalias !5193
  %wide.load381 = load <4 x i16>, ptr %i.jp, align 2, !noalias !5193
  %i.jr = call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load380, <4 x i16> %wide.load381)
  store <4 x i16> %i.jr, ptr %i.jq, align 2, !noalias !5193
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.js, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.it, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jt = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.ju = add i64 %.val6.i.i, %i.jt
  %xtraiter448 = and i64 %7, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.jv = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jw = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i16, ptr %i.jy, align 2, !noalias !5193, !noundef !5
  %i.kc = load i16, ptr %i.jz, align 2, !noalias !5193, !noundef !5
  %..i.i.i.i.i.prol = call i16 @llvm.smin.i16(i16 %i.kb, i16 %i.kc)
  store i16 %..i.i.i.i.i.prol, ptr %i.ka, align 2, !noalias !5193
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jv, %vec.epilog.scalar.ph.prol ]
  %i.kd = icmp eq i64 %i.ju, %.val.i.i
  br i1 %i.kd, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.kl, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ke = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kf = add i64 %i.ke, %i.iu                    ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kf
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ke
  %i.kj = load i16, ptr %i.kg, align 2, !noalias !5193, !noundef !5
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !5193, !noundef !5
  %..i.i.i.i.i = call i16 @llvm.smin.i16(i16 %i.kj, i16 %i.kk)
  store i16 %..i.i.i.i.i, ptr %i.ki, align 2, !noalias !5193
  %i.kl = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.km = add i64 %.reass459, %i.iu               ; 2 uses
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.km
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.km
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %.reass459
  %i.kq = load i16, ptr %i.kn, align 2, !noalias !5193, !noundef !5
  %i.kr = load i16, ptr %i.ko, align 2, !noalias !5193, !noundef !5
  %..i.i.i.i.i.1 = call i16 @llvm.smin.i16(i16 %i.kq, i16 %i.kr)
  store i16 %..i.i.i.i.i.1, ptr %i.kp, align 2, !noalias !5193
  %exitcond.not.i.i.1 = icmp eq i64 %i.kl, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !5164

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5186
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ks = add i64 %.sroa.0.0157, %i.x
  %i.kt = load i64, ptr %i.ac, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.ku = icmp eq i64 %i.kt, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ku, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kw = load i16, ptr %i.kv, align 2, !noundef !5 ; 5 uses
  %i.kx = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kx, %4
  %or.cond58 = or i1 %i.ky, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kz = phi i64 [ %i.np, %bb.v ], [ %i.nf, %bb.t ], [ %i.nm, %.lr.ph156 ], [ %i.nr, %bb.w ], [ %i.ne, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.la = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.lb = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef %i.la, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lb) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.lc = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.ld = icmp ult i64 %i.lc, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.lc, %i.n
  %or.cond59 = or i1 %i.ld, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5194
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %i.x
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEINtBZ_7IterMutsEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.le, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull align 2 %i.lf, ptr noundef nonnull %i.lh)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5195)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !5195, !noalias !5196, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !5195, !noalias !5196, !noundef !5 ; 4 uses
  %i.li = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !5197, !noalias !5196, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5197, !noalias !5196, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.li, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lj = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lj, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.li, 16
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lk = and i64 %i.li, 12
  %n.vec392 = and i64 %i.li, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kw, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.ll = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ll ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load395 = load <8 x i16>, ptr %i.lm, align 2, !noalias !5195
  %wide.load396 = load <8 x i16>, ptr %i.lo, align 2, !noalias !5195
  %i.lp = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load395, <8 x i16> %broadcast.splat)
  %i.lq = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load396, <8 x i16> %broadcast.splat)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store <8 x i16> %i.lp, ptr %i.ln, align 2, !alias.scope !5198, !noalias !5195
  store <8 x i16> %i.lq, ptr %i.lr, align 2, !alias.scope !5198, !noalias !5195
  %index.next397 = add nuw i64 %index394, 16      ; 2 uses
  %i.ls = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.ls, label %middle.block398, label %vector.body393, !llvm.loop !5179

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.li, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !20

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.li, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i16> poison, i16 %i.kw, i64 0
  %broadcast.splat408 = shufflevector <4 x i16> %broadcast.splatinsert407, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lt = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt
  %wide.load411 = load <4 x i16>, ptr %i.lu, align 2, !noalias !5195
  %i.lw = call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load411, <4 x i16> %broadcast.splat408)
  store <4 x i16> %i.lw, ptr %i.lv, align 2, !alias.scope !5198, !noalias !5195
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lx, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !5180

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.li, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %8 = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ly = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lz = add i64 %.val6.i.i63, %i.ly
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.ma = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.mb = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mb
  %.val8.i.i.prol = load i16, ptr %i.mc, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67.prol = call i16 @llvm.smin.i16(i16 %.val8.i.i.prol, i16 %i.kw)
  store i16 %..i.i.i.i.i67.prol, ptr %i.md, align 2, !alias.scope !5198, !noalias !5195
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.ma, %vec.epilog.scalar.ph402.prol ]
  %i.me = icmp eq i64 %i.lz, %.val.i.i62
  br i1 %i.me, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mi, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mf = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mf
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mf
  %.val8.i.i = load i16, ptr %i.mg, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67 = call i16 @llvm.smin.i16(i16 %.val8.i.i, i16 %i.kw)
  store i16 %..i.i.i.i.i67, ptr %i.mh, align 2, !alias.scope !5198, !noalias !5195
  %i.mi = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.mj, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67.1 = call i16 @llvm.smin.i16(i16 %.val8.i.i.1, i16 %i.kw)
  store i16 %..i.i.i.i.i67.1, ptr %i.mk, align 2, !alias.scope !5198, !noalias !5195
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mi, %i.li
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !5181

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5194
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.ml = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.ml, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mn = load i16, ptr %i.mm, align 2, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mo = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mp = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mq = sub i64 %i.mp, %i.av
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mq, i64 %i.mo)
  %i.ms = call i64 @llvm.umin.i64(i64 %i.mr, i64 %i.at) ; 2 uses
  %i.mt = add nuw nsw i64 %i.ms, 1                ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.ms, 8
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.mu = shl i64 %.sroa.4.0.copyload, 1
  %i.mv = add i64 %i.aw, %i.r
  %i.mw = add i64 %i.mu, %i.a
  %i.mx = sub i64 %i.mw, %i.mv
  %diff.check417 = icmp ugt i64 %i.mx, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.my = and i64 %i.mt, 7                        ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0
  %i.na = select i1 %i.mz, i64 8, i64 %i.my
  %n.vec420 = sub nsw i64 %i.mt, %i.na            ; 2 uses
  %broadcast.splatinsert421 = insertelement <8 x i16> poison, i16 %i.mn, i64 0
  %broadcast.splat422 = shufflevector <8 x i16> %broadcast.splatinsert421, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index424
  %wide.load425 = load <8 x i16>, ptr %gep, align 2
  %i.nb = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %broadcast.splat422, <8 x i16> %wide.load425)
  %gep457 = getelementptr [2 x i8], ptr %invariant.gep456, i64 %index424
  store <8 x i16> %i.nb, ptr %gep457, align 2
  %index.next426 = add nuw i64 %index424, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.nc, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !5182

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.nd, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.nd = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.ne = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mo
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nf = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %i.n
  br i1 %i.ng, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ne
  %i.ni = load i16, ptr %i.nh, align 2, !noundef !5
  %..i.i = call noundef i16 @llvm.smin.i16(i16 %i.mn, i16 %i.ni)
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nf
  store i16 %..i.i, ptr %i.nj, align 2
  %exitcond242.not = icmp eq i64 %i.nd, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5183

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nk, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nk = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nl = mul i64 %.sroa.022.0155, %i.z
  %i.nm = add i64 %i.nl, %.sroa.071.0.copyload    ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %4
  br i1 %i.nn, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.no = mul i64 %.sroa.022.0155, %i.ab
  %i.np = add i64 %i.no, %.sroa.4.0.copyload      ; 3 uses
  %i.nq = icmp ult i64 %i.np, %6
  br i1 %i.nq, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nr = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %i.n
  br i1 %i.ns, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.nm
  %i.nu = load i16, ptr %i.nt, align 2, !noundef !5
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.np
  %i.nw = load i16, ptr %i.nv, align 2, !noundef !5
  %..i.i70 = call noundef i16 @llvm.smin.i16(i16 %i.nu, i16 %i.nw)
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nr
  store i16 %..i.i70, ptr %i.nx, align 2
  %exitcond243.not = icmp eq i64 %i.nk, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8
end_hunk_15
begin_hunk_16_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit78.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !5247, !noalias !5248
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit78.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit78.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !5247, !noalias !5248
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit78.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit78.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !5247, !noalias !5248
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !5247, !noalias !5248
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  br label %.loopexit78.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit78.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload246 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.070.0.copyload243 = phi i64 [ %.sroa.070.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit78.split.us
  br i1 %.not159, label %.loopexit, label %.lr.ph155

bb.h:                                             ; preds = %.loopexit78.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit78.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.070.0.copyload
  %.not52 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not52
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke350

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not53 = icmp ugt i64 %i.ig, %6
  %or.cond55 = or i1 %i.ih, %.not53
  br i1 %or.cond55, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.070.0.copyload, %bb.o ], [ %.sroa.070.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0156, %bb.m ], [ %.sroa.0.0156, %bb.p ]
  %i.ij = phi i64 [ %i.kp, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ku, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0156
  %.not54 = icmp ugt i64 %i.im, %i.n
  %or.cond56 = or i1 %i.in, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5249
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5250
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 8 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc59 unwind label %.loopexit79

.noexc59:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterxEB10_EINtB13_7IterMutxEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc60 unwind label %.loopexit79

.noexc60:                                         ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5250
  call void @llvm.experimental.noalias.scope.decl(metadata !5251)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !5251, !noalias !5252, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !5251, !noalias !5252, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !5253, !noalias !5254, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5253, !noalias !5254, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !5253, !noalias !5254, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !5255, !noalias !5254, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i369 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i371 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i370 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 3                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i370
  %i.ix = sub i64 %i.iw, %.val.i.i.i369
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i371
  %i.iz = sub i64 %i.iy, %.val.i.i.i369
  %diff.check372 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check372
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <2 x i64>, ptr %i.jc, align 8, !noalias !5256
  %wide.load373 = load <2 x i64>, ptr %i.jf, align 8, !noalias !5256
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load374 = load <2 x i64>, ptr %i.jd, align 8, !noalias !5256
  %wide.load375 = load <2 x i64>, ptr %i.jg, align 8, !noalias !5256
  %i.jh = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load374)
  %i.ji = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load373, <2 x i64> %wide.load375)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <2 x i64> %i.jh, ptr %i.je, align 8, !noalias !5256
  store <2 x i64> %i.ji, ptr %i.jj, align 8, !noalias !5256
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !5227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jl = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jm = add i64 %.val6.i.i, %i.jl
  %xtraiter426 = and i64 %7, 1
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jn = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jo = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jp
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jo
  %i.jt = load i64, ptr %i.jq, align 8, !noalias !5256, !noundef !5
  %i.ju = load i64, ptr %i.jr, align 8, !noalias !5256, !noundef !5
  %..i.i.i.i.i.prol = call i64 @llvm.smax.i64(i64 %i.jt, i64 %i.ju)
  store i64 %..i.i.i.i.i.prol, ptr %i.js, align 8, !noalias !5256
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %i.jv = icmp eq i64 %i.jm, %.val.i.i
  br i1 %i.jv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op436 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jw = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i64, ptr %i.jy, align 8, !noalias !5256, !noundef !5
  %i.kc = load i64, ptr %i.jz, align 8, !noalias !5256, !noundef !5
  %..i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.kb, i64 %i.kc)
  store i64 %..i.i.i.i.i, ptr %i.ka, align 8, !noalias !5256
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass437 = add i64 %.sroa.0.012.i.i, %invariant.op436 ; 2 uses
  %i.ke = add i64 %.reass437, %i.iu               ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass437
  %i.ki = load i64, ptr %i.kf, align 8, !noalias !5256, !noundef !5
  %i.kj = load i64, ptr %i.kg, align 8, !noalias !5256, !noundef !5
  %..i.i.i.i.i.1 = call i64 @llvm.smax.i64(i64 %i.ki, i64 %i.kj)
  store i64 %..i.i.i.i.i.1, ptr %i.kh, align 8, !noalias !5256
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !5228

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5249
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kk = add i64 %.sroa.0.0156, %i.x
  %i.kl = load i64, ptr %i.ac, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i64, ptr %i.kn, align 8, !noundef !5 ; 4 uses
  %i.kp = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond57 = or i1 %i.kq, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.kr = phi i64 [ %i.ne, %bb.v ], [ %i.mu, %bb.t ], [ %i.nb, %.lr.ph155 ], [ %i.ng, %bb.w ], [ %i.mt, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ks = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph155 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kt = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kr, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ku = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.ku, %i.n
  %or.cond58 = or i1 %i.kv, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5257
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.x
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutxEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 %i.kw, ptr noundef nonnull readonly %i.ky, ptr noundef nonnull align 8 %i.kx, ptr noundef nonnull %i.kz)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5258)
  %.val.i.i61 = load i64, ptr %i.ak, align 8, !alias.scope !5258, !noalias !5259, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.al, align 8, !alias.scope !5258, !noalias !5259, !noundef !5 ; 4 uses
  %i.la = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.b, align 8, !alias.scope !5260, !noalias !5259, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5260, !noalias !5259, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.la, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.lb = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.lb, -32
  %or.cond407 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond407, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.la, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ko, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.lc = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load386 = load <2 x i64>, ptr %i.ld, align 8, !noalias !5258
  %wide.load387 = load <2 x i64>, ptr %i.lf, align 8, !noalias !5258
  %i.lg = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load386, <2 x i64> %broadcast.splat)
  %i.lh = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load387, <2 x i64> %broadcast.splat)
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <2 x i64> %i.lg, ptr %i.le, align 8, !alias.scope !5261, !noalias !5258
  store <2 x i64> %i.lh, ptr %i.li, align 8, !alias.scope !5261, !noalias !5258
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lj = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lj, label %middle.block389, label %vector.body384, !llvm.loop !5243

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.la, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %8 = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lk = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ll = add i64 %.val6.i.i62, %i.lk
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lm = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ln = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.ln
  %.val8.i.i.prol = load i64, ptr %i.lo, align 8, !noalias !5258, !noundef !5
  %..i.i.i.i.i66.prol = call i64 @llvm.smax.i64(i64 %.val8.i.i.prol, i64 %i.ko)
  store i64 %..i.i.i.i.i66.prol, ptr %i.lp, align 8, !alias.scope !5261, !noalias !5258
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lm, %scalar.ph380.prol ]
  %i.lq = icmp eq i64 %i.ll, %.val.i.i61
  br i1 %i.lq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.lu, %scalar.ph380 ] ; 3 uses
  %i.lr = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i = load i64, ptr %i.ls, align 8, !noalias !5258, !noundef !5
  %..i.i.i.i.i66 = call i64 @llvm.smax.i64(i64 %.val8.i.i, i64 %i.ko)
  store i64 %..i.i.i.i.i66, ptr %i.lt, align 8, !alias.scope !5261, !noalias !5258
  %i.lu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i64, ptr %i.lv, align 8, !noalias !5258, !noundef !5
  %..i.i.i.i.i66.1 = call i64 @llvm.smax.i64(i64 %.val8.i.i.1, i64 %i.ko)
  store i64 %..i.i.i.i.i66.1, ptr %i.lw, align 8, !alias.scope !5261, !noalias !5258
  %exitcond.not.i.i67.1 = icmp eq i64 %i.lu, %i.la
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !5244

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5257
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lx = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.lx, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.lz = load i64, ptr %i.ly, align 8, !noundef !5 ; 2 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ma = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mb = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0156)
  %i.mc = sub i64 %i.mb, %i.av
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 %i.ma)
  %i.me = call i64 @llvm.umin.i64(i64 %i.md, i64 %i.at) ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check395 = icmp samesign ult i64 %i.me, 4
  br i1 %min.iters.check395, label %.lr.ph.preheader410, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.preheader
  %i.mg = shl i64 %.sroa.4.0.copyload, 3
  %i.mh = add i64 %i.aw, %i.r
  %i.mi = add i64 %i.mg, %i.a
  %i.mj = sub i64 %i.mi, %i.mh
  %diff.check393 = icmp ugt i64 %i.mj, -32
  br i1 %diff.check393, label %.lr.ph.preheader410, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %i.mk = and i64 %i.mf, 3                        ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = select i1 %i.ml, i64 4, i64 %i.mk
  %n.vec397 = sub nsw i64 %i.mf, %i.mm            ; 2 uses
  %broadcast.splatinsert398 = insertelement <2 x i64> poison, i64 %i.lz, i64 0
  %broadcast.splat399 = shufflevector <2 x i64> %broadcast.splatinsert398, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep434 = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.0.0156
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph396
  %index401 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body400 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index401 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load402 = load <2 x i64>, ptr %gep, align 8
  %wide.load403 = load <2 x i64>, ptr %i.mn, align 8
  %i.mo = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %broadcast.splat399, <2 x i64> %wide.load402)
  %i.mp = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %broadcast.splat399, <2 x i64> %wide.load403)
  %gep435 = getelementptr [8 x i8], ptr %invariant.gep434, i64 %index401 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep435, i64 16
  store <2 x i64> %i.mo, ptr %gep435, align 8
  store <2 x i64> %i.mp, ptr %i.mq, align 8
  %index.next404 = add nuw i64 %index401, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.mr, label %.lr.ph.preheader410, label %vector.body400, !llvm.loop !5245

.lr.ph.preheader410:                              ; preds = %vector.body400, %vector.memcheck392, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %vector.memcheck392 ], [ 0, %.lr.ph.preheader ], [ %n.vec397, %vector.body400 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader410, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.ms, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader410 ] ; 4 uses
  %i.ms = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.mt = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.ma
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mu = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.n
  br i1 %i.mv, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mt
  %i.mx = load i64, ptr %i.mw, align 8, !noundef !5
  %..i.i = call noundef i64 @llvm.smax.i64(i64 %i.lz, i64 %i.mx)
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.mu
  store i64 %..i.i, ptr %i.my, align 8
  %exitcond241.not = icmp eq i64 %i.ms, %i.x
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !5246

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.mz, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.na = mul i64 %.sroa.021.0154, %i.z
  %i.nb = add i64 %i.na, %.sroa.070.0.copyload    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %4
  br i1 %i.nc, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.nd = mul i64 %.sroa.021.0154, %i.ab
  %i.ne = add i64 %i.nd, %.sroa.4.0.copyload      ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %6
  br i1 %i.nf, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.ng = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.nb
  %i.nj = load i64, ptr %i.ni, align 8, !noundef !5
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ne
  %i.nl = load i64, ptr %i.nk, align 8, !noundef !5
  %..i.i69 = call noundef i64 @llvm.smax.i64(i64 %i.nj, i64 %i.nl)
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ng
  store i64 %..i.i69, ptr %i.nm, align 8
  %exitcond242.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [312 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.k = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.n, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.t, align 8
end_hunk_16
begin_hunk_17_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us.5 = getelementptr [8 x i8], ptr %i.f, i64 %i.fk ; 3 uses
  %i.fo = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fp = load i64, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us.5 = getelementptr i8, ptr %invariant.gep.i.us.5, i64 64 ; 2 uses
  %i.fr = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fs = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.fu = load i64, ptr %i.fl, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.fk ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.loopexit78.split.us, label %.loopexit.i.us.5

.loopexit.i.us.5:                                 ; preds = %.lr.ph.i.split.us.5
  store i64 0, ptr %i.fl, align 8, !alias.scope !5310, !noalias !5311
  %i.fy = load i64, ptr %invariant.gep.i.us.5, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load i64, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gb = sub i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311
  %i.gc = load i64, ptr %i.fv, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gd = load i64, ptr %gep.1.i.us.5, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ge = mul i64 %i.gd, %i.gc
  %i.gf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %.not.i.us.5 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.us.5, label %.loopexit78.split.us, label %.lr.ph.i.split.us.6

.lr.ph.i.split.us.6:                              ; preds = %.loopexit.i.us.5
  %i.gh = add nsw i64 %i.ay, -7                   ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gh ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit78.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !5310, !noalias !5311
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit78.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit78.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !5310, !noalias !5311
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !5310, !noalias !5311
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  br label %.loopexit78.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit78.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload246 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.070.0.copyload243 = phi i64 [ %.sroa.070.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit78.split.us
  br i1 %.not159, label %.loopexit, label %.lr.ph155

bb.h:                                             ; preds = %.loopexit78.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit78.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.070.0.copyload
  %.not52 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not52
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke350

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not53 = icmp ugt i64 %i.ig, %6
  %or.cond55 = or i1 %i.ih, %.not53
  br i1 %or.cond55, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.070.0.copyload, %bb.o ], [ %.sroa.070.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0156, %bb.m ], [ %.sroa.0.0156, %bb.p ]
  %i.ij = phi i64 [ %i.kp, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ku, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0156
  %.not54 = icmp ugt i64 %i.im, %i.n
  %or.cond56 = or i1 %i.in, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5312
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5313
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 8 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc59 unwind label %.loopexit79

.noexc59:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterxEB10_EINtB13_7IterMutxEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc60 unwind label %.loopexit79

.noexc60:                                         ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5313
  call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !5314, !noalias !5315, !noundef !5 ; 8 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !5314, !noalias !5315, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !5316, !noalias !5317, !noundef !5 ; 5 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5316, !noalias !5317, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !5316, !noalias !5317, !nonnull !5, !noundef !5 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !5318, !noalias !5317, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i369 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i371 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i370 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 3                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i370
  %i.ix = sub i64 %i.iw, %.val.i.i.i369
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i371
  %i.iz = sub i64 %i.iy, %.val.i.i.i369
  %diff.check372 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check372
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load = load <2 x i64>, ptr %i.jc, align 8, !noalias !5319
  %wide.load373 = load <2 x i64>, ptr %i.jf, align 8, !noalias !5319
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load374 = load <2 x i64>, ptr %i.jd, align 8, !noalias !5319
  %wide.load375 = load <2 x i64>, ptr %i.jg, align 8, !noalias !5319
  %i.jh = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load374)
  %i.ji = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load373, <2 x i64> %wide.load375)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <2 x i64> %i.jh, ptr %i.je, align 8, !noalias !5319
  store <2 x i64> %i.ji, ptr %i.jj, align 8, !noalias !5319
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !5290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %7 = sub i64 %.val6.i.i, %.val.i.i
  %i.jl = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jm = add i64 %.val6.i.i, %i.jl
  %xtraiter426 = and i64 %7, 1
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jn = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jo = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jp
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jo
  %i.jt = load i64, ptr %i.jq, align 8, !noalias !5319, !noundef !5
  %i.ju = load i64, ptr %i.jr, align 8, !noalias !5319, !noundef !5
  %..i.i.i.i.i.prol = call i64 @llvm.smin.i64(i64 %i.jt, i64 %i.ju)
  store i64 %..i.i.i.i.i.prol, ptr %i.js, align 8, !noalias !5319
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %i.jv = icmp eq i64 %i.jm, %.val.i.i
  br i1 %i.jv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op436 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jw = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jx = add i64 %i.jw, %i.iu                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jw
  %i.kb = load i64, ptr %i.jy, align 8, !noalias !5319, !noundef !5
  %i.kc = load i64, ptr %i.jz, align 8, !noalias !5319, !noundef !5
  %..i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.kb, i64 %i.kc)
  store i64 %..i.i.i.i.i, ptr %i.ka, align 8, !noalias !5319
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass437 = add i64 %.sroa.0.012.i.i, %invariant.op436 ; 2 uses
  %i.ke = add i64 %.reass437, %i.iu               ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass437
  %i.ki = load i64, ptr %i.kf, align 8, !noalias !5319, !noundef !5
  %i.kj = load i64, ptr %i.kg, align 8, !noalias !5319, !noundef !5
  %..i.i.i.i.i.1 = call i64 @llvm.smin.i64(i64 %i.ki, i64 %i.kj)
  store i64 %..i.i.i.i.i.1, ptr %i.kh, align 8, !noalias !5319
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !5291

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5312
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kk = add i64 %.sroa.0.0156, %i.x
  %i.kl = load i64, ptr %i.ac, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i64, ptr %i.kn, align 8, !noundef !5 ; 4 uses
  %i.kp = add i64 %.sroa.070.0.copyload, %i.x     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond57 = or i1 %i.kq, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.kr = phi i64 [ %i.ne, %bb.v ], [ %i.mu, %bb.t ], [ %i.nb, %.lr.ph155 ], [ %i.ng, %bb.w ], [ %i.mt, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ks = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph155 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kt = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kr, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ku = add i64 %.sroa.0.0156, %i.x             ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.ku, %i.n
  %or.cond58 = or i1 %i.kv, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5320
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.x
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutxEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 %i.kw, ptr noundef nonnull readonly %i.ky, ptr noundef nonnull align 8 %i.kx, ptr noundef nonnull %i.kz)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5321)
  %.val.i.i61 = load i64, ptr %i.ak, align 8, !alias.scope !5321, !noalias !5322, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.al, align 8, !alias.scope !5321, !noalias !5322, !noundef !5 ; 4 uses
  %i.la = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.b, align 8, !alias.scope !5323, !noalias !5322, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5323, !noalias !5322, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.la, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.lb = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.lb, -32
  %or.cond407 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond407, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.la, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ko, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.lc = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load386 = load <2 x i64>, ptr %i.ld, align 8, !noalias !5321
  %wide.load387 = load <2 x i64>, ptr %i.lf, align 8, !noalias !5321
  %i.lg = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load386, <2 x i64> %broadcast.splat)
  %i.lh = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load387, <2 x i64> %broadcast.splat)
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <2 x i64> %i.lg, ptr %i.le, align 8, !alias.scope !5324, !noalias !5321
  store <2 x i64> %i.lh, ptr %i.li, align 8, !alias.scope !5324, !noalias !5321
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lj = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lj, label %middle.block389, label %vector.body384, !llvm.loop !5306

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.la, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %8 = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lk = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ll = add i64 %.val6.i.i62, %i.lk
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lm = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ln = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.ln
  %.val8.i.i.prol = load i64, ptr %i.lo, align 8, !noalias !5321, !noundef !5
  %..i.i.i.i.i66.prol = call i64 @llvm.smin.i64(i64 %.val8.i.i.prol, i64 %i.ko)
  store i64 %..i.i.i.i.i66.prol, ptr %i.lp, align 8, !alias.scope !5324, !noalias !5321
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lm, %scalar.ph380.prol ]
  %i.lq = icmp eq i64 %i.ll, %.val.i.i61
  br i1 %i.lq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.lu, %scalar.ph380 ] ; 3 uses
  %i.lr = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i = load i64, ptr %i.ls, align 8, !noalias !5321, !noundef !5
  %..i.i.i.i.i66 = call i64 @llvm.smin.i64(i64 %.val8.i.i, i64 %i.ko)
  store i64 %..i.i.i.i.i66, ptr %i.lt, align 8, !alias.scope !5324, !noalias !5321
  %i.lu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i64, ptr %i.lv, align 8, !noalias !5321, !noundef !5
  %..i.i.i.i.i66.1 = call i64 @llvm.smin.i64(i64 %.val8.i.i.1, i64 %i.ko)
  store i64 %..i.i.i.i.i66.1, ptr %i.lw, align 8, !alias.scope !5324, !noalias !5321
  %exitcond.not.i.i67.1 = icmp eq i64 %i.lu, %i.la
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !5307

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5320
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lx = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.lx, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.lz = load i64, ptr %i.ly, align 8, !noundef !5 ; 2 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ma = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mb = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0156)
  %i.mc = sub i64 %i.mb, %i.av
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 %i.ma)
  %i.me = call i64 @llvm.umin.i64(i64 %i.md, i64 %i.at) ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check395 = icmp samesign ult i64 %i.me, 4
  br i1 %min.iters.check395, label %.lr.ph.preheader410, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.preheader
  %i.mg = shl i64 %.sroa.4.0.copyload, 3
  %i.mh = add i64 %i.aw, %i.r
  %i.mi = add i64 %i.mg, %i.a
  %i.mj = sub i64 %i.mi, %i.mh
  %diff.check393 = icmp ugt i64 %i.mj, -32
  br i1 %diff.check393, label %.lr.ph.preheader410, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %i.mk = and i64 %i.mf, 3                        ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = select i1 %i.ml, i64 4, i64 %i.mk
  %n.vec397 = sub nsw i64 %i.mf, %i.mm            ; 2 uses
  %broadcast.splatinsert398 = insertelement <2 x i64> poison, i64 %i.lz, i64 0
  %broadcast.splat399 = shufflevector <2 x i64> %broadcast.splatinsert398, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep434 = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.0.0156
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph396
  %index401 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body400 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index401 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load402 = load <2 x i64>, ptr %gep, align 8
  %wide.load403 = load <2 x i64>, ptr %i.mn, align 8
  %i.mo = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %broadcast.splat399, <2 x i64> %wide.load402)
  %i.mp = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %broadcast.splat399, <2 x i64> %wide.load403)
  %gep435 = getelementptr [8 x i8], ptr %invariant.gep434, i64 %index401 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep435, i64 16
  store <2 x i64> %i.mo, ptr %gep435, align 8
  store <2 x i64> %i.mp, ptr %i.mq, align 8
  %index.next404 = add nuw i64 %index401, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.mr, label %.lr.ph.preheader410, label %vector.body400, !llvm.loop !5308

.lr.ph.preheader410:                              ; preds = %vector.body400, %vector.memcheck392, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %vector.memcheck392 ], [ 0, %.lr.ph.preheader ], [ %n.vec397, %vector.body400 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader410, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.ms, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader410 ] ; 4 uses
  %i.ms = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.mt = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.ma
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mu = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.n
  br i1 %i.mv, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mt
  %i.mx = load i64, ptr %i.mw, align 8, !noundef !5
  %..i.i = call noundef i64 @llvm.smin.i64(i64 %i.lz, i64 %i.mx)
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.mu
  store i64 %..i.i, ptr %i.my, align 8
  %exitcond241.not = icmp eq i64 %i.ms, %i.x
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !5309

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.mz, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.mz = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.na = mul i64 %.sroa.021.0154, %i.z
  %i.nb = add i64 %i.na, %.sroa.070.0.copyload    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %4
  br i1 %i.nc, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.nd = mul i64 %.sroa.021.0154, %i.ab
  %i.ne = add i64 %i.nd, %.sroa.4.0.copyload      ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %6
  br i1 %i.nf, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.ng = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.n
  br i1 %i.nh, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.nb
  %i.nj = load i64, ptr %i.ni, align 8, !noundef !5
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ne
  %i.nl = load i64, ptr %i.nk, align 8, !noundef !5
  %..i.i69 = call noundef i64 @llvm.smin.i64(i64 %i.nj, i64 %i.nl)
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ng
  store i64 %..i.i69, ptr %i.nm, align 8
  %exitcond242.not = icmp eq i64 %i.mz, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper5audio20log_mel_spectrogram_fEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i1 noundef zeroext %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 8 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [1 x i8], align 1                 ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 2 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %5, ptr %i.x, align 8
  store i64 %6, ptr %i.w, align 8
  store i64 %7, ptr %i.v, align 8
  %i.y = zext i1 %8 to i8
  store i8 %i.y, ptr %i.u, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store float f0x40C90FDB, ptr %i.t, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store float 5.000000e-01, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
end_hunk_17
