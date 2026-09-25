Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.12?download=true
inline.NumInlined: 417
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !dbg !14759 {
bb.a:
    #dbg_value(ptr %0, !14760, !DIExpression(), !14762)
  ret void, !dbg !14763
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !dbg !14764 {
bb.a:
    #dbg_value(ptr %0, !14765, !DIExpression(), !14767)
  ret void, !dbg !14768
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !dbg !14772 {
bb.a:
    #dbg_value(ptr %0, !14783, !DIExpression(), !14785)
  ret void, !dbg !14786
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !dbg !14789 {
bb.a:
    #dbg_value(ptr %0, !14800, !DIExpression(), !14802)
  ret void, !dbg !14803
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14804 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !14851, !DIExpression(), !14854)
    #dbg_value(ptr %0, !14855, !DIExpression(), !14858)
    #dbg_value(ptr %0, !14859, !DIExpression(), !14862)
    #dbg_value(ptr %0, !14863, !DIExpression(), !14866)
    #dbg_value(ptr %1, !14852, !DIExpression(), !14854)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14899
  %i.d = load ptr, ptr %i.c, align 8, !dbg !14899, !nonnull !1013, !noundef !1013 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14900
  %i.f = load i64, ptr %i.e, align 8, !dbg !14900, !noundef !1013 ; 2 uses
    #dbg_value(ptr %i.d, !14870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14813)
    #dbg_value(ptr %i.d, !14876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14816)
    #dbg_value(ptr %i.d, !14878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14822)
    #dbg_value(i64 %i.f, !14870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14813)
    #dbg_value(i64 %i.f, !14876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14816)
    #dbg_value(i64 %i.f, !14878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14822)
    #dbg_value(ptr %1, !14874, !DIExpression(), !14813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14901, !noalias !14883
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !14902, !noalias !14884
    #dbg_value(i64 %i.f, !14879, !DIExpression(), !14826)
    #dbg_value(i64 %i.f, !14885, !DIExpression(), !14829)
    #dbg_value(ptr %i.d, !14880, !DIExpression(), !14830)
    #dbg_value(ptr %i.d, !14886, !DIExpression(), !14829)
  %.idx.i = mul nuw nsw i64 %i.f, 24, !dbg !14903
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i, !dbg !14903
    #dbg_value(ptr %i.b, !14888, !DIExpression(), !14835)
    #dbg_value(ptr %i.d, !14894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14835)
    #dbg_value(ptr %i.g, !14894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14835)
    #dbg_value(ptr %i.d, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14836)
    #dbg_value(ptr %i.g, !14895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14836)
    #dbg_value(ptr undef, !3987, !DIExpression(), !14838)
    #dbg_value(i64 1, !4023, !DIExpression(), !14840)
    #dbg_value(ptr %i.d, !3997, !DIExpression(), !14841)
    #dbg_value(ptr %i.d, !4027, !DIExpression(), !14840)
    #dbg_value(ptr %i.g, !3998, !DIExpression(), !14842)
    #dbg_value(ptr poison, !4030, !DIExpression(), !14844)
    #dbg_value(ptr poison, !4033, !DIExpression(), !14845)
  %i.h = icmp eq i64 %i.f, 0, !dbg !14904
  br i1 %i.h, label %_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche.exit, label %.lr.ph.i.i, !dbg !14905

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07.i.i, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14836)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24, !dbg !14906 ; 2 uses
    #dbg_value(ptr %i.i, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14836)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14907, !noalias !14898
    #dbg_value(ptr %.sroa.0.07.i.i, !14896, !DIExpression(), !14848)
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !dbg !14907, !noalias !14898, !captures !1314
    #dbg_value(ptr %i.a, !14896, !DIExpression(DW_OP_deref), !14848)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !dbg !14908 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14909, !noalias !14898
    #dbg_value(ptr undef, !3987, !DIExpression(), !14838)
    #dbg_value(i64 1, !4023, !DIExpression(), !14840)
    #dbg_value(ptr %i.i, !3997, !DIExpression(), !14841)
    #dbg_value(ptr %i.i, !4027, !DIExpression(), !14840)
    #dbg_value(ptr %i.g, !3998, !DIExpression(), !14842)
    #dbg_value(ptr poison, !4030, !DIExpression(), !14844)
    #dbg_value(ptr poison, !4033, !DIExpression(), !14845)
  %i.k = icmp eq ptr %i.i, %i.g, !dbg !14904
  br i1 %i.k, label %_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche.exit, label %.lr.ph.i.i, !dbg !14905

_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %.lr.ph.i.i, %bb.a
    #dbg_value(ptr poison, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14836)
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !14910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14911, !noalias !14883
  ret i1 %i.l, !dbg !14912
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !14913 {
bb.a:
    #dbg_value(ptr %0, !14924, !DIExpression(), !14927)
    #dbg_value(ptr %0, !14928, !DIExpression(), !14936)
    #dbg_value(ptr %0, !14937, !DIExpression(), !14941)
    #dbg_value(ptr %0, !14942, !DIExpression(), !14948)
    #dbg_value(ptr %1, !14925, !DIExpression(), !14927)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14952
  %i.b = load ptr, ptr %i.a, align 8, !dbg !14952, !nonnull !1013, !noundef !1013
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14953
  %i.d = load i64, ptr %i.c, align 8, !dbg !14953, !noundef !1013
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCs3f36owOmepS_6quiche2h36HeaderNtB5_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !14954
  ret i1 %i.e, !dbg !14955
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsu_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14956 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !14995, !DIExpression(), !14998)
    #dbg_value(ptr %0, !14999, !DIExpression(), !15010)
    #dbg_value(ptr %1, !14996, !DIExpression(), !14998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15048
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !15049
    #dbg_value(ptr %0, !3831, !DIExpression(), !14961)
    #dbg_value(ptr %0, !3844, !DIExpression(), !14963)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15050
  %i.d = load i64, ptr %i.c, align 8, !dbg !15050, !alias.scope !15011, !noalias !15012, !noundef !1013 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 4, !dbg !15050        ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !15051, !alias.scope !15011, !noalias !15012, !nonnull !1013
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15051
  %i.h = load i64, ptr %i.g, align 8, !dbg !15051, !alias.scope !15011, !noalias !15012
  %.sink22.i = select i1 %i.e, ptr %i.f, ptr %0, !dbg !15051 ; 2 uses
  %.sink21.i = select i1 %i.e, i64 %i.h, i64 %i.d, !dbg !15051 ; 2 uses
    #dbg_value(i64 %.sink21.i, !15013, !DIExpression(), !15026)
    #dbg_value(i64 %.sink21.i, !15029, !DIExpression(), !15033)
    #dbg_value(ptr %.sink22.i, !15027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15034)
    #dbg_value(ptr %.sink22.i, !15017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15035)
    #dbg_value(i64 %.sink21.i, !15027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15034)
    #dbg_value(i64 %.sink21.i, !15017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15035)
    #dbg_value(ptr %.sink22.i, !15018, !DIExpression(), !15036)
    #dbg_value(ptr %.sink22.i, !15030, !DIExpression(), !15033)
  %.idx = shl nuw nsw i64 %.sink21.i, 4, !dbg !15052
  %i.i = getelementptr inbounds nuw i8, ptr %.sink22.i, i64 %.idx, !dbg !15052
    #dbg_value(ptr %i.b, !15037, !DIExpression(), !14978)
    #dbg_value(ptr %.sink22.i, !15043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14978)
    #dbg_value(ptr %i.i, !15043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14978)
    #dbg_value(ptr %.sink22.i, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14979)
    #dbg_value(ptr %i.i, !15044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14979)
    #dbg_value(ptr undef, !3943, !DIExpression(), !14981)
    #dbg_value(i64 1, !3957, !DIExpression(), !14983)
    #dbg_value(ptr %.sink22.i, !3953, !DIExpression(), !14984)
    #dbg_value(ptr %.sink22.i, !3961, !DIExpression(), !14983)
    #dbg_value(ptr %i.i, !3954, !DIExpression(), !14985)
    #dbg_value(ptr poison, !3964, !DIExpression(), !14987)
    #dbg_value(ptr poison, !3967, !DIExpression(), !14988)
  %i.j = icmp eq i64 %.sink21.i, 0, !dbg !15053
  br i1 %i.j, label %_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECsa2e0UnRrdBM_12tokio_quiche.exit, label %.lr.ph.i, !dbg !15054

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.sink22.i, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07.i, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14979)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16, !dbg !15055 ; 2 uses
    #dbg_value(ptr %i.k, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14979)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15056, !noalias !15047
    #dbg_value(ptr %.sroa.0.07.i, !15045, !DIExpression(), !14991)
  store ptr %.sroa.0.07.i, ptr %i.a, align 8, !dbg !15056, !noalias !15047, !captures !1314
    #dbg_value(ptr %i.a, !15045, !DIExpression(DW_OP_deref), !14991)
  %i.l = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7), !dbg !15057 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15058, !noalias !15047
    #dbg_value(ptr undef, !3943, !DIExpression(), !14981)
    #dbg_value(i64 1, !3957, !DIExpression(), !14983)
    #dbg_value(ptr %i.k, !3953, !DIExpression(), !14984)
    #dbg_value(ptr %i.k, !3961, !DIExpression(), !14983)
    #dbg_value(ptr %i.i, !3954, !DIExpression(), !14985)
    #dbg_value(ptr poison, !3964, !DIExpression(), !14987)
    #dbg_value(ptr poison, !3967, !DIExpression(), !14988)
  %i.m = icmp eq ptr %i.k, %i.i, !dbg !15053
  br i1 %i.m, label %_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECsa2e0UnRrdBM_12tokio_quiche.exit, label %.lr.ph.i, !dbg !15054

