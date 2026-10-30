Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_server.quiche_server.73e48873ebe39462-cgu.15?download=true
inline.NumInlined: 327
inline.NumDeleted: 135
begin_hunk_0_@_RNvXsM_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyjEj1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs9WTr9tUZcLm_13quiche_server:bb.a
    #dbg_value(ptr %1, !10773, !DIExpression(), !10739)
    #dbg_value(ptr %1, !10786, !DIExpression(), !10742)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10802 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !10802, !alias.scope !10788, !noundef !1467 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1, !dbg !10802        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10803 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !10803, !alias.scope !10788
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !10803
    #dbg_value(i64 %.sink21.i, !10754, !DIExpression(), !10789)
    #dbg_value(ptr %1, !10761, !DIExpression(), !10765)
    #dbg_value(ptr %1, !10790, !DIExpression(), !10749)
  %.sink16.i = select i1 %i.c, ptr %i.d, ptr %i.a, !dbg !10804
    #dbg_value(ptr %.sink16.i, !10762, !DIExpression(), !10801)
  store i64 0, ptr %.sink16.i, align 8, !dbg !10805
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !10806
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10807
  store i64 0, ptr %i.f, align 8, !dbg !10807
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10807
  store i64 %.sink21.i, ptr %i.g, align 8, !dbg !10807
  ret void, !dbg !10808
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXsO_Cs5kGgRUzsVpH_8smallvecQINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #4 !dbg !10811 {
bb.a:
    #dbg_value(ptr %0, !10836, !DIExpression(), !10838)
    #dbg_value(ptr %0, !10839, !DIExpression(), !10847)
    #dbg_value(ptr %0, !4136, !DIExpression(), !10815)
    #dbg_value(ptr %0, !10848, !DIExpression(), !10818)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10874
  %i.b = load i64, ptr %i.a, align 8, !dbg !10874, !alias.scope !10850, !noundef !1467 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1, !dbg !10874        ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !10875, !alias.scope !10850, !nonnull !1467
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10875
  %.sink17.i = select i1 %i.c, ptr %i.d, ptr %0, !dbg !10875 ; 2 uses
  %.val = load i64, ptr %i.e, align 8, !dbg !10876
  %i.f = select i1 %i.c, i64 %.val, i64 %i.b, !dbg !10875
    #dbg_value(i64 %i.f, !10851, !DIExpression(), !10861)
    #dbg_value(i64 %i.f, !10864, !DIExpression(), !10870)
    #dbg_value(ptr %.sink17.i, !10862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10871)
    #dbg_value(ptr %.sink17.i, !10855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10872)
    #dbg_value(i64 %i.f, !10862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10871)
    #dbg_value(i64 %i.f, !10855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10872)
    #dbg_value(ptr %.sink17.i, !10856, !DIExpression(), !10873)
    #dbg_value(ptr %.sink17.i, !10867, !DIExpression(), !10870)
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %.sink17.i, i64 %i.f, !dbg !10877
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sink17.i, 0, !dbg !10878
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1, !dbg !10878
  ret { ptr, ptr } %i.i, !dbg !10878
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_Cs5kGgRUzsVpH_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !10880 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !10885, !DIExpression(), !10889)
    #dbg_value(ptr %1, !10886, !DIExpression(), !10889)
  %i.b = load i64, ptr %0, align 8, !dbg !10892, !range !10890, !noundef !1467
  %.not = icmp eq i64 %i.b, 0, !dbg !10892
  br i1 %.not, label %bb.c, label %bb.b, !dbg !10892

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10893
    #dbg_value(ptr %0, !10887, !DIExpression(), !10891)
  store ptr %0, ptr %i.a, align 8, !dbg !10893
    #dbg_value(ptr %i.a, !10887, !DIExpression(DW_OP_deref), !10891)
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18), !dbg !10894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10895
  br label %bb.d, !dbg !10895

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 16), !dbg !10892
  br label %bb.d, !dbg !10892

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !10896
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10903 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !10946, !DIExpression(), !10951)
    #dbg_value(ptr poison, !10953, !DIExpression(), !10906)
    #dbg_value(ptr poison, !10959, !DIExpression(), !10909)
    #dbg_declare(ptr poison, !10961, !DIExpression(), !10913)
    #dbg_declare(ptr poison, !10965, !DIExpression(), !10919)
    #dbg_value(ptr %0, !10963, !DIExpression(), !10920)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10984
  %i.b = load ptr, ptr %0, align 8, !dbg !10985, !nonnull !1467, !noundef !1467
    #dbg_value(ptr %i.b, !10972, !DIExpression(), !10921)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10986
  %i.d = load i64, ptr %i.c, align 8, !dbg !10986, !noundef !1467
    #dbg_value(i64 %i.d, !10973, !DIExpression(), !10921)
    #dbg_value(ptr %i.b, !10974, !DIExpression(), !10922)
    #dbg_value(i64 %i.d, !10975, !DIExpression(), !10923)
  store i64 %i.d, ptr %i.a, align 8, !dbg !10987
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10987
  store ptr %i.b, ptr %i.e, align 8, !dbg !10987
    #dbg_value(ptr %i.a, !10978, !DIExpression(), !10926)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10989
  ret void, !dbg !10990
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10994 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !11026, !DIExpression(), !11031)
    #dbg_value(ptr poison, !11033, !DIExpression(), !10997)
    #dbg_value(ptr poison, !11039, !DIExpression(), !11000)
    #dbg_declare(ptr poison, !11041, !DIExpression(), !11004)
    #dbg_declare(ptr poison, !11045, !DIExpression(), !11009)
    #dbg_value(ptr %0, !11043, !DIExpression(), !11010)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11054
  %i.b = load ptr, ptr %0, align 8, !dbg !11055, !nonnull !1467, !noundef !1467
    #dbg_value(ptr %i.b, !11049, !DIExpression(), !11011)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11056
  %i.d = load i64, ptr %i.c, align 8, !dbg !11056, !noundef !1467
    #dbg_value(i64 %i.d, !11050, !DIExpression(), !11011)
    #dbg_value(ptr %i.b, !11051, !DIExpression(), !11012)
    #dbg_value(i64 %i.d, !11052, !DIExpression(), !11013)
  store i64 %i.d, ptr %i.a, align 8, !dbg !11057
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11057
  store ptr %i.b, ptr %i.e, align 8, !dbg !11057
    #dbg_value(ptr %i.a, !3747, !DIExpression(), !11015)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !11058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11059
  ret void, !dbg !11060
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !11061 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11076)
    #dbg_value(ptr %0, !11077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11088)
    #dbg_value(ptr %0, !11089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11096)
    #dbg_value(i64 %1, !11073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11076)
    #dbg_value(i64 %1, !11077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11088)
    #dbg_value(i64 %1, !11089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11096)
    #dbg_value(ptr %2, !11074, !DIExpression(), !11076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11106
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !11107
    #dbg_value(i64 %1, !11091, !DIExpression(), !11097)
    #dbg_value(i64 %1, !11098, !DIExpression(), !11104)
    #dbg_value(ptr %0, !11092, !DIExpression(), !11105)
    #dbg_value(ptr %0, !11101, !DIExpression(), !11104)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !11108
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !11109
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !11110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11111
  ret i1 %i.d, !dbg !11112
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsu_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !11113 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11133, !DIExpression(), !11136)
    #dbg_value(ptr %0, !11137, !DIExpression(), !11149)
    #dbg_value(ptr %1, !11134, !DIExpression(), !11136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11175
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11176
    #dbg_value(ptr %0, !4199, !DIExpression(), !11118)
    #dbg_value(ptr %0, !4212, !DIExpression(), !11120)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11177
  %i.c = load i64, ptr %i.b, align 8, !dbg !11177, !alias.scope !11150, !noundef !1467 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !11177        ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !11178, !alias.scope !11150, !nonnull !1467
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11178
  %i.g = load i64, ptr %i.f, align 8, !dbg !11178, !alias.scope !11150
  %.sink22.i = select i1 %i.d, ptr %i.e, ptr %0, !dbg !11178 ; 2 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !11178
    #dbg_value(i64 %.sink21.i, !11151, !DIExpression(), !11164)
    #dbg_value(i64 %.sink21.i, !11167, !DIExpression(), !11171)
    #dbg_value(ptr %.sink22.i, !11165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11172)
    #dbg_value(ptr %.sink22.i, !11155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11173)
    #dbg_value(i64 %.sink21.i, !11165, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11172)
    #dbg_value(i64 %.sink21.i, !11155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11173)
    #dbg_value(ptr %.sink22.i, !11156, !DIExpression(), !11174)
    #dbg_value(ptr %.sink22.i, !11168, !DIExpression(), !11171)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink22.i, i64 %.sink21.i, !dbg !11179
  %i.i = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink22.i, ptr noundef nonnull %i.h), !dbg !11180
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i), !dbg !11181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11182
  ret i1 %i.j, !dbg !11183
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11185 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !11208, !DIExpression(), !11212)
    #dbg_value(ptr %0, !11213, !DIExpression(), !11216)
    #dbg_declare(ptr %i.a, !11217, !DIExpression(), !11231)
    #dbg_declare(ptr poison, !11232, !DIExpression(), !11242)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !11294
  %i.c = load i64, ptr %i.b, align 8, !dbg !11294, !noundef !1467 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !11294
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !11295

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0, !dbg !11296
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit, label %.lr.ph11, !dbg !11296

