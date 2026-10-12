Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.01?download=true
inline.NumInlined: 5635
inline.NumDeleted: 1373
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 334
begin_hunk_0_@_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB7_8UnaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16QB1P_EE8call_mutB9_:bb.a
  %i.bh = icmp ult i16 %i.bg, 31744
  %.sroa.0.0.shrunk.i8.i.i.i = and i1 %.not.i6.i.i.i, %i.bh
  %i.bi = uitofp i1 %.sroa.0.0.shrunk.i8.i.i.i to float ; 2 uses
  %i.bj = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !17541 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.split2.i.i.i, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit11.i.i.i, !prof !7

.split2.i.i.i:                                    ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i.i.i
  %i.bl = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize(), !noalias !17541
  %i.bm = and i128 %i.bl, 18014398509481984
  %.not7.i.i.i = icmp eq i128 %i.bm, 0
  br i1 %.not7.i.i.i, label %bb.m, label %bb.v

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit11.i.i.i: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i.i.i
  %i.bn = and i64 %i.bj, 18014398509481984
  %.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.v

bb.m:                                             ; preds = %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit11.i.i.i, %.split2.i.i.i
  %i.bo = bitcast float %i.bi to i32              ; 7 uses
  %i.bp = and i32 %i.bo, 2139095040               ; 3 uses
  %i.bq = and i32 %i.bo, 8388607                  ; 4 uses
  %i.br = icmp eq i32 %i.bp, 2139095040
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = icmp eq i32 %i.bq, 0
  %..i17.i.i.i = select i1 %i.bs, i32 0, i32 512
  %i.bt = lshr i32 %i.bq, 13
  %i.bu = or i32 %..i17.i.i.i, %i.bt
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  %i.bw = or disjoint i16 %i.bv, 31744
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bx = lshr i32 %i.bo, 23                      ; 2 uses
  %i.by = icmp samesign ugt i32 %i.bp, 1191182336
  br i1 %i.by, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp samesign ult i32 %i.bo, 947912704
  br i1 %i.bz, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = lshr exact i32 %i.bp, 13
  %i.cb = add nuw nsw i32 %i.ca, 16384
  %i.cc = lshr i32 %i.bq, 13
  %i.cd = and i32 %i.bo, 4096
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = and i32 %i.bo, 12287
  %i.cg = icmp ne i32 %i.cf, 0
  %or.cond.not.i12.i.i.i = and i1 %i.ce, %i.cg
  %i.ch = or disjoint i32 %i.cb, %i.cc
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = zext i1 %or.cond.not.i12.i.i.i to i16
  %spec.select7.i13.i.i.i = add i16 %i.ci, %i.cj
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ck = icmp samesign ult i32 %i.bo, 855638016
  br i1 %i.ck, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = sub nsw i32 126, %i.bx
  %i.cm = or disjoint i32 %i.bq, 8388608          ; 3 uses
  %i.cn = lshr i32 %i.cm, %i.cl                   ; 2 uses
  %i.co = sub nsw i32 29, %i.bx
  %i.cp = and i32 %i.co, 31                       ; 2 uses
  %i.cq = shl nuw i32 1, %i.cp
  %i.cr = and i32 %i.cq, %i.cm
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = shl i32 3, %i.cp
  %i.cu = add nuw i32 %i.ct, 16777215
  %i.cv = and i32 %i.cu, %i.cm
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %spec.select.i15.i.i.i = add nuw nsw i32 %i.cn, %i.cx
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.03.0.i16.i.i.i = phi i32 [ %i.cn, %bb.s ], [ %spec.select.i15.i.i.i, %bb.t ]
  %i.cy = trunc nuw i32 %.sroa.03.0.i16.i.i.i to i16
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i

