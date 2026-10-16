Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/keygen.keygen.e8f47d65ff23d3cb-cgu.06?download=true
inline.NumInlined: 132
inline.NumDeleted: 93
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.6/src/util/flat_map.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00J\00\00\00\1D\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00K\00\00\00!\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00c\00\00\00)\00\00\00" }>, align 8
@4 = private unnamed_addr constant [34 x i8] c"`Extensions` tracks values by type", align 1
@5 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.6/src/builder/ext.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"j\00\00\00\00\00\00\00\10\00\00\00\12\00\00\00" }>, align 8
@7 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/thread/local.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECsk00SB29S2sp_6keygen, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsk00SB29S2sp_6keygen, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsk00SB29S2sp_6keygen, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsk00SB29S2sp_6keygen }>, align 8
@10 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@11 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@13 = private unnamed_addr constant [6 x i8] c"Config", align 1
@14 = private unnamed_addr constant [8 x i8] c"Identity", align 1
@15 = private unnamed_addr constant [6 x i8] c"PeerID", align 1
@16 = private unnamed_addr constant [7 x i8] c"PrivKey", align 1
@17 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @15, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @16, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @14, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@19 = private unnamed_addr constant [1 x i8] c"}", align 1
@20 = private unnamed_addr constant [1 x i8] c"{", align 1
@21 = private unnamed_addr constant [324 x i8] c"\01\00\01ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF=", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity5error13DecodingErrorECsk00SB29S2sp_6keygen, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB4_13DecodingErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity5error13DecodingErrorECsk00SB29S2sp_6keygen, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB5_13DecodingErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB4_13DecodingErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @22, ptr @_RNvXs0_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB5_13DecodingErrorNtNtCskKLDkoKarTP_4core5error5Error6source, ptr @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity5error13DecodingErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsk00SB29S2sp_6keygen, ptr @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity5error13DecodingErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsk00SB29S2sp_6keygen, ptr @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity5error13DecodingErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsk00SB29S2sp_6keygen, ptr @_RNvYNtNtCs2iisHxfqoT7_15libp2p_identity5error13DecodingErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsk00SB29S2sp_6keygen }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorECsk00SB29S2sp_6keygen, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorECsk00SB29S2sp_6keygen, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs3_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @24, ptr @_RNvXs2_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source, ptr @_RNvYNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsk00SB29S2sp_6keygen, ptr @_RNvYNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsk00SB29S2sp_6keygen, ptr @_RNvYNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsk00SB29S2sp_6keygen, ptr @_RNvYNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsk00SB29S2sp_6keygen }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsk00SB29S2sp_6keygen, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsk00SB29S2sp_6keygen, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr @26, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsk00SB29S2sp_6keygen, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsk00SB29S2sp_6keygen, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCsk00SB29S2sp_6keygen }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00\16\00\00\000\00\00\00" }>, align 8
@29 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/index.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"O\00\00\00\00\00\00\00\F1\03\00\003\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\007\00\00\00" }>, align 8
@32 = private unnamed_addr constant [15 x i8] c"struct Identity", align 1
@33 = private unnamed_addr constant [13 x i8] c"struct Config", align 1
@34 = private unnamed_addr constant [12 x i8] c"Insufficient", align 1
@35 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@36 = private unnamed_addr constant [10 x i8] c"NotMinimal", align 1
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgW4lhAJgVdS_9multihash5error4KindNtB6_5Debug3fmtCsk00SB29S2sp_6keygen }>, align 8
@38 = private unnamed_addr constant [5 x i8] c"Error", align 1
@39 = private unnamed_addr constant [4 x i8] c"kind", align 1
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsk00SB29S2sp_6keygen }>, align 8
@41 = private unnamed_addr constant [2 x i8] c"Io", align 1
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsk00SB29S2sp_6keygen }>, align 8
@43 = private unnamed_addr constant [11 x i8] c"InvalidSize", align 1
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfPnYm3bSk7z_15unsigned_varint6decode5ErrorNtB6_5Debug3fmtCsk00SB29S2sp_6keygen }>, align 8
@45 = private unnamed_addr constant [6 x i8] c"Varint", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsk00SB29S2sp_6keygen, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1N_4SyncEL_EENtB6_5Debug3fmtCsk00SB29S2sp_6keygen }>, align 8
@48 = private unnamed_addr constant [13 x i8] c"DecodingError", align 1
@49 = private unnamed_addr constant [3 x i8] c"msg", align 1
@50 = private unnamed_addr constant [6 x i8] c"source", align 1
@51 = private unnamed_addr constant [12 x i8] c"\07Error: \C0\01\0A\00", align 1
@52 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@53 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 779957024984234091 to ptr), ptr inttoptr (i64 -613534411909283760 to ptr) }>, align 8
@54 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6829006424738019200 to ptr), ptr inttoptr (i64 4958793927167656690 to ptr) }>, align 8
@55 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7429658065514507536 to ptr), ptr inttoptr (i64 -6911765289239786968 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfPnYm3bSk7z_15unsigned_varint6decode5ErrorNtB6_5Debug3fmtCsk00SB29S2sp_6keygen = private unnamed_addr constant [3 x i8] c"\0C\08\0A", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfPnYm3bSk7z_15unsigned_varint6decode5ErrorNtB6_5Debug3fmtCsk00SB29S2sp_6keygen.42 = private unnamed_addr constant [3 x ptr] [ptr @34, ptr @35, ptr @36], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECsk00SB29S2sp_6keygen(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.m, %.backedge.i ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val8.i = load i64, ptr %i.j, align 8, !noalias !20, !noundef !5
  %i.k = icmp eq i64 %.val8.i, %3
  br i1 %i.k, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, label %.backedge.i

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.g, align 8, !noalias !20, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %2, i64 %3), !alias.scope !21, !noalias !20
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.l = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.l, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.m = add nuw nsw i64 %i.h, 1
  %i.n = icmp eq ptr %i.i, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE6removeCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCs80T0Klmhmtx_12clap_builder6parser7matches11matched_arg10MatchedArgE6removeCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %bb.b
  %.sink15 = phi i64 [ 8, %bb.b ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.q, %bb.b ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 2 ptr @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsk00SB29S2sp_6keygen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !24, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !24, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECsk00SB29S2sp_6keygen.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i13, i64 16 ; 2 uses
  %i.h = add i64 %.sroa.8.0.i12, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECsk00SB29S2sp_6keygen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i13 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.8.0.i12 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i = load i128, ptr %.sroa.0.01.i13, align 8, !noalias !24
  %i.j = icmp eq i128 %.val.i, 150672760502451822828259359265798245666
  br i1 %i.j, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !24, !noundef !5 ; 2 uses
  %i.m = icmp ult i64 %.sroa.8.0.i12, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i12, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18, !noalias !24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !24, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.8.0.i12
  %i.q = tail call noundef align 2 ptr @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refNtNtNtB7_7builder7styling6StylesECsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) ; 2 uses
  %.not4 = icmp eq ptr %i.q, null
  br i1 %.not4, label %bb.f, label %_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECsk00SB29S2sp_6keygen.exit.thread, !prof !6

_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECsk00SB29S2sp_6keygen.exit.thread: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi ptr [ %i.q, %bb.e ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idReECsk00SB29S2sp_6keygen(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) initializes((72, 88)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECsk00SB29S2sp_6keygen(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !34, !nonnull !5, !noundef !5
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !34
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = invoke { ptr, i64 } @_RNvXsk_NtNtCs80T0Klmhmtx_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload)
          to label %bb.c unwind label %bb.b, !noalias !36 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_group8ArgGroupECsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #19
          to label %bb.h unwind label %bb.f, !noalias !37

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.b, 1
  %i.g = load i64, ptr %3, align 8, !alias.scope !38, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !7, !alias.scope !38, !noundef !5
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsk00SB29S2sp_6keygen.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsk00SB29S2sp_6keygen.exit.i unwind label %bb.b, !noalias !37

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsk00SB29S2sp_6keygen.exit.i: ; preds = %bb.e, %bb.d
  %i.j = load ptr, ptr %4, align 8, !alias.scope !38, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !37
  %i.m = add i64 %i.g, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !37
  unreachable

bb.g:                                             ; preds = %bb.c, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsk00SB29S2sp_6keygen.exit.i
  %storemerge = phi i64 [ %i.m, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCsk00SB29S2sp_6keygen.exit.i ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %3, align 8, !alias.scope !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsk00SB29S2sp_6keygen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef dereferenceable_or_null(2) null), !inline_history !40 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsk00SB29S2sp_6keygen(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsk00SB29S2sp_6keygen.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsk00SB29S2sp_6keygen.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsk00SB29S2sp_6keygen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsk00SB29S2sp_6keygen.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsk00SB29S2sp_6keygen.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsk00SB29S2sp_6keygen.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsk00SB29S2sp_6keygen.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs80T0Klmhmtx_12clap_builder4util9any_value8AnyValueEEECsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCs80T0Klmhmtx_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util9any_value8AnyValueEEECsk00SB29S2sp_6keygen.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util9any_value8AnyValueEEECsk00SB29S2sp_6keygen.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECsk00SB29S2sp_6keygen.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECsk00SB29S2sp_6keygen.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdEECsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdEECsk00SB29S2sp_6keygen.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdEECsk00SB29S2sp_6keygen.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsk00SB29S2sp_6keygen.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsk00SB29S2sp_6keygen(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsk00SB29S2sp_6keygen.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECsk00SB29S2sp_6keygen(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtNtBM_3ops4drop4Drop4dropCsk00SB29S2sp_6keygen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
end_hunk_0
