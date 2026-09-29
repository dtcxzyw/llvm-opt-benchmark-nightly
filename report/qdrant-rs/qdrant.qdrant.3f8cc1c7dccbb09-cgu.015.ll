Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.015?download=true
inline.NumInlined: 5638
inline.NumDeleted: 3744
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LocalShardInfoENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2p_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3h_5accumjNtB5g_3Sum3sumIBO_BN_B4b_EE0E0ECsl8OoimOLbh_6qdrant:bb.a
  %i.bf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %i.bg = xor i64 %i.bf, 63
  %i.bh = mul nuw nsw i64 %i.bg, 9
  %i.bi = add nuw nsw i64 %i.bh, 73
  %i.bj = lshr i64 %i.bi, 6
  %i.bk = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 1
  %i.bl = add nuw i64 %i.bk, %i.bj
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LocalShardInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LocalShardInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNCNvXsfx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14LocalShardInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.bl, %_RNCNvXsfx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14LocalShardInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bm = add nuw nsw i64 %.sroa.01.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  %i.bn = add nuw nsw i64 %i.bm, %.sroa.02.0.i.i.i.i
  %i.bo = add nuw i64 %i.bn, %.sroa.02.0.i.i.i.i.i ; 2 uses
  %i.bp = or i64 %i.bo, 1
  %i.bq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = xor i64 %i.bq, 63
  %i.bs = mul nuw nsw i64 %i.br, 9
  %i.bt = add nuw nsw i64 %i.bs, 73
  %i.bu = lshr i64 %i.bt, 6
  %i.bv = add i64 %i.bo, %.sroa.02.0.i
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.e
  br i1 %i.by, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LocalShardInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2v_jjjNCINvNtNtB3h_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1L_5accumjNtB5i_3Sum3sumINtB2x_3MapIB5K_BF_B37_EB4e_EE0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LocalShardInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2v_jjjNCINvNtNtB3h_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1L_5accumjNtB5i_3Sum3sumINtB2x_3MapIB5K_BF_B37_EB4e_EE0E0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LocalShardInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.bw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LocalShardInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2p_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3h_5accumjNtB5g_3Sum3sumIBO_BN_B4b_EE0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2v_jjjNCINvNtNtB3h_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1L_5accumjNtB5i_3Sum3sumINtB2x_3MapIB5K_BF_B37_EB4e_EE0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 152
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.cc, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.cb, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i ]
  %i.f = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %.sroa.04.0.i ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !range !21, !alias.scope !6783, !noundef !11
  switch i64 %i.h, label %bb.d [
    i64 -3, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdE6map_orjNCNvXsG2_BL_NtBL_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
    i64 -2, label %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i
    i64 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !6784, !noundef !11 ; 3 uses
  %i.j = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = or i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.l = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = xor i64 %i.l, 63
  %i.n = mul nuw nsw i64 %i.m, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
  %i.q = add nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.r = add nuw i64 %i.q, %i.p
  br label %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !6784, !noundef !11
  %i.t = or i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.u = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = xor i64 %i.u, 63
  %i.w = mul nuw nsw i64 %i.v, 9
  %i.x = add nuw nsw i64 %i.w, 73
  %i.y = lshr i64 %i.x, 6
  %i.z = add nuw nsw i64 %i.y, 1
  br label %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.r, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = or i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 1
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 1
  %i.ah = add nuw i64 %i.ag, %i.af
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdE6map_orjNCNvXsG2_BL_NtBL_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdE6map_orjNCNvXsG2_BL_NtBL_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.c
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.ah, %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.aj = tail call noundef i64 @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map11encoded_lenNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBZ_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1x_EECsl8OoimOLbh_6qdrant(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.al = tail call noundef i64 @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map11encoded_lenNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNvNtB4_6string11encoded_lenINvNtB4_7message11encoded_lenB1x_EECsl8OoimOLbh_6qdrant(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
  %i.am = load i64, ptr %i.f, align 8, !range !15, !alias.scope !6783, !noundef !11
  %.not2.i.i.i.i = icmp eq i64 %i.am, -1
  br i1 %.not2.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdE6map_orjNCNvXsG2_BL_NtBL_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !6785, !noundef !11 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val4.i.i.i.i.i = load i32, ptr %i.ao, align 8, !alias.scope !6785 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = or i64 %.val.i.i.i.i.i, 1
  %i.ar = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = xor i64 %i.ar, 63
  %i.at = mul nuw nsw i64 %i.as, 9
  %i.au = add nuw nsw i64 %i.at, 73
  %i.av = lshr i64 %i.au, 6
  %i.aw = icmp sgt i64 %.val.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw i64 %.val.i.i.i.i.i, 1
  %i.ay = add nuw i64 %i.ax, %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.g ], [ 0, %bb.f ]
  %i.az = icmp eq i32 %.val4.i.i.i.i.i, 0
  br i1 %i.az, label %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lens_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = or i32 %.val4.i.i.i.i.i, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true)
  %i.bd = xor i64 %i.bc, 63
  %i.be = mul nuw nsw i64 %i.bd, 9
  %i.bf = add nuw nsw i64 %i.be, 73
  %i.bg = lshr i64 %i.bf, 6
  %i.bh = add nuw nsw i64 %i.bg, 1
  br label %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lens_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lens_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.i ], [ 0, %bb.h ]
  %i.bi = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.bj = or i64 %i.bi, 1
  %i.bk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = xor i64 %i.bk, 63
  %i.bm = mul nuw nsw i64 %i.bl, 9
  %i.bn = add nuw nsw i64 %i.bm, 73
  %i.bo = lshr i64 %i.bn, 6
  %i.bp = add nuw i64 %i.bi, 1
  %i.bq = add nuw i64 %i.bp, %i.bo
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lens_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdE6map_orjNCNvXsG2_BL_NtBL_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.02.0.i3.i.i.i.i = phi i64 [ %i.bq, %_RNCNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lens_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdE6map_orjNCNvXsG2_BL_NtBL_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %i.br = add i64 %i.aj, %.sroa.02.0.i.i.i.i.i
  %i.bs = add i64 %i.br, %i.al
  %i.bt = add i64 %i.bs, %.sroa.02.0.i3.i.i.i.i   ; 2 uses
  %i.bu = or i64 %i.bt, 1
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = xor i64 %i.bv, 63
  %i.bx = mul nuw nsw i64 %i.bw, 9
  %i.by = add nuw nsw i64 %i.bx, 73
  %i.bz = lshr i64 %i.by, 6
  %i.ca = add i64 %i.bt, %.sroa.02.0.i
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  %i.cc = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %i.e
  br i1 %i.cd, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2v_jjjNCINvNtNtB3h_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1L_5accumjNtB5i_3Sum3sumINtB2x_3MapIB5K_BF_B37_EB4e_EE0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2v_jjjNCINvNtNtB3h_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1L_5accumjNtB5i_3Sum3sumINtB2x_3MapIB5K_BF_B37_EB4e_EE0E0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.cb, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReadBatchRangeENCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB2l_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtB1p_19storage_read_server11StorageRead10read_batch00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5B_8for_each4callNtNtB3I_5types9ReadRangeNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7b_3VecB6E_E14extend_trustedBN_E0E0EB2r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReadBatchRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtNtCslmvYCXbQjWR_6common12universal_io5types9ReadRangeuNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB48_18StorageReadServiceNtNtB39_8io_uring11IoUringFileENtNtBS_19storage_read_server11StorageRead10read_batch00NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7r_3VecB35_E14extend_trustedINtB2x_3MapBF_B41_EE0E0E0EB4e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 160
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 4           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.d
  %bound0 = icmp ult ptr %i.g, %1
  %bound1 = icmp ult ptr %0, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !alias.scope !6799, !noalias !6800
  %wide.load4 = load <2 x i64>, ptr %i.l, align 8, !alias.scope !6799, !noalias !6800
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  %i.n = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.m, align 8, !alias.scope !6801, !noalias !6802
  store <2 x i64> %wide.load4, ptr %i.o, align 8, !alias.scope !6801, !noalias !6802
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !6797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReadBatchRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtNtCslmvYCXbQjWR_6common12universal_io5types9ReadRangeuNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB48_18StorageReadServiceNtNtB39_8io_uring11IoUringFileENtNtBS_19storage_read_server11StorageRead10read_batch00NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7r_3VecB35_E14extend_trustedINtB2x_3MapBF_B41_EE0E0E0EB4e_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.q = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  %i.t = load <2 x i64>, ptr %i.r, align 8, !noalias !6800
  store <2 x i64> %i.t, ptr %i.s, align 8, !noalias !6803
  %i.u = add i64 %.ph, 1                          ; 2 uses
  %i.v = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp eq i64 %i.e, %.neg
  br i1 %i.w, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReadBatchRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtNtCslmvYCXbQjWR_6common12universal_io5types9ReadRangeuNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB48_18StorageReadServiceNtNtB39_8io_uring11IoUringFileENtNtBS_19storage_read_server11StorageRead10read_batch00NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7r_3VecB35_E14extend_trustedINtB2x_3MapBF_B41_EE0E0E0EB4e_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.ag, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.x
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !noalias !6800
  store <2 x i64> %i.aa, ptr %i.z, align 8, !noalias !6803
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.x
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !noalias !6800
  store <2 x i64> %i.af, ptr %i.ae, align 8, !noalias !6803
  %i.ag = add i64 %i.x, 2                         ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReadBatchRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtNtCslmvYCXbQjWR_6common12universal_io5types9ReadRangeuNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB48_18StorageReadServiceNtNtB39_8io_uring11IoUringFileENtNtBS_19storage_read_server11StorageRead10read_batch00NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7r_3VecB35_E14extend_trustedINtB2x_3MapBF_B41_EE0E0E0EB4e_.exit, label %scalar.ph, !llvm.loop !6798

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReadBatchRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtNtCslmvYCXbQjWR_6common12universal_io5types9ReadRangeuNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB48_18StorageReadServiceNtNtB39_8io_uring11IoUringFileENtNtBS_19storage_read_server11StorageRead10read_batch00NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7r_3VecB35_E14extend_trustedINtB2x_3MapBF_B41_EE0E0E0EB4e_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6800
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfoENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2p_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3h_5accumjNtB5g_3Sum3sumIBO_BN_B4b_EE0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2v_jjjNCINvNtNtB3h_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1L_5accumjNtB5i_3Sum3sumINtB2x_3MapIB5K_BF_B37_EB4e_EE0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.bx, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.bw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i ]
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !6824, !noundef !11 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = or i32 %i.h, 1
  %i.k = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.j, i1 true)
  %i.l = xor i32 %i.k, 31
  %i.m = mul nuw nsw i32 %i.l, 9
  %i.n = add nuw nsw i32 %i.m, 73
  %i.o = lshr i32 %i.n, 6
  %narrow.i.i.i.i.i = add nuw nsw i32 %i.o, 1
  %i.p = zext nneg i32 %narrow.i.i.i.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !6824, !noundef !11 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = or i64 %i.r, 1
  %i.u = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = xor i64 %i.u, 63
  %i.w = mul nuw nsw i64 %i.v, 9
  %i.x = add nuw nsw i64 %i.w, 73
  %i.y = lshr i64 %i.x, 6
  %i.z = add nuw nsw i64 %i.y, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.z, %bb.f ], [ 0, %bb.e ]
  %i.aa = load i64, ptr %i.f, align 8, !range !21, !alias.scope !6824, !noundef !11
  switch i64 %i.aa, label %bb.i [
    i64 -3, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyE6map_orjNCNvXsg0_BL_NtBL_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
    i64 -2, label %_RNCNvXsg0_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i
    i64 -1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !6825, !noundef !11
  %i.ac = or i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ad = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = xor i64 %i.ad, 63
  %i.af = mul nuw nsw i64 %i.ae, 9
  %i.ag = add nuw nsw i64 %i.af, 73
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = add nuw nsw i64 %i.ah, 1
  br label %_RNCNvXsg0_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !6825, !noundef !11 ; 3 uses
  %i.ak = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = or i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.am = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = xor i64 %i.am, 63
  %i.ao = mul nuw nsw i64 %i.an, 9
  %i.ap = add nuw nsw i64 %i.ao, 73
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = add nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.as = add nuw i64 %i.ar, %i.aq
  br label %_RNCNvXsg0_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RNCNvXsg0_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ai, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %i.at = or i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 1
  %i.au = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = xor i64 %i.au, 63
  %i.aw = mul nuw nsw i64 %i.av, 9
  %i.ax = add nuw nsw i64 %i.aw, 73
  %i.ay = lshr i64 %i.ax, 6
  %i.az = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 1
  %i.ba = add nuw i64 %i.az, %i.ay
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyE6map_orjNCNvXsg0_BL_NtBL_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyE6map_orjNCNvXsg0_BL_NtBL_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RNCNvXsg0_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.g
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.ba, %_RNCNvXsg0_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !6824, !noundef !11 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyE6map_orjNCNvXsg0_BL_NtBL_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.be = or i32 %i.bc, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = xor i64 %i.bg, 63
  %i.bi = mul nuw nsw i64 %i.bh, 9
  %i.bj = add nuw nsw i64 %i.bi, 73
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = add nuw nsw i64 %i.bk, 1
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14ReshardingInfojjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB1X_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB3X_3Sum3sumINtB4_3MapIB4x_INtNtNtBa_5slice4iter4IterBV_EB1N_EB2T_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.j, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyE6map_orjNCNvXsg0_BL_NtBL_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.bl, %bb.j ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyE6map_orjNCNvXsg0_BL_NtBL_14ReshardingInfoNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %i.bm = add nuw nsw i64 %.sroa.01.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  %i.bn = add nuw i64 %i.bm, %.sroa.02.0.i.i.i.i.i
  %i.bo = add nuw i64 %i.bn, %.sroa.03.0.i.i.i.i  ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReB1o_EENCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histogram0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2p_8for_each4callNtNtCsg7unpTaMwz1_10prometheus5proto9LabelPairNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4l_3VecB3s_E14extend_trustedBN_E0E0EB1E_:bb.a
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto9LabelPairuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histogram0NCINvNvBY_8for_each4callB2m_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4A_3VecB2m_E14extend_trustedINtB1O_3MapBF_B37_EE0E0E0EB3f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8089
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !8090, !noalias !8091, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !8090, !noalias !8091, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !8090, !noalias !8091, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8090, !noalias !8091, !noundef !11
  invoke void @_RNvNtNtCsl8OoimOLbh_6qdrant6common7metrics10label_pair(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.d unwind label %bb.e, !noalias !8092

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !8093
  %i.p = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8089
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.f
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto9LabelPairuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histogram0NCINvNvBY_8for_each4callB2m_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4A_3VecB2m_E14extend_trustedINtB1O_3MapBF_B37_EE0E0E0EB3f_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !8092
  resume { ptr, i32 } %i.s

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto9LabelPairuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histogram0NCINvNvBY_8for_each4callB2m_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4A_3VecB2m_E14extend_trustedINtB1O_3MapBF_B37_EE0E0E0EB3f_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8092
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionEENCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB49_8for_each4callTNtNtCsexYYUdYSQU6_5alloc6string6StringB5d_ENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB64_7HashMapB5d_B5d_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4d_7collect6ExtendB5c_E6extendBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_TNtNtCsexYYUdYSQU6_5alloc6string6StringB3A_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvB2b_8for_each4callB3z_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6l_7HashMapB3A_B3A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2f_7collect6ExtendB3z_E6extendINtB31_3MapBF_B4i_EE0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 88
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionETNtNtCsexYYUdYSQU6_5alloc6string6StringB2g_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5v_7HashMapB2g_B2g_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4z_7collect6ExtendB2f_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.af, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionETNtNtCsexYYUdYSQU6_5alloc6string6StringB2g_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5v_7HashMapB2g_B2g_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4z_7collect6ExtendB2f_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8108
  call void @llvm.experimental.noalias.scope.decl(metadata !8109)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !8110, !noalias !8111, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !8110, !noalias !8111, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8112
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !8113
  %i.s = load i64, ptr %i.d, align 8, !range !16, !noalias !8112, !noundef !11
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load i64, ptr %i.l, align 8, !range !8114, !noalias !8112, !noundef !11 ; 3 uses
  br i1 %i.t, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.m, align 8, !noalias !8112
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.v) #40, !noalias !8113
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.m, align 8, !noalias !8112, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = icmp ule i64 %i.r, %i.u
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8112
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %i.u, ptr %i.f, align 8, !noalias !8112
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !8112
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !8112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8112
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %_RNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00Csl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.h, !noalias !8115

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.p, i64 %i.r, i1 false), !noalias !8113
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #37
          to label %common.resume.i.i unwind label %bb.i, !noalias !8115

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8115
  unreachable