_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %.lr.ph.i, %bb.a
    #dbg_value(ptr poison, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14979)
  %i.n = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !15059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15060
  ret i1 %i.n, !dbg !15061
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15063 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !15092, !DIExpression(), !15096)
    #dbg_value(ptr %0, !15097, !DIExpression(), !15104)
    #dbg_declare(ptr %i.a, !15105, !DIExpression(), !15110)
    #dbg_declare(ptr poison, !15111, !DIExpression(), !15122)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !15151
  %i.c = load i64, ptr %i.b, align 8, !dbg !15151, !noundef !1013 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !15151
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !15152

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0, !dbg !15153
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECsa2e0UnRrdBM_12tokio_quiche.exit, label %.lr.ph17, !dbg !15153

.lr.ph17:                                         ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(128) %0), !dbg !15153
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECsa2e0UnRrdBM_12tokio_quiche.exit, !dbg !15153

common.resume:                                    ; preds = %.body.i
  resume { ptr, i32 } %i.q, !dbg !15096

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !15134, !DIExpression(), !15145)
    #dbg_value(ptr %0, !15142, !DIExpression(), !15146)
  %i.f = load ptr, ptr %0, align 8, !dbg !15154, !nonnull !1013, !noundef !1013 ; 3 uses
    #dbg_value(ptr %i.f, !15093, !DIExpression(), !15147)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15155
  %i.h = load i64, ptr %i.g, align 8, !dbg !15156, !noundef !1013 ; 5 uses
    #dbg_value(i64 %i.h, !15094, !DIExpression(), !15147)
    #dbg_value(i64 %i.h, !15127, !DIExpression(), !15148)
    #dbg_value(i64 %i.h, !15117, !DIExpression(), !15149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15120
    #dbg_value(ptr %i.f, !15126, !DIExpression(), !15148)
    #dbg_value(ptr %i.f, !15116, !DIExpression(), !15149)
    #dbg_value(i64 %i.c, !15128, !DIExpression(), !15148)
    #dbg_value(i64 %i.c, !15118, !DIExpression(), !15149)
  store i64 %i.c, ptr %i.a, align 8, !dbg !15157
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15157
  store ptr %i.f, ptr %i.i, align 8, !dbg !15157
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15157
  store i64 %i.h, ptr %i.j, align 8, !dbg !15157
    #dbg_value(ptr %i.a, !3094, !DIExpression(), !15074)
    #dbg_value(ptr poison, !3098, !DIExpression(), !15076)
    #dbg_value(ptr %i.f, !3101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15078)
    #dbg_value(ptr %i.f, !3112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15080)
    #dbg_value(i64 %i.h, !3101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15078)
    #dbg_value(i64 %i.h, !3112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15080)
    #dbg_value(ptr %i.f, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15082)
    #dbg_value(i64 %i.h, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15082)
  %i.k = icmp eq i64 %i.h, 0, !dbg !15158
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECsa2e0UnRrdBM_12tokio_quiche.exit, label %.lr.ph19, !dbg !15158