bb.v:                                             ; preds = %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit11.i.i.i, %.split2.i.i.i
  %i.cz = tail call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.bi) #25
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i: ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %bb.o, %bb.n
  %.sroa.01.0.i.i.i.i = phi i16 [ %i.cz, %bb.v ], [ %i.bw, %bb.n ], [ %spec.select7.i13.i.i.i, %bb.q ], [ 31744, %bb.o ], [ %i.cy, %bb.u ], [ 0, %bb.r ]
  %i.da = tail call fastcc noundef i16 @_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch21subtract_f16_fallback(i16 noundef %.sroa.0.0.i.i.i.i, i16 noundef %.sroa.01.0.i.i.i.i) #25, !noalias !17541
  store i16 %i.da, ptr %i.k, align 2, !alias.scope !17542, !noalias !17543
  %exitcond.not.i = icmp eq i64 %i.h, %i.f
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtB10_7IterMutB1n_EEINtB6_7ZipImplBX_B1Y_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRB1n_QB1n_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB3X_8UnaryOpT7f16_vec0E0EB3Z_.exit, label %bb.b

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtB10_7IterMutB1n_EEINtB6_7ZipImplBX_B1Y_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRB1n_QB1n_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB3X_8UnaryOpT7f16_vec0E0EB3Z_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB24_8UnaryOpT7f16_vec0E0B26_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17534
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB7_8UnaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1Q_EE8call_mutB9_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17557
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %3
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull align 2 %2, ptr noundef nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17558)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !17558, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val6.i = load i64, ptr %i.e, align 8, !alias.scope !17558, !noundef !5 ; 2 uses
  %i.f = sub i64 %.val6.i, %.val.i                ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtB10_7IterMutB1n_EEINtB6_7ZipImplBX_B1X_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRB1n_QB1n_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB3W_8UnaryOpT8bf16_vec0E0EB3Y_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !17559, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !17559, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  %.val1.i.i5 = ptrtoaddr ptr %.val1.i.i to i64
  %.val.i.i6 = ptrtoaddr ptr %.val.i.i to i64
  %i.h = sub i64 %.val.i.i6, %.val1.i.i5
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add i64 %index, %.val.i                  ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.i
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i, i64 %i.i
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !noalias !17558 ; 3 uses
  %i.l = and <8 x i16> %wide.load, splat (i16 32767) ; 2 uses
  %i.m = icmp samesign ugt <8 x i16> %i.l, splat (i16 32640) ; 3 uses
  %i.n = xor <8 x i1> %i.m, splat (i1 true)
  %i.o = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.p = or <8 x i1> %i.m, %i.o                   ; 2 uses
  %i.q = xor <8 x i1> %i.p, splat (i1 true)
  %i.r = icmp ne <8 x i16> %i.l, zeroinitializer
  %i.s = uitofp <8 x i1> %i.r to <8 x float>
  %i.t = bitcast <8 x float> %i.s to <8 x i32>    ; 5 uses
  %i.u = icmp samesign ugt <8 x i32> %i.t, splat (i32 2139095040) ; 2 uses
  %i.v = select <8 x i1> %i.p, <8 x i1> splat (i1 true), <8 x i1> %i.u
  %i.w = xor <8 x i1> %i.v, splat (i1 true)
  %i.x = and <8 x i32> %i.t, splat (i32 32768)
  %i.y = icmp eq <8 x i32> %i.x, zeroinitializer
  %i.z = and <8 x i32> %i.t, splat (i32 98303)
  %i.aa = icmp eq <8 x i32> %i.z, zeroinitializer
  %i.ab = or <8 x i1> %i.y, %i.aa
  %i.ac = lshr <8 x i32> %i.t, splat (i32 16)
  %i.ad = trunc nuw nsw <8 x i32> %i.ac to <8 x i16> ; 2 uses
  %i.ae = add nuw nsw <8 x i16> %i.ad, splat (i16 1)
  %i.af = select <8 x i1> %i.q, <8 x i1> %i.u, <8 x i1> zeroinitializer
  %i.ag = or <8 x i16> %i.ad, splat (i16 64)
  %i.ah = select <8 x i1> %i.n, <8 x i1> %i.o, <8 x i1> zeroinitializer ; 2 uses
  %i.ai = icmp ne <8 x i16> %wide.load, zeroinitializer
  %i.aj = uitofp <8 x i1> %i.ai to <8 x float>
  %i.ak = bitcast <8 x float> %i.aj to <8 x i32>  ; 4 uses
  %i.al = icmp samesign ugt <8 x i32> %i.ak, splat (i32 2139095040) ; 2 uses
  %i.am = xor <8 x i1> %i.al, splat (i1 true)
  %i.an = select <8 x i1> %i.ah, <8 x i1> %i.am, <8 x i1> zeroinitializer ; 2 uses
  %i.ao = and <8 x i32> %i.ak, splat (i32 32768)
  %i.ap = icmp ne <8 x i32> %i.ao, zeroinitializer
  %i.aq = and <8 x i32> %i.ak, splat (i32 98303)
  %i.ar = icmp ne <8 x i32> %i.aq, zeroinitializer
  %i.as = and <8 x i1> %i.ap, %i.ar
  %i.at = lshr <8 x i32> %i.ak, splat (i32 16)
  %i.au = trunc nuw nsw <8 x i32> %i.at to <8 x i16> ; 2 uses
  %i.av = zext <8 x i1> %i.as to <8 x i16>
  %i.aw = add nuw nsw <8 x i16> %i.av, %i.au
  %i.ax = select <8 x i1> %i.ah, <8 x i1> %i.al, <8 x i1> zeroinitializer ; 2 uses
  %i.ay = or <8 x i16> %i.au, splat (i16 64)
  %i.az = select <8 x i1> %i.w, <8 x i1> %i.ab, <8 x i1> zeroinitializer ; 2 uses
  %i.ba = or <8 x i1> %i.az, %i.ax
  %i.bb = or <8 x i1> %i.ba, %i.an
  %i.bc = or <8 x i1> %i.bb, %i.m                 ; 2 uses
  %predphi = select <8 x i1> %i.ax, <8 x i16> %i.ay, <8 x i16> zeroinitializer
  %predphi7 = select <8 x i1> %i.an, <8 x i16> %i.aw, <8 x i16> %predphi
  %i.bd = lshr <8 x i32> %i.t, splat (i32 16)
  %i.be = trunc nuw nsw <8 x i32> %i.bd to <8 x i16>
  %i.bf = select <8 x i1> %i.az, <8 x i16> %i.be, <8 x i16> zeroinitializer
  %predphi9 = select <8 x i1> %i.bc, <8 x i16> %predphi7, <8 x i16> zeroinitializer ; 3 uses
  %predphi10 = select <8 x i1> %i.bc, <8 x i16> %i.bf, <8 x i16> %i.ae
  %predphi11 = select <8 x i1> %i.af, <8 x i16> %i.ag, <8 x i16> %predphi10 ; 3 uses
  %i.bg = and <8 x i16> %predphi9, splat (i16 32767)
  %i.bh = icmp samesign ugt <8 x i16> %i.bg, splat (i16 32640)
  %i.bi = or <8 x i16> %predphi9, splat (i16 64)
  %i.bj = select <8 x i1> %i.bh, <8 x i16> %i.bi, <8 x i16> %predphi9
  %i.bk = zext <8 x i16> %i.bj to <8 x i32>
  %i.bl = shl nuw <8 x i32> %i.bk, splat (i32 16)
  %i.bm = icmp samesign ugt <8 x i16> %predphi11, splat (i16 32640)
  %i.bn = or <8 x i16> %predphi11, splat (i16 64)
  %i.bo = select <8 x i1> %i.bm, <8 x i16> %i.bn, <8 x i16> %predphi11
  %i.bp = zext <8 x i16> %i.bo to <8 x i32>
  %i.bq = shl nuw <8 x i32> %i.bp, splat (i32 16)
  %i.br = bitcast <8 x i32> %i.bl to <8 x float>
  %i.bs = bitcast <8 x i32> %i.bq to <8 x float>
  %i.bt = fsub <8 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = bitcast <8 x float> %i.bt to <8 x i32>  ; 3 uses
  %i.bv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bt)
  %i.bw = bitcast <8 x float> %i.bv to <8 x i32>
  %i.bx = icmp samesign ugt <8 x i32> %i.bw, splat (i32 2139095040)
  %i.by = and <8 x i32> %i.bu, splat (i32 32768)
  %i.bz = icmp ne <8 x i32> %i.by, zeroinitializer
  %i.ca = and <8 x i32> %i.bu, splat (i32 98303)
  %i.cb = icmp ne <8 x i32> %i.ca, zeroinitializer
  %i.cc = and <8 x i1> %i.bz, %i.cb
  %i.cd = lshr <8 x i32> %i.bu, splat (i32 16)
  %i.ce = trunc nuw <8 x i32> %i.cd to <8 x i16>  ; 2 uses
  %i.cf = zext <8 x i1> %i.cc to <8 x i16>
  %i.cg = add <8 x i16> %i.cf, %i.ce
  %i.ch = or <8 x i16> %i.ce, splat (i16 64)
  %predphi12 = select <8 x i1> %i.bx, <8 x i16> %i.ch, <8 x i16> %i.cg
  store <8 x i16> %predphi12, ptr %i.k, align 2, !alias.scope !17560, !noalias !17558
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !17555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtB10_7IterMutB1n_EEINtB6_7ZipImplBX_B1X_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRB1n_QB1n_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB3W_8UnaryOpT8bf16_vec0E0EB3Y_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB23_8UnaryOpT8bf16_vec0E0B25_.exit.i
  %.sroa.0.08.i = phi i64 [ %i.cj, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB23_8UnaryOpT8bf16_vec0E0B25_.exit.i ], [ %.sroa.0.08.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cj = add nuw i64 %.sroa.0.08.i, 1            ; 2 uses
  %i.ck = add i64 %.sroa.0.08.i, %.val.i          ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i, i64 %i.ck
  %.val7.i = load i16, ptr %i.cl, align 2, !noalias !17558, !noundef !5 ; 3 uses
  %i.cn = and i16 %.val7.i, 32767                 ; 2 uses
  %i.co = icmp samesign ugt i16 %i.cn, 32640
  br i1 %i.co, label %.thread19.i.i.i, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %.not.i.i.i.i = icmp sgt i16 %.val7.i, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i: ; preds = %bb.b
  %i.cp = icmp ne i16 %.val7.i, 0
  %i.cq = uitofp i1 %i.cp to float
  %i.cr = bitcast float %i.cq to i32              ; 5 uses
  %i.cs = icmp samesign ugt i32 %i.cr, 2139095040
  br i1 %i.cs, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i
  %i.ct = and i32 %i.cr, 32768
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = and i32 %i.cr, 98303
  %i.cw = icmp ne i32 %i.cv, 0
  %or.cond.i.not.i.i.i = and i1 %i.cu, %i.cw
  %i.cx = lshr i32 %i.cr, 16
  %i.cy = trunc nuw nsw i32 %i.cx to i16
  %i.cz = zext i1 %or.cond.i.not.i.i.i to i16
  %spec.select.i.i.i = add nuw nsw i16 %i.cz, %i.cy
  br label %.thread19.i.i.i

bb.d:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i
  %i.da = lshr i32 %i.cr, 16
  %i.db = trunc nuw nsw i32 %i.da to i16
  %i.dc = or i16 %i.db, 64
  br label %.thread19.i.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i: ; preds = %bb.b
  %i.dd = icmp ne i16 %i.cn, 0
  %i.de = uitofp i1 %i.dd to float
  %i.df = bitcast float %i.de to i32              ; 6 uses
  %i.dg = icmp samesign ugt i32 %i.df, 2139095040
  br i1 %i.dg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i
  %i.dh = and i32 %i.df, 32768
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = and i32 %i.df, 98303
  %i.dk = icmp eq i32 %i.dj, 0
  %or.cond3.i.i.i.i = or i1 %i.di, %i.dk
  br i1 %or.cond3.i.i.i.i, label %.thread19.i.i.i, label %bb.g

bb.f:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i
  %i.dl = lshr i32 %i.df, 16
  %i.dm = trunc nuw nsw i32 %i.dl to i16
  %i.dn = or i16 %i.dm, 64
  %i.do = insertelement <2 x i16> <i16 0, i16 poison>, i16 %i.dn, i64 1
  br label %_RNvXsa_NtCsltEA4u8Pgfu_11candle_core2opNtB5_4SignNtB5_8UnaryOpT4bf16.exit.i.i.i

.thread19.i.i.i:                                  ; preds = %bb.e, %bb.d, %bb.c, %scalar.ph
  %.sroa.0.0.i71822.i.i.i = phi i16 [ 0, %bb.e ], [ %i.dc, %bb.d ], [ 0, %scalar.ph ], [ %spec.select.i.i.i, %bb.c ]
  %i.dp = phi i32 [ %i.df, %bb.e ], [ 0, %bb.d ], [ 0, %scalar.ph ], [ 0, %bb.c ]
  %i.dq = lshr i32 %i.dp, 16
  %i.dr = trunc nuw nsw i32 %i.dq to i16
  %i.ds = insertelement <2 x i16> poison, i16 %.sroa.0.0.i71822.i.i.i, i64 0
  %i.dt = insertelement <2 x i16> %i.ds, i16 %i.dr, i64 1
  br label %_RNvXsa_NtCsltEA4u8Pgfu_11candle_core2opNtB5_4SignNtB5_8UnaryOpT4bf16.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.du = lshr i32 %i.df, 16
  %i.dv = trunc nuw nsw i32 %i.du to i16
  %i.dw = add nuw nsw i16 %i.dv, 1
  %i.dx = insertelement <2 x i16> <i16 0, i16 poison>, i16 %i.dw, i64 1
  br label %_RNvXsa_NtCsltEA4u8Pgfu_11candle_core2opNtB5_4SignNtB5_8UnaryOpT4bf16.exit.i.i.i

_RNvXsa_NtCsltEA4u8Pgfu_11candle_core2opNtB5_4SignNtB5_8UnaryOpT4bf16.exit.i.i.i: ; preds = %bb.g, %.thread19.i.i.i, %bb.f
  %i.dy = phi <2 x i16> [ %i.do, %bb.f ], [ %i.dt, %.thread19.i.i.i ], [ %i.dx, %bb.g ] ; 3 uses
  %i.dz = and <2 x i16> %i.dy, splat (i16 32767)
  %i.ea = or <2 x i16> %i.dy, splat (i16 64)
  %i.eb = icmp samesign ugt <2 x i16> %i.dz, splat (i16 32640)
  %i.ec = select <2 x i1> %i.eb, <2 x i16> %i.ea, <2 x i16> %i.dy
  %i.ed = zext <2 x i16> %i.ec to <2 x i32>
  %i.ee = shl nuw <2 x i32> %i.ed, splat (i32 16)
  %i.ef = bitcast <2 x i32> %i.ee to <2 x float>  ; 2 uses
  %shift = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ef, %shift
  %i.eg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.eh = bitcast float %i.eg to i32              ; 4 uses
  %i.ei = tail call float @llvm.fabs.f32(float %i.eg)
  %i.ej = bitcast float %i.ei to i32
  %i.ek = icmp samesign ugt i32 %i.ej, 2139095040
  br i1 %i.ek, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXsa_NtCsltEA4u8Pgfu_11candle_core2opNtB5_4SignNtB5_8UnaryOpT4bf16.exit.i.i.i
  %i.el = and i32 %i.eh, 32768
  %i.em = icmp ne i32 %i.el, 0
  %i.en = and i32 %i.eh, 98303
  %i.eo = icmp ne i32 %i.en, 0
  %or.cond.not.i.i.i.i = and i1 %i.em, %i.eo
  %i.ep = lshr i32 %i.eh, 16
  %i.eq = trunc nuw i32 %i.ep to i16
  %i.er = zext i1 %or.cond.not.i.i.i.i to i16
  %spec.select.i10.i.i.i = add i16 %i.er, %i.eq
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB23_8UnaryOpT8bf16_vec0E0B25_.exit.i

bb.i:                                             ; preds = %_RNvXsa_NtCsltEA4u8Pgfu_11candle_core2opNtB5_4SignNtB5_8UnaryOpT4bf16.exit.i.i.i
  %i.es = lshr i32 %i.eh, 16
  %i.et = trunc nuw i32 %i.es to i16
  %i.eu = or i16 %i.et, 64
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB23_8UnaryOpT8bf16_vec0E0B25_.exit.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB23_8UnaryOpT8bf16_vec0E0B25_.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.03.0.i.i.i.i = phi i16 [ %i.eu, %bb.i ], [ %spec.select.i10.i.i.i, %bb.h ]
  store i16 %.sroa.03.0.i.i.i.i, ptr %i.cm, align 2, !alias.scope !17560, !noalias !17558
  %exitcond.not.i = icmp eq i64 %i.cj, %i.f
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtB10_7IterMutB1n_EEINtB6_7ZipImplBX_B1X_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRB1n_QB1n_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB3W_8UnaryOpT8bf16_vec0E0EB3Y_.exit, label %scalar.ph, !llvm.loop !17556

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtB10_7IterMutB1n_EEINtB6_7ZipImplBX_B1X_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRB1n_QB1n_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB3W_8UnaryOpT8bf16_vec0E0EB3Y_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SignNtB23_8UnaryOpT8bf16_vec0E0B25_.exit.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17557
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SiluNtB7_8UnaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1Q_EE8call_mutB9_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17574
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %3
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull align 2 %2, ptr noundef nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17575)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !17575, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val6.i = load i64, ptr %i.e, align 8, !alias.scope !17575, !noundef !5 ; 2 uses
  %i.f = sub i64 %.val6.i, %.val.i                ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtB10_7IterMutB1n_EEINtB6_7ZipImplBX_B1X_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRB1n_QB1n_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op4SiluNtB3W_8UnaryOpT8bf16_vec0E0EB3Y_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !17576, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !17576, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  %.val1.i.i1 = ptrtoaddr ptr %.val1.i.i to i64
  %.val.i.i2 = ptrtoaddr ptr %.val.i.i to i64
  %i.h = sub i64 %.val.i.i2, %.val1.i.i1
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add i64 %index, %.val.i                  ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.i
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i, i64 %i.i
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !noalias !17575 ; 4 uses
  %i.l = xor <8 x i16> %wide.load, splat (i16 -32768) ; 2 uses
end_hunk_0
