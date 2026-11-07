Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_write.simple_write.3978bae4a5c9544f-cgu.0?download=true
inline.NumInlined: 271
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00\BC\00\00\00F\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00\BC\00\00\00R\00\00\00" }>, align 8
@3 = private unnamed_addr constant [7 x i8] c"H\8D=\00\00\00\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"\E8\00\00\00\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"main", align 1
@6 = private unnamed_addr constant [14 x i8] c"Hello, world!\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Jn0q30Ea0B_6object5write5ErrorECs4VV2qO6j7hb_12simple_write, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs9Jn0q30Ea0B_6object5writeNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Jn0q30Ea0B_6object5write5ErrorECs4VV2qO6j7hb_12simple_write, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCs9Jn0q30Ea0B_6object5writeNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXNtCs9Jn0q30Ea0B_6object5writeNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @7, ptr @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs4VV2qO6j7hb_12simple_write }>, align 8
@9 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/object-0.39.1/src/write/mod.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"c\00\00\00\00\00\00\00\9F\01\00\00\16\00\00\00" }>, align 8
@11 = private unnamed_addr constant [18 x i8] c"src/write/unit.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\11\00\00\00\00\00\00\00C\01\00\00\1A\00\00\00" }>, align 8
@13 = private unnamed_addr constant [13 x i8] c"gimli example", align 1
@14 = private unnamed_addr constant [7 x i8] c"hello.o", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr @15, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs4VV2qO6j7hb_12simple_write, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCs4VV2qO6j7hb_12simple_write }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXNtCsi68uqYEhoRA_5gimli5writeNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsi68uqYEhoRA_5gimli5writeNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXNtCsi68uqYEhoRA_5gimli5writeNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @17, ptr @_RNvYNtNtCsi68uqYEhoRA_5gimli5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCsi68uqYEhoRA_5gimli5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCsi68uqYEhoRA_5gimli5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCsi68uqYEhoRA_5gimli5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs4VV2qO6j7hb_12simple_write, ptr @_RNvYNtNtCsi68uqYEhoRA_5gimli5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs4VV2qO6j7hb_12simple_write }>, align 8
@19 = private unnamed_addr constant [14 x i8] c"src/leb128.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"\0D\00\00\00\00\00\00\00\EC\00\00\00\11\00\00\00" }>, align 8
@21 = private unnamed_addr constant [13 x i8] c".debug_abbrev", align 1
@22 = private unnamed_addr constant [11 x i8] c".debug_addr", align 1
@23 = private unnamed_addr constant [14 x i8] c".debug_aranges", align 1
@24 = private unnamed_addr constant [15 x i8] c".debug_cu_index", align 1
@25 = private unnamed_addr constant [12 x i8] c".debug_frame", align 1
@26 = private unnamed_addr constant [9 x i8] c".eh_frame", align 1
@27 = private unnamed_addr constant [13 x i8] c".eh_frame_hdr", align 1
@28 = private unnamed_addr constant [19 x i8] c".debug_gnu_pubnames", align 1
@29 = private unnamed_addr constant [19 x i8] c".debug_gnu_pubtypes", align 1
@30 = private unnamed_addr constant [11 x i8] c".debug_info", align 1
@31 = private unnamed_addr constant [11 x i8] c".debug_line", align 1
@32 = private unnamed_addr constant [15 x i8] c".debug_line_str", align 1
@33 = private unnamed_addr constant [10 x i8] c".debug_loc", align 1
@34 = private unnamed_addr constant [15 x i8] c".debug_loclists", align 1
@35 = private unnamed_addr constant [14 x i8] c".debug_macinfo", align 1
@36 = private unnamed_addr constant [12 x i8] c".debug_macro", align 1
@37 = private unnamed_addr constant [12 x i8] c".debug_names", align 1
@38 = private unnamed_addr constant [15 x i8] c".debug_pubnames", align 1
@39 = private unnamed_addr constant [15 x i8] c".debug_pubtypes", align 1
@40 = private unnamed_addr constant [13 x i8] c".debug_ranges", align 1
@41 = private unnamed_addr constant [15 x i8] c".debug_rnglists", align 1
@42 = private unnamed_addr constant [10 x i8] c".debug_str", align 1
@43 = private unnamed_addr constant [17 x i8] c"OffsetOutOfBounds", align 1
@44 = private unnamed_addr constant [17 x i8] c"LengthOutOfBounds", align 1
@45 = private unnamed_addr constant [21 x i8] c"InvalidAttributeValue", align 1
@46 = private unnamed_addr constant [13 x i8] c"ValueTooLarge", align 1
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs4VV2qO6j7hb_12simple_write }>, align 8
@48 = private unnamed_addr constant [19 x i8] c"UnsupportedWordSize", align 1
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCs4VV2qO6j7hb_12simple_write }>, align 8
@50 = private unnamed_addr constant [18 x i8] c"UnsupportedVersion", align 1
@51 = private unnamed_addr constant [21 x i8] c"InitialLengthOverflow", align 1
@52 = private unnamed_addr constant [14 x i8] c"InvalidAddress", align 1
@53 = private unnamed_addr constant [16 x i8] c"InvalidReference", align 1
@54 = private unnamed_addr constant [11 x i8] c"NeedVersion", align 1
@55 = private unnamed_addr constant [22 x i8] c"LineStringFormMismatch", align 1
@56 = private unnamed_addr constant [12 x i8] c"InvalidRange", align 1
@57 = private unnamed_addr constant [31 x i8] c"IncompatibleLineProgramEncoding", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCs4VV2qO6j7hb_12simple_write }>, align 8
@59 = private unnamed_addr constant [22 x i8] c"InvalidFrameCodeOffset", align 1
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCs4VV2qO6j7hb_12simple_write }>, align 8
@61 = private unnamed_addr constant [22 x i8] c"InvalidFrameDataOffset", align 1
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsi68uqYEhoRA_5gimli9constants6DwEhPeNtB6_5Debug3fmtCs4VV2qO6j7hb_12simple_write }>, align 8
@63 = private unnamed_addr constant [26 x i8] c"UnsupportedPointerEncoding", align 1
@64 = private unnamed_addr constant [33 x i8] c"UnsupportedCfiExpressionReference", align 1
@65 = private unnamed_addr constant [37 x i8] c"UnsupportedExpressionForwardReference", align 1
@66 = private unnamed_addr constant [21 x i8] c"UnexpectedBaseAddress", align 1
@67 = private unnamed_addr constant [18 x i8] c"MissingBaseAddress", align 1
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs4VV2qO6j7hb_12simple_write }>, align 8
@69 = private unnamed_addr constant [5 x i8] c"Error", align 1
@70 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@71 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3819872485591028730 to ptr), ptr inttoptr (i64 8256661455249456704 to ptr) }>, align 8
@72 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7229055758862454687 to ptr), ptr inttoptr (i64 -1064292481948119893 to ptr) }>, align 8
@73 = private unnamed_addr constant [17 x i8] c"src/endianity.rs\00", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"\10\00\00\00\00\00\00\00\C8\00\00\00\13\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"\10\00\00\00\00\00\00\00\9B\00\00\00\12\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"\10\00\00\00\00\00\00\00\AA\00\00\00\12\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"\10\00\00\00\00\00\00\00\B9\00\00\00\12\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7429658065514507536 to ptr), ptr inttoptr (i64 -6911765289239786968 to ptr) }>, align 8
@switch.table._RNCNvCs4VV2qO6j7hb_12simple_write4main0B3_ = private unnamed_addr constant [22 x i8] c"\0D\0B\0E\0F\0C\09\0D\13\13\0B\0B\0F\0A\0F\0E\0C\0C\0F\0F\0D\0F\0A", align 8
@switch.table._RNCNvCs4VV2qO6j7hb_12simple_write4main0B3_.14 = private unnamed_addr constant [22 x ptr] [ptr @21, ptr @22, ptr @23, ptr @24, ptr @25, ptr @26, ptr @27, ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(776) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [2 x i8], align 2                 ; 4 uses
  %i.l = alloca [2 x i8], align 2                 ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.4.0.extract.shift = lshr i32 %3, 16      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = add i32 %3, -131072
  %or.cond = icmp ult i32 %i.t, 196608
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.eb

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %.sroa.4.0.extract.shift, 5
  br i1 %i.u, label %bb.bu, label %bb.ea

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 728 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val26 = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %.sroa.07.0.extract.trunc.i = trunc i32 %3 to i8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !131
  store i64 0, ptr %i.p, align 8, !noalias !131
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8, !noalias !131
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !noalias !131
  %.idx152 = shl nuw nsw i64 %.val26, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx152
  %i.ac = zext i1 %4 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 424 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 5 uses
  %.neg.i = mul i8 %.sroa.07.0.extract.trunc.i, 56
  %i.ai = and i8 %.neg.i, 56
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = lshr i64 -1, %i.aj
  %i.al = icmp eq i64 %.val26, 0
  br i1 %i.al, label %._crit_edge151, label %.lr.ph150

bb.f:                                             ; preds = %bb.br
  %i.am = icmp eq ptr %i.an, %i.ab
  br i1 %i.am, label %._crit_edge151, label %.lr.ph150

._crit_edge151:                                   ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !132
  br label %_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable9write_locNtCs4VV2qO6j7hb_12simple_write7SectionEB1b_.exit

.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.invoke.i, %bb.bg, %bb.bc, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i274.i, %bb.bb, %bb.au, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.invoke.i, %bb.as, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.invoke.i, %bb.an, %bb.ad, %bb.aa, %bb.x, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.invoke.i, %bb.r, %bb.j, %bb.bq, %._crit_edge.i, %bb.g
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.bt, !noalias !129

.lr.ph150:                                        ; preds = %bb.e, %bb.f
  %.sroa.010.0.i148 = phi ptr [ %i.an, %bb.f ], [ %.val, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i148, i64 32 ; 2 uses
  %.val.i.i = load i64, ptr %i.ad, align 8, !alias.scope !133, !noundef !5 ; 2 uses
  %i.ao = icmp sgt i64 %.val.i.i, -1
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.aa, align 8, !alias.scope !134, !noalias !131, !noundef !5 ; 3 uses
  %i.aq = load i64, ptr %i.p, align 8, !range !6, !alias.scope !134, !noalias !131, !noundef !5
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph150
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetE8grow_oneCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #21
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129

bb.h:                                             ; preds = %bb.g, %.lr.ph150
  %i.as = load ptr, ptr %i.z, align 8, !alias.scope !134, !noalias !131, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ap
  store i64 %.val.i.i, ptr %i.at, align 8, !noalias !129
  %i.au = add i64 %i.ap, 1
  store i64 %i.au, ptr %i.aa, align 8, !alias.scope !134, !noalias !131
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i148, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !131, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i148, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !131, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ay, 72
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.s
  %.sroa.012.086.i = phi i8 [ %.sroa.012.1.i, %bb.s ], [ %i.ac, %bb.h ] ; 6 uses
  %.sroa.015.085.i = phi ptr [ %i.bb, %bb.s ], [ %i.aw, %bb.h ] ; 19 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 72 ; 2 uses
  %i.bc = load i64, ptr %.sroa.015.085.i, align 8, !range !135, !noalias !129, !noundef !5 ; 6 uses
  %i.bd = icmp ne i64 %i.bc, 4
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nsw i64 %i.bc, -2
  %.inv.i = icmp samesign ult i64 %i.bc, 2
  %i.bf = select i1 %.inv.i, i64 2, i64 %i.be
  switch i64 %i.bf, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
  ]

._crit_edge.i:                                    ; preds = %bb.s, %bb.h
  %i.bg = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer11write_udataB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef 0, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.i:                                             ; preds = %.lr.ph.i
  unreachable

bb.j:                                             ; preds = %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bh, align 8, !noalias !129
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !129 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !129
  %i.bi = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer11write_udataB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %i.ak, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.k:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !129, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !129, !noundef !5 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 8
  %i.bo = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bo, label %bb.v, label %bb.u

bb.l:                                             ; preds = %.lr.ph.i
  %.sroa.63.0..sroa.015.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 8
  %.sroa.63.0.copyload.i = load i64, ptr %.sroa.63.0..sroa.015.0.sroa_idx.i, align 8, !noalias !129 ; 5 uses
  %.sroa.9.0..sroa.015.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 16
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa.015.0.sroa_idx.i, align 8, !noalias !129 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 24
  %.sroa.07.0.copyload.i = load i64, ptr %i.bp, align 8, !noalias !129 ; 2 uses
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 32
  %.sroa.69.0.copyload.i = load i64, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !129 ; 4 uses
  %.sroa.912.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 40
  %.sroa.912.0.copyload.i = load i64, ptr %.sroa.912.0..sroa_idx.i, align 8, !noalias !129 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 48
  %i.br = icmp eq i64 %i.bc, %.sroa.07.0.copyload.i
  br i1 %i.br, label %bb.ag, label %6

bb.m:                                             ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 8
  %.sroa.014.0.copyload.i = load i64, ptr %i.bs, align 8, !noalias !129
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 16
  %.sroa.616.0.copyload.i = load i64, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !129 ; 4 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 24
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !129 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !129, !noundef !5 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.085.i, i64 32
  %i.bw = trunc nuw i64 %.sroa.014.0.copyload.i to i1
  %i.bx = icmp eq i64 %i.bu, 0                    ; 2 uses
  br i1 %i.bw, label %bb.ax, label %bb.ay

bb.n:                                             ; preds = %.lr.ph.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.by, align 8, !alias.scope !129
  br label %bb.bl

bb.o:                                             ; preds = %bb.j
  %i.bz = and i64 %i.bi, 255
  %.not240.i = icmp eq i64 %i.bz, 255
  br i1 %.not240.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ca = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.ca, label %bb.q, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.invoke.i

bb.q:                                             ; preds = %bb.p
  %.val.i244.i = load i64, ptr %i.ad, align 8, !alias.scope !136, !noundef !5 ; 2 uses
  %i.cb = icmp sgt i64 %.val.i244.i, -1
  call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %i.ag, align 8, !alias.scope !137, !noundef !5 ; 3 uses
  %i.cd = load i64, ptr %i.af, align 8, !range !6, !alias.scope !137, !noundef !5
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.r, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write8relocate10RelocationE8grow_oneCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #21
          to label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.i: ; preds = %bb.r, %bb.q
  %i.cf = load ptr, ptr %i.ah, align 8, !alias.scope !137, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.cf, i64 %i.cc ; 6 uses
  store i8 0, ptr %i.cg, align 8, !noalias !138
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !138
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %.val.i244.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !138
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !138
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !138
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 34
  store i8 %.sroa.07.0.extract.trunc.i, ptr %.sroa.87.0..sroa_idx.i.i, align 2, !noalias !138
  %i.ch = add i64 %i.cc, 1
  store i64 %i.ch, ptr %i.ag, align 8, !alias.scope !137
  br label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.invoke.i

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.invoke.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.i, %bb.p
  %i.ci = phi i64 [ 0, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.i ], [ %.sroa.5.0.copyload.i, %bb.p ]
  %i.cj = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity12LittleEndianENtNtB7_6writer6Writer11write_udataCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.ci, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i.invoke.i
  %i.ck = and i64 %i.cj, 255
  %.not241.i = icmp eq i64 %i.ck, 255
  br i1 %.not241.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.bj, %bb.av, %bb.ae, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit.i
  %.sroa.012.1.i = phi i8 [ 1, %bb.ae ], [ 0, %bb.av ], [ 1, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit.i ], [ 0, %bb.bj ]
  %i.cl = icmp eq ptr %i.bb, %i.az
  br i1 %i.cl, label %._crit_edge.i, label %.lr.ph.i

bb.t:                                             ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit.i, %bb.o
  %.sroa.0.0.i.lcssa.sink.i = phi i64 [ %i.bi, %bb.o ], [ %i.cj, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.lcssa.sink.i, ptr %i.cm, align 8, !alias.scope !129
  br label %bb.bl

bb.u:                                             ; preds = %bb.k
  %i.cn = trunc nuw i8 %.sroa.012.086.i to i1
  br i1 %i.cn, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.co, align 8, !alias.scope !129
  br label %bb.bl

bb.w:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.cp, align 8, !alias.scope !129
  br label %bb.bl

bb.x:                                             ; preds = %bb.u
  %i.cq = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer11write_udataB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %i.bk, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cr = and i64 %i.cq, 255
  %.not237.i = icmp eq i64 %i.cr, 255
  br i1 %.not237.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cq, ptr %i.cs, align 8, !alias.scope !129
  br label %bb.bl

bb.aa:                                            ; preds = %bb.y
  %i.ct = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer11write_udataB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %i.bm, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cu = and i64 %i.ct, 255
  %.not238.i = icmp eq i64 %i.cu, 255
  br i1 %.not238.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ct, ptr %i.cv, align 8, !alias.scope !129
  br label %bb.bl

bb.ad:                                            ; preds = %bb.ab
  %i.cw = invoke fastcc i64 @_RINvNtNtCsi68uqYEhoRA_5gimli5write3loc16write_expressionNtCs4VV2qO6j7hb_12simple_write7SectionEBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, i32 noundef range(i32 131072, 327680) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cx = and i64 %i.cw, 255
  %.not239.i = icmp eq i64 %i.cx, 255
  br i1 %.not239.i, label %bb.s, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.cy, align 8, !alias.scope !129
  br label %bb.bl

bb.ag:                                            ; preds = %bb.l
  %i.cz = trunc nuw i64 %i.bc to i1
  br i1 %i.cz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.da = icmp eq i64 %.sroa.9.0.copyload.i, %.sroa.912.0.copyload.i
  %i.db = icmp eq i64 %.sroa.63.0.copyload.i, %.sroa.69.0.copyload.i
  %or.cond.i = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond.i, label %bb.ak, label %.thread102.i

bb.ai:                                            ; preds = %bb.ag
  %i.dc = icmp eq i64 %.sroa.63.0.copyload.i, %.sroa.69.0.copyload.i
  br i1 %i.dc, label %bb.ak, label %bb.aj

6:                                                ; preds = %bb.l
  %7 = trunc nuw i8 %.sroa.012.086.i to i1
  br i1 %7, label %bb.ao, label %bb.al

.thread102.i:                                     ; preds = %bb.ah
  %8 = trunc nuw i8 %.sroa.012.086.i to i1
  br i1 %8, label %bb.ao, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dd = trunc nuw i8 %.sroa.012.086.i to i1
  br i1 %i.dd, label %bb.ao, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.invoke.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.de, align 8, !alias.scope !129
  br label %bb.bl

bb.al:                                            ; preds = %6
  %i.df = trunc nuw i64 %i.bc to i1
  br i1 %i.df, label %bb.am, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.invoke.i

bb.am:                                            ; preds = %bb.al, %.thread102.i
  %.val.i249.i = load i64, ptr %i.ad, align 8, !alias.scope !139, !noundef !5 ; 2 uses
  %i.dg = icmp sgt i64 %.val.i249.i, -1
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load i64, ptr %i.ag, align 8, !alias.scope !140, !noundef !5 ; 3 uses
  %i.di = load i64, ptr %i.af, align 8, !range !6, !alias.scope !140, !noundef !5
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.an, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.i

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write8relocate10RelocationE8grow_oneCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #21
          to label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.i: ; preds = %bb.an, %bb.am
  %i.dk = load ptr, ptr %i.ah, align 8, !alias.scope !140, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.dh ; 6 uses
  store i8 0, ptr %i.dl, align 8, !noalias !141
  %.sroa.46.0..sroa_idx.i251.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.sroa.63.0.copyload.i, ptr %.sroa.46.0..sroa_idx.i251.i, align 8, !noalias !141
  %.sroa.5.0..sroa_idx.i252.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %.val.i249.i, ptr %.sroa.5.0..sroa_idx.i252.i, align 8, !noalias !141
  %.sroa.6.0..sroa_idx.i253.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i253.i, align 8, !noalias !141
  %.sroa.7.0..sroa_idx.i254.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i8 0, ptr %.sroa.7.0..sroa_idx.i254.i, align 8, !noalias !141
  %.sroa.87.0..sroa_idx.i255.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 34
  store i8 %.sroa.07.0.extract.trunc.i, ptr %.sroa.87.0..sroa_idx.i255.i, align 2, !noalias !141
  %i.dm = add i64 %i.dh, 1
  store i64 %i.dm, ptr %i.ag, align 8, !alias.scope !140
  br label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.invoke.i

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.invoke.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.i, %bb.al, %bb.aj
  %9 = phi i64 [ 0, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.i ], [ %.sroa.63.0.copyload.i, %bb.aj ], [ %.sroa.63.0.copyload.i, %bb.al ]
  %i.dn = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity12LittleEndianENtNtB7_6writer6Writer11write_udataCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %9, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit259.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.ao:                                            ; preds = %bb.aj, %.thread102.i, %6
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 18, ptr %i.do, align 8, !alias.scope !129
  br label %bb.bl

_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit259.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i250.invoke.i
  %i.dp = and i64 %i.dn, 255
  %.not234.i = icmp eq i64 %i.dp, 255
  br i1 %.not234.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit259.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.dq, align 8, !alias.scope !129
  br label %bb.bl

bb.aq:                                            ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit259.i
  %i.dr = trunc nuw i64 %.sroa.07.0.copyload.i to i1
  br i1 %i.dr, label %bb.ar, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.invoke.i

bb.ar:                                            ; preds = %bb.aq
  %.val.i261.i = load i64, ptr %i.ad, align 8, !alias.scope !142, !noundef !5 ; 2 uses
  %i.ds = icmp sgt i64 %.val.i261.i, -1
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load i64, ptr %i.ag, align 8, !alias.scope !143, !noundef !5 ; 3 uses
  %i.du = load i64, ptr %i.af, align 8, !range !6, !alias.scope !143, !noundef !5
  %i.dv = icmp eq i64 %i.dt, %i.du
  br i1 %i.dv, label %bb.as, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write8relocate10RelocationE8grow_oneCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #21
          to label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.i: ; preds = %bb.as, %bb.ar
  %i.dw = load ptr, ptr %i.ah, align 8, !alias.scope !143, !nonnull !5, !noundef !5
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.dt ; 6 uses
  store i8 0, ptr %i.dx, align 8, !noalias !144
  %.sroa.46.0..sroa_idx.i263.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.69.0.copyload.i, ptr %.sroa.46.0..sroa_idx.i263.i, align 8, !noalias !144
  %.sroa.5.0..sroa_idx.i264.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.val.i261.i, ptr %.sroa.5.0..sroa_idx.i264.i, align 8, !noalias !144
  %.sroa.6.0..sroa_idx.i265.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.912.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i265.i, align 8, !noalias !144
  %.sroa.7.0..sroa_idx.i266.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i8 0, ptr %.sroa.7.0..sroa_idx.i266.i, align 8, !noalias !144
  %.sroa.87.0..sroa_idx.i267.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 34
  store i8 %.sroa.07.0.extract.trunc.i, ptr %.sroa.87.0..sroa_idx.i267.i, align 2, !noalias !144
  %i.dy = add i64 %i.dt, 1
  store i64 %i.dy, ptr %i.ag, align 8, !alias.scope !143
  br label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.invoke.i

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.invoke.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.i, %bb.aq
  %i.dz = phi i64 [ 0, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.i ], [ %.sroa.69.0.copyload.i, %bb.aq ]
  %i.ea = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity12LittleEndianENtNtB7_6writer6Writer11write_udataCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.dz, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit271.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit271.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i262.invoke.i
  %i.eb = and i64 %i.ea, 255
  %.not235.i = icmp eq i64 %i.eb, 255
  br i1 %.not235.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit271.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ea, ptr %i.ec, align 8, !alias.scope !129
  br label %bb.bl

bb.au:                                            ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit271.i
  %i.ed = invoke fastcc i64 @_RINvNtNtCsi68uqYEhoRA_5gimli5write3loc16write_expressionNtCs4VV2qO6j7hb_12simple_write7SectionEBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, i32 noundef range(i32 131072, 327680) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.ee = and i64 %i.ed, 255
  %.not236.i = icmp eq i64 %i.ee, 255
  br i1 %.not236.i, label %bb.s, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ed, ptr %i.ef, align 8, !alias.scope !129
  br label %bb.bl

bb.ax:                                            ; preds = %bb.m
  %i.eg = add i64 %i.bu, %.sroa.11.0.copyload.i
  br i1 %i.bx, label %.thread.i, label %bb.az

bb.ay:                                            ; preds = %bb.m
  %i.eh = add i64 %i.bu, %.sroa.616.0.copyload.i
  br i1 %i.bx, label %.thread.i, label %.thread29.i

bb.az:                                            ; preds = %bb.ax
  %i.ei = trunc nuw i8 %.sroa.012.086.i to i1
  br i1 %i.ei, label %bb.bd, label %bb.ba

.thread29.i:                                      ; preds = %bb.ay
  %i.ej = trunc nuw i8 %.sroa.012.086.i to i1
  br i1 %i.ej, label %bb.bd, label %bb.bc

.thread.i:                                        ; preds = %bb.ay, %bb.ax
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.ek, align 8, !alias.scope !129
  br label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %.val.i273.i = load i64, ptr %i.ad, align 8, !alias.scope !145, !noundef !5 ; 2 uses
  %i.el = icmp sgt i64 %.val.i273.i, -1
  call void @llvm.assume(i1 %i.el)
  %i.em = load i64, ptr %i.ag, align 8, !alias.scope !146, !noundef !5 ; 3 uses
  %i.en = load i64, ptr %i.af, align 8, !range !6, !alias.scope !146, !noundef !5
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %bb.bb, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i274.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write8relocate10RelocationE8grow_oneCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #21
          to label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i274.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i274.i: ; preds = %bb.bb, %bb.ba
  %i.ep = load ptr, ptr %i.ah, align 8, !alias.scope !146, !nonnull !5, !noundef !5
  %i.eq = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.em ; 6 uses
  store i8 0, ptr %i.eq, align 8, !noalias !147
  %.sroa.46.0..sroa_idx.i275.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %.sroa.616.0.copyload.i, ptr %.sroa.46.0..sroa_idx.i275.i, align 8, !noalias !147
  %.sroa.5.0..sroa_idx.i276.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %.val.i273.i, ptr %.sroa.5.0..sroa_idx.i276.i, align 8, !noalias !147
  %.sroa.6.0..sroa_idx.i277.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i64 %.sroa.11.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i277.i, align 8, !noalias !147
  %.sroa.7.0..sroa_idx.i278.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store i8 0, ptr %.sroa.7.0..sroa_idx.i278.i, align 8, !noalias !147
  %.sroa.87.0..sroa_idx.i279.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 34
  store i8 %.sroa.07.0.extract.trunc.i, ptr %.sroa.87.0..sroa_idx.i279.i, align 2, !noalias !147
  %i.er = add i64 %i.em, 1
  store i64 %i.er, ptr %i.ag, align 8, !alias.scope !146
  %i.es = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity12LittleEndianENtNtB7_6writer6Writer11write_udataCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 0, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.bc:                                            ; preds = %.thread29.i
  %i.et = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity12LittleEndianENtNtB7_6writer6Writer11write_udataCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %.sroa.616.0.copyload.i, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.thread.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

bb.bd:                                            ; preds = %.thread29.i, %bb.az
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 18, ptr %i.eu, align 8, !alias.scope !129
  br label %bb.bl

_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i274.i
  %i.ev = and i64 %i.es, 255
  %.not.i = icmp eq i64 %i.ev, 255
  br i1 %.not.i, label %bb.bf, label %bb.be

_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.thread.i: ; preds = %bb.bc
  %i.ew = and i64 %i.et, 255
  %.not112.i = icmp eq i64 %i.ew, 255
  br i1 %.not112.i, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.invoke.i, label %bb.be

bb.be:                                            ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.thread.i, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.i
  %.sroa.0.0.i272115.i = phi i64 [ %i.et, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.thread.i ], [ %i.es, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i272115.i, ptr %i.ex, align 8, !alias.scope !129
  br label %bb.bl

bb.bf:                                            ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.i
  %.val.i285.i = load i64, ptr %i.ad, align 8, !alias.scope !148, !noundef !5 ; 2 uses
  %i.ey = icmp sgt i64 %.val.i285.i, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i64, ptr %i.ag, align 8, !alias.scope !149, !noundef !5 ; 3 uses
  %i.fa = load i64, ptr %i.af, align 8, !range !6, !alias.scope !149, !noundef !5
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.bg, label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write8relocate10RelocationE8grow_oneCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #21
          to label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.i: ; preds = %bb.bg, %bb.bf
  %i.fc = load ptr, ptr %i.ah, align 8, !alias.scope !149, !nonnull !5, !noundef !5
  %i.fd = getelementptr inbounds nuw [40 x i8], ptr %i.fc, i64 %i.ez ; 6 uses
  store i8 0, ptr %i.fd, align 8, !noalias !150
  %.sroa.46.0..sroa_idx.i287.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %.sroa.616.0.copyload.i, ptr %.sroa.46.0..sroa_idx.i287.i, align 8, !noalias !150
  %.sroa.5.0..sroa_idx.i288.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %.val.i285.i, ptr %.sroa.5.0..sroa_idx.i288.i, align 8, !noalias !150
  %.sroa.6.0..sroa_idx.i289.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i64 %i.eg, ptr %.sroa.6.0..sroa_idx.i289.i, align 8, !noalias !150
  %.sroa.7.0..sroa_idx.i290.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i8 0, ptr %.sroa.7.0..sroa_idx.i290.i, align 8, !noalias !150
  %.sroa.87.0..sroa_idx.i291.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 34
  store i8 %.sroa.07.0.extract.trunc.i, ptr %.sroa.87.0..sroa_idx.i291.i, align 2, !noalias !150
  %i.fe = add i64 %i.ez, 1
  store i64 %i.fe, ptr %i.ag, align 8, !alias.scope !149
  br label %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.invoke.i

_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.invoke.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.i, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.thread.i
  %i.ff = phi i64 [ 0, %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.i ], [ %i.eh, %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit283.thread.i ]
  %i.fg = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity12LittleEndianENtNtB7_6writer6Writer11write_udataCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.ff, i8 noundef %.sroa.07.0.extract.trunc.i)
          to label %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit295.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !129 ; 2 uses

_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit295.i: ; preds = %_RNvXs_Cs4VV2qO6j7hb_12simple_writeNtB4_7SectionNtNtNtCsi68uqYEhoRA_5gimli5write8relocate14RelocateWriter8relocate.exit.i286.invoke.i
  %i.fh = and i64 %i.fg, 255
  %.not232.i = icmp eq i64 %i.fh, 255
  br i1 %.not232.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_.exit295.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fg, ptr %i.fi, align 8, !alias.scope !129
end_hunk_0
