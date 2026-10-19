Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i.h3i.d225fd212855c992-cgu.12?download=true
inline.NumInlined: 290
inline.NumDeleted: 129
begin_hunk_0_@_RINvXs4_NtCsenfyI6F4F2A_10serde_json6numberNtB6_6NumberNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2g_6marker4SendNtB2Q_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i:bb.a
bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16, !dbg !10833
  unreachable, !dbg !10833

_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1p_6marker4SendNtB1Z_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ %i.r, %bb.f ], [ %i.q, %bb.d ], !dbg !10836 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i.i.i, !4202, !DIExpression(), !10625)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !4188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10619)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !4192, !DIExpression(), !10623)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !4196, !DIExpression(), !10622)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !4199, !DIExpression(), !10621)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !4163, !DIExpression(), !10620)
    #dbg_value(ptr %i.b, !4198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10621)
    #dbg_value(ptr %i.b, !4195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10622)
    #dbg_value(ptr %i.b, !4193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10623)
    #dbg_value(ptr %i.b, !4189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10619)
    #dbg_value(ptr %i.b, !4203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10625)
    #dbg_value(i64 20, !4198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10621)
    #dbg_value(i64 20, !4195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10622)
    #dbg_value(i64 20, !4193, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10623)
    #dbg_value(i64 20, !4189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10619)
    #dbg_value(i64 20, !4203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10625)
  %i.u = sub nuw i64 20, %.sroa.0.0.i.i.i, !dbg !10837
    #dbg_value(i64 %i.u, !4190, !DIExpression(), !10628)
    #dbg_value(i64 %i.u, !4204, !DIExpression(), !10625)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i.i, !dbg !10838
    #dbg_value(ptr %i.v, !10771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10629)
    #dbg_value(i64 %i.u, !10771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10629)
    #dbg_value(ptr poison, !4137, !DIExpression(), !10631)
    #dbg_value(ptr %i.v, !4142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10631)
    #dbg_value(i64 %i.u, !4142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10631)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val6, i64 56, !dbg !10839
  %i.x = load ptr, ptr %i.w, align 8, !dbg !10839, !invariant.load !1368, !noalias !10779, !nonnull !1368
  %i.y = call noundef ptr %i.x(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u) #20, !dbg !10840, !inline_history !10634 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10841
    #dbg_value(ptr %i.y, !10761, !DIExpression(), !10635)
  %.not.i11 = icmp eq ptr %i.y, null, !dbg !10842
  br i1 %.not.i11, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_u64Csi2C7WdEh0SA_3h3i.exit, label %bb.h, !dbg !10843, !prof !3887

bb.h:                                             ; preds = %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1p_6marker4SendNtB1Z_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i
    #dbg_value(ptr %i.y, !10763, !DIExpression(), !10636)
  %i.z = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.y), !dbg !10844
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_u64Csi2C7WdEh0SA_3h3i.exit, !dbg !10845

bb.i:                                             ; preds = %bb.a
  %i.aa = load double, ptr %i.e, align 8, !dbg !10846, !noundef !1368 ; 2 uses
    #dbg_value(double %i.aa, !10699, !DIExpression(), !10780)
    #dbg_value(ptr poison, !10781, !DIExpression(), !10641)
    #dbg_value(double %i.aa, !10784, !DIExpression(), !10641)
    #dbg_value(double %i.aa, !10786, !DIExpression(), !10645)
    #dbg_declare(ptr poison, !10789, !DIExpression(), !10652)
    #dbg_declare(ptr poison, !10789, !DIExpression(), !10654)
    #dbg_value(double %i.aa, !10787, !DIExpression(), !10655)
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa), !dbg !10847
  %cond.i = fcmp ueq double %i.ab, +inf, !dbg !10847
  br i1 %cond.i, label %bb.j, label %bb.k, !dbg !10847

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !10796, !DIExpression(), !10658)
    #dbg_value(ptr poison, !10799, !DIExpression(), !10658)
    #dbg_value(ptr poison, !4137, !DIExpression(), !10660)
    #dbg_value(ptr @1, !4142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10660)
    #dbg_value(i64 4, !4142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10660)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6, i64 56, !dbg !10848
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !10848, !invariant.load !1368, !noalias !10801, !nonnull !1368
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 4) #20, !dbg !10849, !inline_history !10663 ; 2 uses
    #dbg_value(ptr %i.ae, !10790, !DIExpression(), !10664)
  %.not.i13 = icmp eq ptr %i.ae, null, !dbg !10850
  br i1 %.not.i13, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_u64Csi2C7WdEh0SA_3h3i.exit, label %bb.l, !dbg !10851, !prof !3887

