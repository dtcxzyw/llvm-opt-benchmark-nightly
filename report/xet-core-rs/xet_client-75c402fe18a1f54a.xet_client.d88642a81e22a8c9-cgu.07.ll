Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.07?download=true
inline.NumInlined: 1070
inline.NumDeleted: 425
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtBV_11chunk_cache4disk10cache_item16VerificationCellNtB2d_9CacheItemEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_:bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1g_11chunk_cache4disk10cache_item16VerificationCellNtB2y_9CacheItemEEEEB1g_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2091, !nonnull !9, !noundef !9 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2092
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2093
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [80 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -80
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtBI_11chunk_cache4disk10cache_item16VerificationCellNtB20_9CacheItemEEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.w), !noalias !2091
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1g_11chunk_cache4disk10cache_item16VerificationCellNtB2y_9CacheItemEEEEB1g_.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1g_11chunk_cache4disk10cache_item16VerificationCellNtB2y_9CacheItemEEEEB1g_.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB11_11chunk_cache4disk10cache_item16VerificationCellNtB2j_9CacheItemEEEE9next_implKb0_EB11_.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 80                         ; 2 uses
  %i.z = add i64 %i.y, 80                         ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1j_11chunk_cache4disk10cache_item16VerificationCellNtB2B_9CacheItemEEENtNtB26_5alloc6GlobalEB1j_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1g_11chunk_cache4disk10cache_item16VerificationCellNtB2y_9CacheItemEEEEB1g_.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !2089, !nonnull !9, !noundef !9
  %i.ag = sub i64 -80, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !2089
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1j_11chunk_cache4disk10cache_item16VerificationCellNtB2B_9CacheItemEEENtNtB26_5alloc6GlobalEB1j_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1j_11chunk_cache4disk10cache_item16VerificationCellNtB2B_9CacheItemEEENtNtB26_5alloc6GlobalEB1j_.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtB1g_11chunk_cache4disk10cache_item16VerificationCellNtB2y_9CacheItemEEEEB1g_.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2110, !noundef !9 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2112, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2112, !nonnull !9, !noundef !9 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2113
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsiAynQAjgDuT_10xet_client.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2114
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsiAynQAjgDuT_10xet_client.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2119, !noalias !2112, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2120
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsiAynQAjgDuT_10xet_client.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #30, !noalias !2112
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsiAynQAjgDuT_10xet_client.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !2110, !nonnull !9, !noundef !9
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !2110
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsiAynQAjgDuT_10xet_client.exit.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager17ChunkCacheElementEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !9 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager17ChunkCacheElementENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager17ChunkCacheElementENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #27
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager17ChunkCacheElementENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager17ChunkCacheElementENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2123
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEE15into_allocationB2E_.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 56
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 81
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -64, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEE15into_allocationB2E_.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEE15into_allocationB2E_.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB2G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2126
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEE15into_allocationB2G_.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 56
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 81
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -64, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEE15into_allocationB2G_.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEE15into_allocationB2G_.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2129
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEE15into_allocationBV_.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 56
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 81
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -64, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEE15into_allocationBV_.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEE15into_allocationBV_.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsG258MDvU3F_3std4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCs7SkU8gPisFf_4redb2db8DatabaseEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1t_NtNtNtBZ_4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsiAynQAjgDuT_10xet_client(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsG258MDvU3F_3std4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCs7SkU8gPisFf_4redb2db8DatabaseEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtBW_4hash6random11RandomStateE0Es_0CsiAynQAjgDuT_10xet_client.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCs7SkU8gPisFf_4redb2db8DatabaseENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCs7SkU8gPisFf_4redb2db8DatabaseEECsiAynQAjgDuT_10xet_client.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %.body.i.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCs7SkU8gPisFf_4redb2db8DatabaseEECsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsG258MDvU3F_3std4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCs7SkU8gPisFf_4redb2db8DatabaseEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtBW_4hash6random11RandomStateE0Es_0CsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCs7SkU8gPisFf_4redb2db8DatabaseENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc4sync4WeakDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1t_NtNtNtBZ_4hash6random11RandomStateE0Es_0INtNtNtB1y_3ops8function6FnOnceTOhEE9call_onceB2I_(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc4sync4WeakDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtBW_4hash6random11RandomStateE0Es_0B2F_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc4sync4WeakDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEEB1A_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %.body.i.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc4sync4WeakDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEEB1A_.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc4sync4WeakDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtBW_4hash6random11RandomStateE0Es_0B2F_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakDNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10ChunkCacheEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBZ_4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceB1W_(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBG_4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCskKLDkoKarTP_4core5panic8location8LocationEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtB1E_3ops8function6FnOnceTOhEE9call_onceCsiAynQAjgDuT_10xet_client(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCskKLDkoKarTP_4core5panic8location8LocationEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsiAynQAjgDuT_10xet_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCskKLDkoKarTP_4core5panic8location8LocationEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecBV_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B25_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsiAynQAjgDuT_10xet_client(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B22_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsiAynQAjgDuT_10xet_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B22_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B25_INtNtBZ_18passthrough_hasher15U64DirectHasherBV_EE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceB2K_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B22_INtNtBW_18passthrough_hasher15U64DirectHasherBS_EE0Es_0B2H_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEB1n_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_5BtreeReNtNtB7_15table_tree_base23InternalTableDefinitionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client
declare hidden void @_RNvXs5_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_5BtreeReNtNtB7_15table_tree_base23InternalTableDefinitionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 16 dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store11cached_fileNtB4_12WritablePageNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4copy4copyINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBI_6cursor6CursorRINtNtB6_3vec3VechEEEB1E_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_15MDBFileInfoView20from_data_and_header(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4copy4copyINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBI_6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEINtNtB6_3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4copy4copyINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBI_6cursor6CursorRShEEINtNtB6_3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_15MDBXorbInfoView20from_data_and_header(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB19_5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1G_18shard_file_managerNtB4M_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvB16_26parse_multipart_byteranges0E0EB1a_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keymNCB16_0E0EB1e_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyB15_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2d_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB12_5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1z_18shard_file_managerNtB4E_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_26parse_multipart_byteranges0E0EB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCBZ_0E0EB17_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB24_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyyNCNvB1o_26parse_multipart_byteranges0E0EB1s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1x_5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB24_18shard_file_managerNtB5a_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keymNCB1u_0E0EB1C_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keyB1t_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2B_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEB1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyEB1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hasher15U64DirectHasheryENtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsG258MDvU3F_3std4path7PathBufINtB2_10EquivalentBq_E10equivalentCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtB2_10EquivalentBq_E10equivalentCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiAynQAjgDuT_10xet_client(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store11cached_file13LRUWriteCacheEE9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7SkU8gPisFf_4redb2db16TransactionGuardE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noreturn }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { nounwind }
attributes #28 = { noinline noreturn }
attributes #29 = { inlinehint }
attributes #30 = { noinline }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null}
!1 = distinct !{!1, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!2 = distinct !{!2, !1, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 2, !"RtLibUseGOT", i32 1}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!8 = !{i64 0, i64 2}
!9 = !{}
!10 = !{i64 0, i64 -9223372036854775807}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i64 8}
!14 = !{!2}
!15 = !{i64 -1, i64 21}
!16 = !{!"branch_weights", i32 4001, i32 4000000}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = !{i64 -1, i64 3}
!20 = !{i64 -1, i64 -9223372036854775801}
!21 = !{i128 0, i128 3}
!22 = !{i64 -2, i64 3}
!23 = !{!"branch_weights", i32 1, i32 1999}
!24 = !{!"branch_weights", i32 0, i32 1}
!25 = !{!"branch_weights", i32 2002, i32 2000}
!26 = !{i64 1, i64 536870913}
!27 = !{i32 0, i32 1000000000}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client"}
!31 = distinct !{!31, !30, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client: argument 2"}
!32 = distinct !{!32, !30, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client: argument 1"}
!33 = distinct !{!33, !30, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client: argument 0"}
!34 = distinct !{!34, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0CsiAynQAjgDuT_10xet_client"}
!35 = distinct !{!35, !34, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0CsiAynQAjgDuT_10xet_client: argument 2"}
!36 = distinct !{!36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client"}
!37 = distinct !{!37, !36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!38 = distinct !{!38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!39 = distinct !{!39, !38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!40 = distinct !{!40, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!41 = distinct !{!41, !40, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!42 = distinct !{!42, !34, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0CsiAynQAjgDuT_10xet_client: argument 1"}
!43 = distinct !{!43, !34, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0CsiAynQAjgDuT_10xet_client: argument 0"}
!44 = distinct !{null}
!45 = distinct !{!45, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewE8push_mutCsiAynQAjgDuT_10xet_client"}
!46 = distinct !{!46, !45, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 0"}
!47 = distinct !{!47, !45, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 1"}
!48 = distinct !{!48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client"}
!49 = distinct !{!49, !48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!50 = distinct !{!50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!51 = distinct !{!51, !50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!52 = distinct !{!52, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!53 = distinct !{!53, !52, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!54 = distinct !{!54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client"}
!55 = distinct !{!55, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!56 = distinct !{!56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!57 = distinct !{!57, !56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!58 = distinct !{!58, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!59 = distinct !{!59, !58, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!60 = distinct !{!60, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!61 = distinct !{!61, !60, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!62 = distinct !{!62, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client"}
!63 = distinct !{!63, !62, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client: argument 2"}
!64 = distinct !{!64, !62, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client: argument 1"}
!65 = distinct !{!65, !62, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client: argument 0"}
!66 = distinct !{!66, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0CsiAynQAjgDuT_10xet_client"}
!67 = distinct !{!67, !66, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0CsiAynQAjgDuT_10xet_client: argument 1"}
!68 = distinct !{!68, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewE8push_mutCsiAynQAjgDuT_10xet_client"}
!69 = distinct !{!69, !68, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 0"}
!70 = distinct !{!70, !68, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 1"}
!71 = distinct !{!71, !66, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEs_0CsiAynQAjgDuT_10xet_client: argument 0"}
!72 = distinct !{!72, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewECsiAynQAjgDuT_10xet_client"}
!73 = distinct !{!73, !72, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!74 = distinct !{!74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!75 = distinct !{!75, !74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!76 = distinct !{!76, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!77 = distinct !{!77, !76, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!78 = distinct !{!78, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!79 = distinct !{!79, !78, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!80 = !{!33, !32, !31}
!81 = !{!33, !31}
!82 = !{!35}
!83 = !{!37}
!84 = !{!39}
!85 = !{!41}
!86 = !{!41, !39, !37, !43, !42, !35, !33, !31}
!87 = !{!41, !39, !37, !35}
!88 = !{!43, !42, !33, !32, !31}
!89 = !{!43, !42, !35, !33, !32, !31}
!90 = !{!43, !42, !35, !33, !31}
!91 = !{!46}
!92 = !{!47}
!93 = !{!47, !43, !42, !35, !33, !31}
!94 = !{!49}
!95 = !{!51}
!96 = !{!53}
!97 = !{!53, !51, !49, !47}
!98 = !{!46, !43, !42, !35, !33, !32, !31}
!99 = !{!53, !51, !49, !47, !43, !42, !35, !33, !31}
!100 = !{!55}
!101 = !{!57}
!102 = !{!59}
!103 = !{!59, !57, !55, !43, !42, !35, !33, !31}
!104 = !{!59, !57, !55, !35}
!105 = !{!43, !42, !33, !31}
!106 = !{!61}
!107 = !{!63}
!108 = !{!65, !64, !63}
!109 = !{!65}
!110 = !{!67}
!111 = !{!69}
!112 = !{!70}
!113 = !{!69, !63}
!114 = !{!70, !71, !67, !65, !64}
!115 = !{!70, !71, !67, !65}
!116 = !{!73}
!117 = !{!75}
!118 = !{!77}
!119 = !{!77, !75, !73, !70, !71, !67, !65}
!120 = !{!77, !75, !73, !70, !67}
!121 = !{!69, !71, !65, !64, !63}
!122 = !{!71, !65}
!123 = !{!79}
!124 = distinct !{!124, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client"}
!125 = distinct !{!125, !124, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client: argument 2"}
!126 = distinct !{!126, !124, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client: argument 1"}
!127 = distinct !{!127, !124, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_file_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_E0ECsiAynQAjgDuT_10xet_client: argument 0"}
!128 = distinct !{!128, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE0CsiAynQAjgDuT_10xet_client"}
!129 = distinct !{!129, !128, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE0CsiAynQAjgDuT_10xet_client: argument 2"}
!130 = distinct !{!130, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client"}
!131 = distinct !{!131, !130, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!132 = distinct !{!132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!133 = distinct !{!133, !132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!134 = distinct !{!134, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!135 = distinct !{!135, !134, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!136 = distinct !{!136, !128, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE0CsiAynQAjgDuT_10xet_client: argument 1"}
!137 = distinct !{!137, !128, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE0CsiAynQAjgDuT_10xet_client: argument 0"}
!138 = distinct !{null}
!139 = distinct !{!139, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewE8push_mutCsiAynQAjgDuT_10xet_client"}
!140 = distinct !{!140, !139, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 0"}
!141 = distinct !{!141, !139, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 1"}
!142 = distinct !{!142, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client"}
!143 = distinct !{!143, !142, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!144 = distinct !{!144, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!145 = distinct !{!145, !144, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!146 = distinct !{!146, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!147 = distinct !{!147, !146, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!148 = distinct !{!148, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client"}
!149 = distinct !{!149, !148, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!150 = distinct !{!150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!151 = distinct !{!151, !150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!152 = distinct !{!152, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!153 = distinct !{!153, !152, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!154 = distinct !{!154, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!155 = distinct !{!155, !154, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!156 = distinct !{!156, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client"}
!157 = distinct !{!157, !156, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client: argument 2"}
!158 = distinct !{!158, !156, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client: argument 1"}
!159 = distinct !{!159, !156, !"_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shard31process_shard_xorb_info_sectionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesENCINvMB2_NtB2_15MDBMinimalShard11from_readerB1J_Es_0ECsiAynQAjgDuT_10xet_client: argument 0"}
!160 = distinct !{!160, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEs_0CsiAynQAjgDuT_10xet_client"}
!161 = distinct !{!161, !160, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEs_0CsiAynQAjgDuT_10xet_client: argument 1"}
!162 = distinct !{!162, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewE8push_mutCsiAynQAjgDuT_10xet_client"}
!163 = distinct !{!163, !162, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 0"}
!164 = distinct !{!164, !162, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewE8push_mutCsiAynQAjgDuT_10xet_client: argument 1"}
!165 = distinct !{!165, !160, !"_RNCINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB5_15MDBMinimalShard11from_readerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEs_0CsiAynQAjgDuT_10xet_client: argument 0"}
!166 = distinct !{!166, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewECsiAynQAjgDuT_10xet_client"}
!167 = distinct !{!167, !166, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewECsiAynQAjgDuT_10xet_client: argument 0"}
!168 = distinct !{!168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!169 = distinct !{!169, !168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!170 = distinct !{!170, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!171 = distinct !{!171, !170, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!172 = distinct !{!172, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!173 = distinct !{!173, !172, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!174 = !{!127, !126, !125}
end_hunk_1