.lr.ph11:                                         ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(128) %0), !dbg !11296
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit, !dbg !11296

common.resume:                                    ; preds = %bb.d
  resume { ptr, i32 } %i.k, !dbg !11212

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !11266, !DIExpression(), !11277)
    #dbg_value(ptr %0, !11274, !DIExpression(), !11278)
  %i.f = load ptr, ptr %0, align 8, !dbg !11297, !nonnull !1467, !noundef !1467
    #dbg_value(ptr %i.f, !11209, !DIExpression(), !11279)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11298
  %i.h = load i64, ptr %i.g, align 8, !dbg !11299, !noundef !1467
    #dbg_value(i64 %i.h, !11210, !DIExpression(), !11279)
    #dbg_value(i64 %i.h, !11247, !DIExpression(), !11280)
    #dbg_value(i64 %i.h, !11237, !DIExpression(), !11281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11240
    #dbg_value(ptr %i.f, !11246, !DIExpression(), !11280)
    #dbg_value(ptr %i.f, !11236, !DIExpression(), !11281)
    #dbg_value(i64 %i.c, !11248, !DIExpression(), !11280)
    #dbg_value(i64 %i.c, !11238, !DIExpression(), !11281)
  store i64 %i.c, ptr %i.a, align 8, !dbg !11300
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11300
  store ptr %i.f, ptr %i.i, align 8, !dbg !11300
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11300
  store i64 %i.h, ptr %i.j, align 8, !dbg !11300
    #dbg_value(ptr %i.a, !11283, !DIExpression(), !11202)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECs9WTr9tUZcLm_13quiche_server.exit unwind label %bb.d, !dbg !11301

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !11288, !DIExpression(), !11205)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e, !dbg !11302

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !11301
  unreachable, !dbg !11301

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.c
    #dbg_value(ptr %i.a, !11288, !DIExpression(), !11207)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !11303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11304
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit, !dbg !11305

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.b, %.lr.ph11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECs9WTr9tUZcLm_13quiche_server.exit
  ret void, !dbg !11306
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyjEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11308 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !11329, !DIExpression(), !11333)
    #dbg_value(ptr %0, !11334, !DIExpression(), !11337)
    #dbg_declare(ptr %i.a, !11338, !DIExpression(), !11352)
    #dbg_declare(ptr poison, !11353, !DIExpression(), !11364)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11401
  %i.c = load i64, ptr %i.b, align 8, !dbg !11401, !noundef !1467 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !11401
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !11402

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !11373, !DIExpression(), !11384)
    #dbg_value(ptr %0, !11381, !DIExpression(), !11385)
  %i.e = load ptr, ptr %0, align 8, !dbg !11403, !nonnull !1467, !noundef !1467
    #dbg_value(ptr %i.e, !11330, !DIExpression(), !11386)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11404
  %i.g = load i64, ptr %i.f, align 8, !dbg !11405, !noundef !1467
    #dbg_value(i64 %i.g, !11331, !DIExpression(), !11386)
    #dbg_value(i64 %i.g, !11369, !DIExpression(), !11387)
    #dbg_value(i64 %i.g, !11359, !DIExpression(), !11388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11362
    #dbg_value(ptr %i.e, !11368, !DIExpression(), !11387)
    #dbg_value(ptr %i.e, !11358, !DIExpression(), !11388)
    #dbg_value(i64 %i.c, !11370, !DIExpression(), !11387)
    #dbg_value(i64 %i.c, !11360, !DIExpression(), !11388)
  store i64 %i.c, ptr %i.a, align 8, !dbg !11406
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11406
  store ptr %i.e, ptr %i.h, align 8, !dbg !11406
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11406
  store i64 %i.g, ptr %i.i, align 8, !dbg !11406
    #dbg_value(ptr %i.a, !11390, !DIExpression(), !11321)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyjEEECs9WTr9tUZcLm_13quiche_server.exit unwind label %bb.c, !dbg !11407

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !11395, !DIExpression(), !11324)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyjEEECs9WTr9tUZcLm_13quiche_server.exit.i unwind label %bb.d, !dbg !11408

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !11407
  unreachable, !dbg !11407

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyjEEECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !11407

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyjEEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !11395, !DIExpression(), !11326)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !11409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11410
  br label %bb.e, !dbg !11411

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyjEEECs9WTr9tUZcLm_13quiche_server.exit
  ret void, !dbg !11412
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !683 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !3687, !DIExpression(), !11419)
    #dbg_value(ptr %0, !3692, !DIExpression(), !11421)
    #dbg_declare(ptr %i.a, !3699, !DIExpression(), !11423)
    #dbg_declare(ptr poison, !3713, !DIExpression(), !11426)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11433
  %i.c = load i64, ptr %i.b, align 8, !dbg !11433, !noundef !1467 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !11433
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !11434

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3730, !DIExpression(), !11428)
    #dbg_value(ptr %0, !3739, !DIExpression(), !11429)
  %i.e = load ptr, ptr %0, align 8, !dbg !11435, !nonnull !1467, !noundef !1467
    #dbg_value(ptr %i.e, !3689, !DIExpression(), !11430)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11436
  %i.g = load i64, ptr %i.f, align 8, !dbg !11437, !noundef !1467
    #dbg_value(i64 %i.g, !3690, !DIExpression(), !11430)
    #dbg_value(i64 %i.g, !3726, !DIExpression(), !11431)
    #dbg_value(i64 %i.g, !3719, !DIExpression(), !11432)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11424
    #dbg_value(ptr %i.e, !3725, !DIExpression(), !11431)
    #dbg_value(ptr %i.e, !3718, !DIExpression(), !11432)
    #dbg_value(i64 %i.c, !3727, !DIExpression(), !11431)
    #dbg_value(i64 %i.c, !3720, !DIExpression(), !11432)
  store i64 %i.c, ptr %i.a, align 8, !dbg !11438
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11438
  store ptr %i.e, ptr %i.h, align 8, !dbg !11438
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11438
  store i64 %i.g, ptr %i.i, align 8, !dbg !11438
    #dbg_value(ptr %i.a, !3742, !DIExpression(), !11414)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECs9WTr9tUZcLm_13quiche_server.exit unwind label %bb.c, !dbg !11439

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3747, !DIExpression(), !11416)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECs9WTr9tUZcLm_13quiche_server.exit.i unwind label %bb.d, !dbg !11440

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !11439
  unreachable, !dbg !11439

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !11439

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !3747, !DIExpression(), !11418)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !11441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11442
  br label %bb.e, !dbg !11443

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECs9WTr9tUZcLm_13quiche_server.exit
  ret void, !dbg !11444
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11446 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !11459, !DIExpression(), !11463)
    #dbg_value(ptr %0, !11464, !DIExpression(), !11467)
    #dbg_declare(ptr %i.a, !11468, !DIExpression(), !11473)
    #dbg_declare(ptr poison, !11474, !DIExpression(), !11484)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11501
  %i.c = load i64, ptr %i.b, align 8, !dbg !11501, !noundef !1467 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8, !dbg !11501
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !11502

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !11492, !DIExpression(), !11496)
    #dbg_value(ptr %0, !11493, !DIExpression(), !11497)
  %i.e = load ptr, ptr %0, align 8, !dbg !11503, !nonnull !1467, !noundef !1467
    #dbg_value(ptr %i.e, !11460, !DIExpression(), !11498)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11504
  %i.g = load i64, ptr %i.f, align 8, !dbg !11505, !noundef !1467
    #dbg_value(i64 %i.g, !11461, !DIExpression(), !11498)
    #dbg_value(i64 %i.g, !11489, !DIExpression(), !11499)
    #dbg_value(i64 %i.g, !11479, !DIExpression(), !11500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11482
    #dbg_value(ptr %i.e, !11488, !DIExpression(), !11499)
    #dbg_value(ptr %i.e, !11478, !DIExpression(), !11500)
    #dbg_value(i64 %i.c, !11490, !DIExpression(), !11499)
    #dbg_value(i64 %i.c, !11480, !DIExpression(), !11500)
  store i64 %i.c, ptr %i.a, align 8, !dbg !11506
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11506
  store ptr %i.e, ptr %i.h, align 8, !dbg !11506
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11506
  store i64 %i.g, ptr %i.i, align 8, !dbg !11506
    #dbg_value(ptr %i.a, !3782, !DIExpression(), !11454)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9WTr9tUZcLm_13quiche_server.exit unwind label %bb.c, !dbg !11507

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3787, !DIExpression(), !11456)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs9WTr9tUZcLm_13quiche_server.exit.i unwind label %bb.d, !dbg !11508

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !11507
  unreachable, !dbg !11507

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !11507

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !3787, !DIExpression(), !11458)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !11509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11510
  br label %bb.e, !dbg !11511

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9WTr9tUZcLm_13quiche_server.exit
  ret void, !dbg !11512
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7
end_hunk_0