bb.k:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !10802, !DIExpression(), !10669)
    #dbg_value(ptr poison, !10805, !DIExpression(), !10669)
    #dbg_value(double %i.aa, !10806, !DIExpression(), !10669)
    #dbg_declare(ptr %i.a, !10807, !DIExpression(), !10670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10852
  %i.af = call { ptr, i64 } @_RINvMs6_CsfYSUKQ7VyeN_4zmijNtB6_6Buffer13format_finitedECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %i.aa), !dbg !10853 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0, !dbg !10853
  %i.ah = extractvalue { ptr, i64 } %i.af, 1, !dbg !10853
    #dbg_value(ptr %i.ag, !10808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10671)
    #dbg_value(i64 %i.ah, !10808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10671)
    #dbg_value(ptr poison, !4137, !DIExpression(), !10673)
    #dbg_value(ptr %i.ag, !4142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10673)
    #dbg_value(i64 %i.ah, !4142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10673)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6, i64 56, !dbg !10854
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !10854, !invariant.load !1368, !noalias !10810, !nonnull !1368
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.ah) #20, !dbg !10855, !inline_history !10676 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10856
    #dbg_value(ptr %i.ak, !10790, !DIExpression(), !10677)
  %.not11.i = icmp eq ptr %i.ak, null, !dbg !10857
  br i1 %.not11.i, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_u64Csi2C7WdEh0SA_3h3i.exit, label %bb.m, !dbg !10858, !prof !3887

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %i.ae, !10792, !DIExpression(), !10678)
  %i.al = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ae), !dbg !10859
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_u64Csi2C7WdEh0SA_3h3i.exit, !dbg !10860

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr %i.ak, !10794, !DIExpression(), !10681)
  %i.am = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ak), !dbg !10861
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_u64Csi2C7WdEh0SA_3h3i.exit, !dbg !10862

_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_u64Csi2C7WdEh0SA_3h3i.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1p_6marker4SendNtB1Z_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1p_6marker4SendNtB1Z_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i ], [ null, %bb.b ], [ %i.n, %bb.c ], [ %i.z, %bb.h ], [ null, %bb.j ], [ %i.al, %bb.l ], [ %i.am, %bb.m ], [ null, %bb.k ], !dbg !10703
  ret ptr %.sroa.0.0, !dbg !10863
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_19FlatMapDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_mapINtNvXs3f_NtB1P_5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtB1P_11Deserialize11deserialize10MapVisitorNtNtB3k_6string6StringNtNtB1a_5value5ValueEECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10870 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.sroa.7.i = alloca [72 x i8], align 8  ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !11037, !DIExpression(), !10905)
    #dbg_value(ptr poison, !11126, !DIExpression(), !10926)
    #dbg_value(ptr poison, !11163, !DIExpression(), !10927)
    #dbg_value(ptr poison, !11161, !DIExpression(), !10928)
    #dbg_value(ptr poison, !11090, !DIExpression(), !10929)
    #dbg_value(ptr poison, !11107, !DIExpression(), !10930)
    #dbg_value(ptr %1, !11031, !DIExpression(), !11170)
    #dbg_declare(ptr poison, !11032, !DIExpression(), !11171)
    #dbg_value(ptr %1, !11172, !DIExpression(), !11182)
    #dbg_value(ptr %1, !11183, !DIExpression(), !11187)
    #dbg_value(ptr %1, !11188, !DIExpression(), !11194)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11296
  %i.i = load ptr, ptr %i.h, align 8, !dbg !11296, !nonnull !1368, !noundef !1368 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11297
  %i.k = load i64, ptr %i.j, align 8, !dbg !11297, !noundef !1368
    #dbg_value(i64 %i.k, !11198, !DIExpression(), !11211)
    #dbg_value(i64 %i.k, !11214, !DIExpression(), !11218)
    #dbg_value(ptr %i.i, !11212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11219)
    #dbg_value(ptr %i.i, !11202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11220)
    #dbg_value(i64 %i.k, !11212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11219)
    #dbg_value(i64 %i.k, !11202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11220)
    #dbg_value(ptr %i.i, !11203, !DIExpression(), !11221)
    #dbg_value(ptr %i.i, !11215, !DIExpression(), !11218)
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.k, !dbg !11298
    #dbg_value(ptr %i.i, !11115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11222)
    #dbg_value(ptr %i.l, !11115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11222)
    #dbg_value(ptr null, !11115, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11224), !dbg !11299
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.i), !dbg !11300
    #dbg_declare(ptr poison, !11121, !DIExpression(), !10947)
    #dbg_declare(ptr %i.g, !11116, !DIExpression(), !10948)
    #dbg_declare(ptr %i.f, !11119, !DIExpression(), !10949)
    #dbg_declare(ptr %i.e, !11120, !DIExpression(), !10950)
    #dbg_declare(ptr poison, !11114, !DIExpression(), !10947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11300, !noalias !11225
  store ptr null, ptr %i.g, align 8, !dbg !11301, !noalias !11225
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !11301
  store i64 0, ptr %i.m, align 8, !dbg !11301, !noalias !11225
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b, !dbg !11302

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.o = phi ptr [ %i.i, %bb.a ], [ %i.q, %.backedge ] ; 5 uses
    #dbg_value(ptr poison, !11144, !DIExpression(), !10954)
    #dbg_value(ptr %i.o, !11137, !DIExpression(), !10955)
    #dbg_value(ptr %i.o, !11230, !DIExpression(), !10958)
    #dbg_value(ptr %i.l, !11138, !DIExpression(), !10959)
    #dbg_value(ptr poison, !11233, !DIExpression(), !10962)
    #dbg_value(ptr poison, !11234, !DIExpression(), !10963)
  %i.p = icmp eq ptr %i.o, %i.l, !dbg !11303
  br i1 %i.p, label %.loopexit22.i, label %bb.c, !dbg !11304

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64, !dbg !11305
    #dbg_value(ptr %i.o, !11164, !DIExpression(), !10964)
  %i.r = load i8, ptr %i.o, align 8, !dbg !11306, !range !4276, !noalias !11236, !noundef !1368
  %.not.i.i.i.i = icmp eq i8 %i.r, -1, !dbg !11306
  br i1 %.not.i.i.i.i, label %.backedge, label %bb.d, !dbg !11307