bb.d:                                             ; preds = %.lr.ph19
  %i.l = icmp eq i64 %i.n, %i.h, !dbg !15158
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECsa2e0UnRrdBM_12tokio_quiche.exit, label %.lr.ph19, !dbg !15158

.lr.ph19:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i18 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.0.0.i.i.i18, !dbg !15158
  %i.n = add nuw nsw i64 %.sroa.0.0.i.i.i18, 1, !dbg !15158 ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(128) %i.m)
          to label %bb.d unwind label %bb.f, !dbg !15158, !noalias !15150

bb.e:                                             ; preds = %.lr.ph21
  %i.o = add i64 %.sroa.0.1.i.i.i20, 1, !dbg !15158 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.h, !dbg !15158
  br i1 %i.p, label %.body.i, label %.lr.ph21, !dbg !15158

bb.f:                                             ; preds = %.lr.ph19
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.n, %i.h, !dbg !15158
  br i1 %i.r, label %.body.i, label %.lr.ph21, !dbg !15158

.lr.ph21:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i20 = phi i64 [ %i.o, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.0.1.i.i.i20, !dbg !15158
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(128) %i.s) #23
          to label %bb.e unwind label %bb.g, !dbg !15158, !noalias !15150

bb.g:                                             ; preds = %.lr.ph21
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !15158, !noalias !15150
  unreachable, !dbg !15158