common.resume.i.i:                                ; preds = %bb.k, %bb.h
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.ad, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !8116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !8116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8117
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  %i.ab = load i64, ptr %i.a, align 8, !range !15, !alias.scope !8118, !noalias !8117, !noundef !11
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionETNtNtCsexYYUdYSQU6_5alloc6string6StringB2g_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5v_7HashMapB2g_B2g_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4z_7collect6ExtendB2f_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00Csl8OoimOLbh_6qdrant.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.k, !noalias !8119

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.l, !noalias !8119

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8119
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.j
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !8119
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionETNtNtCsexYYUdYSQU6_5alloc6string6StringB2g_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5v_7HashMapB2g_B2g_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4z_7collect6ExtendB2f_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionETNtNtCsexYYUdYSQU6_5alloc6string6StringB2g_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5v_7HashMapB2g_B2g_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4z_7collect6ExtendB2f_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00Csl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8108
  %i.af = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.k
  br i1 %i.ag, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_TNtNtCsexYYUdYSQU6_5alloc6string6StringB3A_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvB2b_8for_each4callB3z_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6l_7HashMapB3A_B3A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2f_7collect6ExtendB3z_E6extendINtB31_3MapBF_B4i_EE0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_TNtNtCsexYYUdYSQU6_5alloc6string6StringB3A_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvB2b_8for_each4callB3z_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6l_7HashMapB3A_B3A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2f_7collect6ExtendB3z_E6extendINtB31_3MapBF_B4i_EE0E0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTReNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionETNtNtCsexYYUdYSQU6_5alloc6string6StringB2g_EuNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5v_7HashMapB2g_B2g_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4z_7collect6ExtendB2f_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTdyEENCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histograms_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2n_8for_each4callNtNtCsg7unpTaMwz1_10prometheus5proto6BucketNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4g_3VecB3q_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTdyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto6BucketuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histograms_0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecB2j_E14extend_trustedINtB1L_3MapBF_B31_EE0E0E0EB39_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 224
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 4           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.d
  %bound0 = icmp ult ptr %i.g, %1
  %bound1 = icmp ult ptr %0, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %wide.vec = load <4 x double>, ptr %i.j, align 8, !alias.scope !8133, !noalias !8134
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %index
  %interleaved.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %interleaved.vec, ptr %i.k, align 8, !alias.scope !8135, !noalias !8136
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !8131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTdyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto6BucketuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histograms_0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecB2j_E14extend_trustedINtB1L_3MapBF_B31_EE0E0E0EB39_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.m = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph ; 2 uses
  %.val15.i.prol = load double, ptr %i.n, align 8, !noalias !8134, !noundef !11
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val16.i.prol = load i64, ptr %i.o, align 8, !noalias !8134, !noundef !11
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph ; 2 uses
  store i64 %.val16.i.prol, ptr %i.p, align 8, !noalias !8136
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %.val15.i.prol, ptr %i.q, align 8, !noalias !8136
  %i.r = add i64 %.ph, 1                          ; 2 uses
  %i.s = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.t = icmp eq i64 %i.e, %.neg
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTdyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto6BucketuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histograms_0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecB2j_E14extend_trustedINtB1L_3MapBF_B31_EE0E0E0EB39_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.u = phi i64 [ %i.af, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ag, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load double, ptr %i.v, align 8, !noalias !8134, !noundef !11
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val16.i = load i64, ptr %i.w, align 8, !noalias !8134, !noundef !11
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.u ; 2 uses
  store i64 %.val16.i, ptr %i.x, align 8, !noalias !8136
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %.val15.i, ptr %i.y, align 8, !noalias !8136
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val15.i.1 = load double, ptr %i.aa, align 8, !noalias !8134, !noundef !11
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  %.val16.i.1 = load i64, ptr %i.ab, align 8, !noalias !8134, !noundef !11
  %i.ac = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.u ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store i64 %.val16.i.1, ptr %i.ad, align 8, !noalias !8136
  %i.ae = getelementptr i8, ptr %i.ac, i64 24
  store double %.val15.i.1, ptr %i.ae, align 8, !noalias !8136
  %i.af = add i64 %i.u, 2                         ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.e
  br i1 %i.ah, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTdyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto6BucketuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histograms_0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecB2j_E14extend_trustedINtB1L_3MapBF_B31_EE0E0E0EB39_.exit, label %scalar.ph, !llvm.loop !8132

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTdyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_NtNtCsg7unpTaMwz1_10prometheus5proto6BucketuNCNvNtNtCsl8OoimOLbh_6qdrant6common7metrics9histograms_0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecB2j_E14extend_trustedINtB1L_3MapBF_B31_EE0E0E0EB39_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.af, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8134
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTfjEENCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB1A_31OperationDurationMetricsBuilder3add0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4callTdyENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4c_3VecB3Z_E14extend_trustedBN_E0E0EB1E_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.v, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.w, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load float, ptr %i.h, align 8, !noalias !8145, !noundef !11
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16.i = load i64, ptr %i.i, align 8, !noalias !8145, !noundef !11
  %i.j = fpext float %.val15.i to double
  %i.k = fdiv double %i.j, 1.000000e+06
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store double %i.k, ptr %i.l, align 8, !noalias !8146
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.val16.i, ptr %i.m, align 8, !noalias !8146
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val15.i.1 = load float, ptr %i.o, align 8, !noalias !8145, !noundef !11
  %i.p = getelementptr i8, ptr %i.n, i64 24
  %.val16.i.1 = load i64, ptr %i.p, align 8, !noalias !8145, !noundef !11
  %i.q = fpext float %.val15.i.1 to double
  %i.r = fdiv double %i.q, 1.000000e+06
  %i.s = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  store double %i.r, ptr %i.t, align 8, !noalias !8146
  %i.u = getelementptr i8, ptr %i.s, i64 24
  store i64 %.val16.i.1, ptr %i.u, align 8, !noalias !8146
  %i.v = add i64 %i.g, 2                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.x = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.v, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %.val15.i.epil = load float, ptr %i.y, align 8, !noalias !8145, !noundef !11
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val16.i.epil = load i64, ptr %i.z, align 8, !noalias !8145, !noundef !11
  %i.aa = fpext float %.val15.i.epil to double
  %i.ab = fdiv double %i.aa, 1.000000e+06
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store double %i.ab, ptr %i.ac, align 8, !noalias !8146
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.val16.i.epil, ptr %i.ad, align 8, !noalias !8146
  %i.ae = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.v, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_TdyEuNCNvMsc_NtNtCsl8OoimOLbh_6qdrant6common7metricsNtB2w_31OperationDurationMetricsBuilder3add0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2o_EE0E0E0EB2A_.exit.loopexit.unr-lcssa ], [ %i.ae, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8145
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENCNCNvMNtNtNtB1v_6shards11replica_set6updateNtB2E_15ShardReplicaSet11update_impl0s8_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecyE14extend_trustedBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB24_8adapters3map8map_foldRBQ_yuNCNCNvMNtNtNtBY_6shards11replica_set6updateNtB3x_15ShardReplicaSet11update_impl0s8_0NCINvNvB1Y_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecyE14extend_trustedINtB2O_3MapBF_B3o_EE0E0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 56                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 224
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423484
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.v, %bb.c ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.w, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
end_hunk_1