.backedge:                                        ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i
  br label %bb.b, !dbg !11303

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.o, !11165, !DIExpression(), !10974)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !11308
    #dbg_value(ptr %i.s, !11166, !DIExpression(), !10974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11309, !noalias !11236
    #dbg_declare(ptr poison, !11237, !DIExpression(), !10978)
    #dbg_value(ptr %i.o, !11244, !DIExpression(), !10979)
    #dbg_declare(ptr poison, !11243, !DIExpression(), !10978)
  invoke void @_RINvXs6_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content22ContentRefDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !11310, !noalias !11225

.noexc.i:                                         ; preds = %bb.d
  %i.t = load i64, ptr %i.a, align 8, !dbg !11311, !range !1758, !noalias !11236, !noundef !1368 ; 2 uses
  %i.u = icmp eq i64 %i.t, -1, !dbg !11311
  %i.v = load ptr, ptr %i.n, align 8, !dbg !11312, !noalias !11262 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f, !dbg !11313

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11314, !noalias !11236
  br label %.loopexit21.i, !dbg !11315

bb.f:                                             ; preds = %.noexc.i
  %.sroa.12.0.copyload.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !dbg !11316, !noalias !11262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11314, !noalias !11236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11317, !noalias !11263
  store i64 %i.t, ptr %i.c, align 8, !dbg !11317, !noalias !11263
  store ptr %i.v, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !dbg !11317, !noalias !11263
  store i64 %.sroa.12.0.copyload.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !dbg !11317, !noalias !11263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11318, !noalias !11263
    #dbg_value(ptr undef, !11037, !DIExpression(), !10905)
    #dbg_declare(ptr poison, !11062, !DIExpression(), !10984)
    #dbg_value(ptr %i.s, !11063, !DIExpression(), !10985)
    #dbg_declare(ptr poison, !11264, !DIExpression(), !10988)
    #dbg_value(ptr %i.s, !11268, !DIExpression(), !10989)
    #dbg_declare(ptr poison, !11267, !DIExpression(), !10988)
    #dbg_value(ptr %i.s, !11272, !DIExpression(), !10992)
  invoke void @_RINvXsD_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB1n_5value2deNtB39_5ValueNtB22_11Deserialize11deserialize12ValueVisitorECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i.i.i unwind label %bb.g, !dbg !11319, !noalias !11263

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %.body.i unwind label %bb.j, !dbg !11320, !noalias !11263