.body.i:                                          ; preds = %bb.e, %bb.f
    #dbg_value(ptr %i.a, !3122, !DIExpression(), !15086)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.h, !dbg !15159

bb.h:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !15160
  unreachable, !dbg !15160

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.d, %bb.c
    #dbg_value(ptr %i.a, !3122, !DIExpression(), !15088)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !15161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15162
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECsa2e0UnRrdBM_12tokio_quiche.exit, !dbg !15163

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.b, %.lr.ph17, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECsa2e0UnRrdBM_12tokio_quiche.exit
  ret void, !dbg !15164
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !551 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !3308, !DIExpression(), !15169)
    #dbg_value(ptr %0, !3313, !DIExpression(), !15171)
    #dbg_declare(ptr %i.a, !3320, !DIExpression(), !15173)
    #dbg_declare(ptr poison, !3333, !DIExpression(), !15176)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15183
  %i.c = load i64, ptr %i.b, align 8, !dbg !15183, !noundef !1013 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !15183
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !15184

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3350, !DIExpression(), !15178)
    #dbg_value(ptr %0, !3359, !DIExpression(), !15179)
  %i.e = load ptr, ptr %0, align 8, !dbg !15185, !nonnull !1013, !noundef !1013
    #dbg_value(ptr %i.e, !3310, !DIExpression(), !15180)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15186
  %i.g = load i64, ptr %i.f, align 8, !dbg !15187, !noundef !1013
    #dbg_value(i64 %i.g, !3311, !DIExpression(), !15180)
    #dbg_value(i64 %i.g, !3346, !DIExpression(), !15181)
    #dbg_value(i64 %i.g, !3339, !DIExpression(), !15182)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15174
    #dbg_value(ptr %i.e, !3345, !DIExpression(), !15181)
    #dbg_value(ptr %i.e, !3338, !DIExpression(), !15182)
    #dbg_value(i64 %i.c, !3347, !DIExpression(), !15181)
    #dbg_value(i64 %i.c, !3340, !DIExpression(), !15182)
  store i64 %i.c, ptr %i.a, align 8, !dbg !15188
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15188
  store ptr %i.e, ptr %i.h, align 8, !dbg !15188
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15188
  store i64 %i.g, ptr %i.i, align 8, !dbg !15188
    #dbg_value(ptr %i.a, !3362, !DIExpression(), !15166)
    #dbg_value(ptr %i.a, !3367, !DIExpression(), !15168)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !15189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15190
  br label %bb.c, !dbg !15191

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !15192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 !dbg !15193 {
bb.a:
    #dbg_value(ptr %0, !15207, !DIExpression(), !15211)
  %.val = load ptr, ptr %0, align 8, !dbg !15212, !nonnull !1013, !noundef !1013
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15212
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !15212, !nonnull !1013, !noundef !1013
    #dbg_value(ptr poison, !4048, !DIExpression(), !15195)
    #dbg_value(i64 1, !4055, !DIExpression(), !15199)
    #dbg_value(ptr %.val1, !4053, !DIExpression(), !15200)
    #dbg_value(ptr %.val1, !4062, !DIExpression(), !15201)
    #dbg_value(ptr %.val, !4063, !DIExpression(), !15201)
    #dbg_value(ptr %.val1, !4059, !DIExpression(), !15202)
    #dbg_value(ptr %.val, !4060, !DIExpression(), !15202)
    #dbg_value(ptr %.val, !4057, !DIExpression(), !15203)
    #dbg_value(ptr %.val1, !4056, !DIExpression(), !15203)
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !15213
  %i.c = ptrtoint ptr %.val to i64, !dbg !15213
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !15213
  ret i64 %i.d, !dbg !15214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche2h36HeaderNtB6_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjhJQnPJPZyr_6boring5error5ErrorNtB6_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRTyyENtB6_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsR0KwQ2llQN_17prometheus_client8encoding4textyNtB4_6Encode6encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs6Hru1xGhrwY_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs83oNeXj4HCJ_8indexmap6BucketNtNtB7_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level5LevelINtNtBT_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2f_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche8recovery4SentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic8AckRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events5http310HttpHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4LostENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5AckedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3f36owOmepS_6quiche8recovery10congestion8recovery5AckedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTAhj8_jNtNtCsG258MDvU3F_3std4time7InstantEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtBT_3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeAhj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche8recovery4SentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTAhj8_jNtNtCsG258MDvU3F_3std4time7InstantEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtB1c_3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

end_hunk_0