_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i.i.i: ; preds = %bb.f
  %.pr.i.i.i = load i64, ptr %i.b, align 8, !dbg !11318, !noalias !11263
  %i.x = icmp eq i64 %.pr.i.i.i, -1, !dbg !11318
  br i1 %i.x, label %_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit._crit_edge.i.i.i, label %bb.k, !dbg !11321

_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit._crit_edge.i.i.i: ; preds = %_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !11322, !noalias !11263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11323, !noalias !11263
    #dbg_value(ptr %i.c, !1713, !DIExpression(), !10994)
    #dbg_value(ptr %i.c, !1720, !DIExpression(), !10996)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i.i.i unwind label %bb.h, !dbg !11324, !noalias !11263

bb.h:                                             ; preds = %_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit._crit_edge.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !1727, !DIExpression(), !10998)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.i, !dbg !11325, !noalias !11263

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !11324, !noalias !11263
  unreachable, !dbg !11324

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i.i.i: ; preds = %_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit._crit_edge.i.i.i
    #dbg_value(ptr %i.c, !1727, !DIExpression(), !11000)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !dbg !11326, !noalias !11225

.noexc5.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11320, !noalias !11263
  br label %.loopexit21.i, !dbg !11315

bb.j:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !11327, !noalias !11263
  unreachable, !dbg !11327

.loopexit.i:                                      ; preds = %bb.n, %bb.l, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
    #dbg_value(ptr %i.g, !3709, !DIExpression(), !11002)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i unwind label %bb.o, !dbg !11328, !noalias !11225

bb.k:                                             ; preds = %_RINvXs7_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_13FlatMapAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB14_5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !11329, !noalias !11225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11323, !noalias !11263
  %.sroa.08.0.copyload.i = load i64, ptr %i.c, align 8, !dbg !11330, !noalias !11263 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !dbg !11330, !noalias !11263 ; 2 uses
  %i.ab = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !dbg !11330, !noalias !11263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11320, !noalias !11263
  switch i64 %.sroa.08.0.copyload.i, label %bb.l [
    i64 -2, label %.loopexit21.i
    i64 -1, label %.loopexit22.i
  ], !dbg !11331

.loopexit21.i:                                    ; preds = %bb.k, %bb.e, %.noexc5.i
  %.sroa.9.011.i = phi ptr [ %i.v, %bb.e ], [ %.pre.i.i.i, %.noexc5.i ], [ %.sroa.4.0.copyload.i, %bb.k ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.011.i) ]
    #dbg_value(ptr %.sroa.9.011.i, !11118, !DIExpression(), !11003)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11332
  store ptr %.sroa.9.011.i, ptr %i.ac, align 8, !dbg !11332, !alias.scope !11224
  store i64 1, ptr %0, align 8, !dbg !11332, !alias.scope !11224
    #dbg_value(ptr %i.g, !3709, !DIExpression(), !11005)
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !11333, !noalias !11225
  br label %_RINvXNvXs3f_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtBc_7Visitor9visit_mapINtNtNtCsbmN5fM2HLz5_5serde7private2de13FlatMapAccessNtNtB31_5error5ErrorEECsi2C7WdEh0SA_3h3i.exit, !dbg !11334

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11335, !noalias !11225
  store i64 %.sroa.08.0.copyload.i, ptr %i.f, align 8, !dbg !11335, !noalias !11225
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !dbg !11335, !noalias !11225
  store i64 %i.ab, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i, align 8, !dbg !11335, !noalias !11225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11336, !noalias !11225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13.sroa.7.i, i64 72, i1 false), !dbg !11336, !noalias !11225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11337, !noalias !11225
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE6insertCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.e)
          to label %bb.m unwind label %.loopexit.i, !dbg !11338, !noalias !11225

.loopexit22.i:                                    ; preds = %bb.k, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !11340, !noalias !11279
  store i64 0, ptr %0, align 8, !dbg !11339, !alias.scope !11224
  br label %_RINvXNvXs3f_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtBc_7Visitor9visit_mapINtNtNtCsbmN5fM2HLz5_5serde7private2de13FlatMapAccessNtNtB31_5error5ErrorEECsi2C7WdEh0SA_3h3i.exit, !dbg !11334

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.d, !11281, !DIExpression(), !11012)
  %i.ae = load i64, ptr %i.d, align 8, !dbg !11341, !range !11294, !alias.scope !11295, !noalias !11225, !noundef !1368
  %i.af = icmp eq i64 %i.ae, -1, !dbg !11341
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i, label %bb.n, !dbg !11341

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i unwind label %.loopexit.i, !dbg !11341, !noalias !11225

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11342, !noalias !11225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11343, !noalias !11225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11343, !noalias !11225
  br label %.backedge, !dbg !11302

bb.o:                                             ; preds = %.body.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !11344, !noalias !11225
  unreachable, !dbg !11344

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !11344

_RINvXNvXs3f_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtBc_7Visitor9visit_mapINtNtNtCsbmN5fM2HLz5_5serde7private2de13FlatMapAccessNtNtB31_5error5ErrorEECsi2C7WdEh0SA_3h3i.exit: ; preds = %.loopexit21.i, %.loopexit22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11334, !noalias !11225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.i), !dbg !11345
  ret void, !dbg !11346
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_19FlatMapDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtB2Z_9EventDataNtB1P_11Deserialize11deserialize9___VisitorECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 !dbg !11348 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !11367, !DIExpression(), !11374)
    #dbg_value(ptr %2, !11370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11374)
    #dbg_value(i64 %3, !11370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11374)
    #dbg_value(ptr %4, !11368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11374)
    #dbg_value(i64 %5, !11368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11374)
    #dbg_declare(ptr poison, !11369, !DIExpression(), !11375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11422
    #dbg_value(ptr %1, !11376, !DIExpression(), !11385)
    #dbg_value(ptr %1, !11386, !DIExpression(), !11390)
    #dbg_value(ptr %1, !11391, !DIExpression(), !11397)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11423
  %i.c = load ptr, ptr %i.b, align 8, !dbg !11423, !nonnull !1368, !noundef !1368 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11424
  %i.e = load i64, ptr %i.d, align 8, !dbg !11424, !noundef !1368
    #dbg_value(i64 %i.e, !11401, !DIExpression(), !11411)
    #dbg_value(i64 %i.e, !11414, !DIExpression(), !11418)
    #dbg_value(ptr %i.c, !11412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11419)
    #dbg_value(ptr %i.c, !11405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11420)
    #dbg_value(i64 %i.e, !11412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11419)
    #dbg_value(i64 %i.e, !11405, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11420)
    #dbg_value(ptr %i.c, !11406, !DIExpression(), !11421)
    #dbg_value(ptr %i.c, !11415, !DIExpression(), !11418)
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.e, !dbg !11425
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !11422
  store ptr %i.c, ptr %i.g, align 8, !dbg !11422
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !11422
  store ptr %i.f, ptr %i.h, align 8, !dbg !11422
  store i8 -1, ptr %i.a, align 8, !dbg !11422
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !11422
  store ptr %4, ptr %i.i, align 8, !dbg !11422
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !11422
  store i64 %5, ptr %i.j, align 8, !dbg !11422
  call void @_RINvXs1_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBb_9EventDataNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtNtCsbmN5fM2HLz5_5serde7private2de16FlatStructAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !dbg !11426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11427
  ret void, !dbg !11428
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_16FlatStructAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seedNtNtB6_7content27TagContentOtherFieldVisitorECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11441 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !11491, !DIExpression(), !11501)
    #dbg_declare(ptr %2, !11492, !DIExpression(), !11502)
    #dbg_declare(ptr %i.e, !11496, !DIExpression(), !11503)
    #dbg_declare(ptr poison, !11497, !DIExpression(), !11504)
    #dbg_declare(ptr %i.c, !11505, !DIExpression(), !11530)
    #dbg_declare(ptr poison, !11531, !DIExpression(), !11534)
    #dbg_value(i64 1, !11535, !DIExpression(), !11542)
    #dbg_declare(ptr poison, !11525, !DIExpression(), !11565)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11587 ; 2 uses
    #dbg_value(ptr %i.f, !11494, !DIExpression(), !11566)
    #dbg_value(ptr %i.f, !11560, !DIExpression(), !11567)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
    #dbg_value(ptr poison, !11553, !DIExpression(), !11568)
  %i.h = load ptr, ptr %i.f, align 8, !dbg !11588, !nonnull !1368, !noundef !1368 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !11589, !nonnull !1368, !noundef !1368 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i, !dbg !11590
  br i1 %i.j, label %._crit_edge, label %.lr.ph, !dbg !11572

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load ptr, ptr %i.k, align 8, !dbg !11591
  %.pre18 = load i64, ptr %i.l, align 8, !dbg !11591
  br label %bb.b, !dbg !11572

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.m = phi ptr [ %i.h, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64, !dbg !11592 ; 3 uses
  store ptr %i.n, ptr %i.f, align 8, !dbg !11593
    #dbg_value(ptr %i.m, !11495, !DIExpression(), !11573)
  call void @_RNvNtNtCsbmN5fM2HLz5_5serde7private2de19flat_map_take_entry(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre, i64 noundef %.pre18), !dbg !11594
  %i.o = load i8, ptr %i.d, align 8, !dbg !11594, !range !4276, !noundef !1368
  %.not = icmp eq i8 %i.o, -1, !dbg !11594
  br i1 %.not, label %bb.e, label %bb.c, !dbg !11595

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11596
  store i8 -1, ptr %i.p, align 1, !dbg !11596
  store i8 0, ptr %0, align 8, !dbg !11596
  br label %bb.i, !dbg !11597

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !11503
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !11504 ; 2 uses
    #dbg_value(ptr %1, !11574, !DIExpression(), !11463)
  %i.r = load i8, ptr %1, align 8, !dbg !11598, !range !4276, !alias.scope !11578, !noundef !1368
  %i.s = icmp eq i8 %i.r, -1, !dbg !11598
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentEECsi2C7WdEh0SA_3h3i.exit, label %bb.d, !dbg !11598

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentEECsi2C7WdEh0SA_3h3i.exit unwind label %bb.j, !dbg !11598

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !11553, !DIExpression(), !11568)
    #dbg_value(ptr %i.n, !11561, !DIExpression(), !11579)
    #dbg_value(ptr %i.n, !11536, !DIExpression(), !11542)
    #dbg_value(ptr %i.i, !11562, !DIExpression(), !11580)
    #dbg_value(ptr poison, !11569, !DIExpression(), !11581)
    #dbg_value(ptr poison, !11570, !DIExpression(), !11582)
  %i.t = icmp eq ptr %i.n, %i.i, !dbg !11590
  br i1 %i.t, label %._crit_edge, label %bb.b, !dbg !11572

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentEECsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !dbg !11599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !11600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !11601
  call void @_RINvXsp_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentNtB6_27TagContentOtherFieldVisitorNtNtCs9xKKqPmwf7Y_10serde_core2de15DeserializeSeed11deserializeINtB6_19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11603
  %i.u = load i8, ptr %i.c, align 8, !dbg !11604, !range !11583, !noundef !1368
  %i.v = trunc nuw i8 %i.u to i1, !dbg !11604
  br i1 %i.v, label %bb.f, label %bb.g, !dbg !11605

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentEECsi2C7WdEh0SA_3h3i.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11606
  %i.x = load ptr, ptr %i.w, align 8, !dbg !11606, !nonnull !1368, !align !2591, !noundef !1368
    #dbg_value(ptr %i.x, !11527, !DIExpression(), !11584)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11607
  store ptr %i.x, ptr %i.y, align 8, !dbg !11607
  br label %bb.h, !dbg !11608

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentEECsi2C7WdEh0SA_3h3i.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !11609
  %i.aa = load i8, ptr %i.z, align 1, !dbg !11609, !range !11585, !noundef !1368
    #dbg_value(i8 %i.aa, !11526, !DIExpression(), !11586)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11610
  store i8 %i.aa, ptr %i.ab, align 1, !dbg !11610
  br label %bb.h, !dbg !11611

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i8 [ 0, %bb.g ], [ 1, %bb.f ], !dbg !11612
  store i8 %storemerge, ptr %0, align 8, !dbg !11612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11614
  br label %bb.i, !dbg !11597

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void, !dbg !11615

bb.j:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !dbg !11599
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #17
          to label %bb.l unwind label %bb.k, !dbg !11614

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !11616
  unreachable, !dbg !11616

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ac, !dbg !11616
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCsbmN5fM2HLz5_5serde7private2deINtB6_16FlatStructAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtB6_31AdjacentlyTaggedEnumVariantSeedNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtB3s_9EventDataNtB1M_11Deserialize11deserialize7___FieldEECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11619 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !11641, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !11644)
    #dbg_declare(ptr poison, !11637, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !11645)
    #dbg_value(ptr %1, !11635, !DIExpression(), !11646)
    #dbg_declare(ptr %2, !11636, !DIExpression(), !11647)
end_hunk_0
