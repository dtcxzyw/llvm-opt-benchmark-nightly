Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.06?download=true
inline.NumInlined: 969
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs_NtCshhHc5tDBDRu_12grep_printer5jsontNtB5_5BeginNtNtCs696aDvbrEFJ_10serde_core3ser9Serialize9serializeQINtNtCsgixc6xHyZOO_10serde_json3ser10SerializerQINtNtB7_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB1M_15PrettyFormatterEECs2NzvFoTxuAy_2rg:bb.a
  %i.o = load i64, ptr %i.a, align 8, !dbg !9454, !range !556, !noundef !387
  %i.p = icmp ugt i64 %i.o, -4, !dbg !9454        ; 2 uses
  br i1 %.not11, label %bb.k, label %bb.g, !dbg !9455

bb.g:                                             ; preds = %_RINvXs7_NtCsgixc6xHyZOO_10serde_json3serINtB6_8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtBX_5jsont4DataEECs2NzvFoTxuAy_2rg.exit
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit, label %bb.h, !dbg !9456

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.i, !dbg !9457

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j, !dbg !9458

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9457
  unreachable, !dbg !9457

common.resume:                                    ; preds = %bb.f, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.q, %bb.i ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !9459

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !9460
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit, !dbg !9461

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9427
  br label %_RNvXs7_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB5_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser15SerializeStruct3endCs2NzvFoTxuAy_2rg.exit, !dbg !9462

bb.k:                                             ; preds = %_RINvXs7_NtCsgixc6xHyZOO_10serde_json3serINtB6_8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtBX_5jsont4DataEECs2NzvFoTxuAy_2rg.exit
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit14, label %bb.l, !dbg !9463

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i.i13 unwind label %bb.m, !dbg !9464

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.n, !dbg !9465

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9464
  unreachable, !dbg !9464

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i.i13: ; preds = %bb.l
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !9466
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit14, !dbg !9467

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit14: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9427
  %i.u = load ptr, ptr %i.b, align 8, !dbg !9468, !nonnull !387, !align !516, !noundef !387 ; 5 uses
  %i.v = load i8, ptr %i.i, align 8, !dbg !9468, !range !590, !noundef !387
  call void @llvm.experimental.noalias.scope.decl(metadata !9428), !dbg !9469
  call void @llvm.experimental.noalias.scope.decl(metadata !9429), !dbg !9470
  %i.w = icmp eq i8 %i.v, 0, !dbg !9471
  br i1 %i.w, label %_RNvXs7_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB5_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser15SerializeStruct3endCs2NzvFoTxuAy_2rg.exit, label %bb.o, !dbg !9471

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit14
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !9472
  %.val.i.i15 = load ptr, ptr %i.u, align 8, !dbg !9473, !alias.scope !9430 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9431), !dbg !9473
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !9474 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !9474, !alias.scope !9432, !noundef !387
  %i.aa = add i64 %i.z, -1, !dbg !9474            ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !dbg !9474, !alias.scope !9432
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !9475
  %i.ac = load i8, ptr %i.ab, align 8, !dbg !9475, !range !393, !alias.scope !9432, !noundef !387
  %i.ad = trunc nuw i8 %i.ac to i1, !dbg !9475
  br i1 %i.ad, label %bb.p, label %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !9475

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i15) ]
  %i.ae = call noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val.i.i15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 1), !dbg !9476, !noalias !9432 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null, !dbg !9477
  br i1 %.not.i.i.i, label %bb.q, label %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9478

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.x, align 8, !dbg !9479, !alias.scope !9432, !nonnull !387, !noundef !387
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !9479
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !9479, !alias.scope !9432, !noundef !387
  %exitcond.not.i.i.i26 = icmp eq i64 %i.aa, 0, !dbg !9480
  br i1 %exitcond.not.i.i.i26, label %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, label %.lr.ph, !dbg !9481

bb.r:                                             ; preds = %.lr.ph
  %i.ai = add i64 %.sroa.06.0.i.i.i27, 1, !dbg !9482 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ai, %i.aa, !dbg !9480
  br i1 %exitcond.not.i.i.i, label %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, label %.lr.ph, !dbg !9481

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %.sroa.06.0.i.i.i27 = phi i64 [ %i.ai, %bb.r ], [ 0, %bb.q ]
  %i.aj = call noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val.i.i15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.ah), !dbg !9483, !noalias !9432 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.aj, null, !dbg !9484
  br i1 %.not8.i.i.i, label %bb.r, label %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9485

_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.r, %bb.q, %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i15) ]
  %i.ak = call noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val.i.i15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 1), !dbg !9486, !noalias !9432 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ak, null, !dbg !9487
  br i1 %.not.i.i16, label %_RNvXs7_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB5_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser15SerializeStruct3endCs2NzvFoTxuAy_2rg.exit, label %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9488, !prof !621

_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %.lr.ph, %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, %bb.p
  %.sroa.0.0.i5.i.i = phi ptr [ %i.ak, %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.ae, %bb.p ], [ %i.aj, %.lr.ph ]
  %i.al = call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i), !dbg !9489, !noalias !9430
  br label %_RNvXs7_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB5_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser15SerializeStruct3endCs2NzvFoTxuAy_2rg.exit, !dbg !9490

_RNvXs7_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB5_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser15SerializeStruct3endCs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i.i, %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit14, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit ], [ %i.h, %bb.b ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg.exit14 ], [ %i.al, %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ null, %_RINvXsd_NtCsgixc6xHyZOO_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit.i.i ], !dbg !9459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9462
  ret ptr %.sroa.0.0, !dbg !9491

bb.s:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9492
  unreachable, !dbg !9492
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1V_8ReplacerRRNtB7_12RegexMatcherE11replace_all00E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !9493 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !9617, !nonnull !387, !align !516, !noundef !387 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9597), !dbg !9618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9598), !dbg !9619
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9620
  %i.c = load i32, ptr %i.b, align 8, !dbg !9620, !range !408, !alias.scope !9599, !noalias !9600, !noundef !387
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28, !dbg !9620
  %i.e = load i32, ptr %i.d, align 4, !dbg !9620, !alias.scope !9599, !noalias !9600
  %i.f = trunc nuw i32 %i.c to i1, !dbg !9621
  br i1 %i.f, label %bb.b, label %bb.p, !dbg !9621

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !9622
  %i.h = load ptr, ptr %i.g, align 8, !dbg !9622, !alias.scope !9599, !noalias !9600, !nonnull !387, !noundef !387 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !9623
  %i.j = load i64, ptr %i.i, align 8, !dbg !9623, !noalias !9601, !noundef !387 ; 3 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976, !dbg !9624
  tail call void @llvm.assume(i1 %i.k), !dbg !9625
  %i.l = icmp eq i64 %i.j, 1, !dbg !9626
  br i1 %i.l, label %bb.c, label %bb.d, !dbg !9626

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %1, 0, !dbg !9627
  br i1 %i.m, label %bb.p, label %bb.g, !dbg !9628, !prof !501

bb.d:                                             ; preds = %bb.b
  %i.n = zext i32 %i.e to i64, !dbg !9629         ; 3 uses
  %i.o = icmp samesign ugt i64 %i.j, %i.n, !dbg !9630
  br i1 %i.o, label %bb.e, label %bb.p, !dbg !9630

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !9631
  %i.q = load ptr, ptr %i.p, align 8, !dbg !9631, !noalias !9601, !nonnull !387, !noundef !387
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.n, !dbg !9632 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !9633
  %i.t = load i32, ptr %i.s, align 4, !dbg !9633, !noalias !9601, !noundef !387
  %i.u = zext i32 %i.t to i64, !dbg !9633
  %i.v = load i32, ptr %i.r, align 4, !dbg !9634, !noalias !9601, !noundef !387
  %i.w = zext i32 %i.v to i64, !dbg !9634         ; 2 uses
  %i.x = sub nsw i64 %i.u, %i.w, !dbg !9635
  %i.y = lshr i64 %i.x, 1, !dbg !9636
  %.not.i.i.i = icmp ugt i64 %1, %i.y, !dbg !9637
  br i1 %.not.i.i.i, label %bb.p, label %bb.f, !dbg !9637

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i64 %1, 0, !dbg !9638
  %i.aa = shl nuw nsw i64 %i.n, 1, !dbg !9638
  %i.ab = shl nuw i64 %1, 1, !dbg !9638
  %i.ac = add i64 %i.ab, -2, !dbg !9638
  %i.ad = add i64 %i.ac, %i.w, !dbg !9638
  %.sroa.4.0.i.ph.i.i = select i1 %i.z, i64 %i.aa, i64 %i.ad, !dbg !9638 ; 2 uses
  %i.ae = add i64 %.sroa.4.0.i.ph.i.i, 1, !dbg !9639
  br label %bb.h, !dbg !9640

bb.g:                                             ; preds = %bb.c
  %i.af = shl nuw i64 %1, 1, !dbg !9627           ; 2 uses
  %i.ag = or disjoint i64 %i.af, 1, !dbg !9641
  br label %bb.h, !dbg !9640

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.038.0.i.i = phi i64 [ %i.af, %bb.g ], [ %.sroa.4.0.i.ph.i.i, %bb.f ], !dbg !9642 ; 2 uses
  %.sroa.040.0.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.ae, %bb.f ], !dbg !9642 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9643
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !9643, !alias.scope !9599, !noalias !9600, !nonnull !387, !noundef !387 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9644
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !9644, !alias.scope !9599, !noalias !9600, !noundef !387 ; 2 uses
  %i.al = icmp ult i64 %.sroa.038.0.i.i, %i.ak, !dbg !9645
  br i1 %i.al, label %bb.i, label %bb.p, !dbg !9645

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.038.0.i.i, !dbg !9646
  %i.an = load i64, ptr %i.am, align 8, !dbg !9647, !noalias !9601, !noundef !387 ; 4 uses
  %.not.i.i = icmp ne i64 %i.an, 0, !dbg !9648
  %i.ao = icmp ult i64 %.sroa.040.0.i.i, %i.ak
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ao, i1 false, !dbg !9649
  br i1 %or.cond.i.i, label %bb.j, label %bb.p, !dbg !9649

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.040.0.i.i, !dbg !9650
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !9651, !noalias !9601, !noundef !387 ; 4 uses
  %.not44.i.i = icmp eq i64 %i.aq, 0, !dbg !9652
  br i1 %.not44.i.i, label %bb.p, label %bb.k, !dbg !9653

bb.k:                                             ; preds = %bb.j
  %i.ar = add i64 %i.an, -1, !dbg !9654           ; 3 uses
  %i.as = add i64 %i.aq, -1, !dbg !9655           ; 3 uses
  %.not.i = icmp ugt i64 %i.ar, %i.as, !dbg !9656
  br i1 %.not.i, label %bb.l, label %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit, !dbg !9656, !prof !501

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !dbg !9657, !noalias !9602
  unreachable, !dbg !9657

_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9658
  %i.au = load i64, ptr %i.at, align 8, !dbg !9658, !noundef !387 ; 2 uses
  %.not = icmp ugt i64 %i.as, %i.au
  br i1 %.not, label %bb.o, label %bb.m, !dbg !9659, !prof !675

bb.m:                                             ; preds = %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9658
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !9658, !nonnull !387, !noundef !387
  %gepdiff = sub nuw i64 %i.aq, %i.an, !dbg !9660 ; 3 uses
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %gepdiff), !dbg !9661
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !9662 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !9662, !alias.scope !9615, !noundef !387 ; 3 uses
  %i.az = icmp sgt i64 %i.ay, -1, !dbg !9663
  tail call void @llvm.assume(i1 %i.az), !dbg !9664
  %.not.i2 = icmp eq i64 %i.aq, %i.an, !dbg !9665
  br i1 %.not.i2, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit, label %bb.n, !dbg !9665

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ar, !dbg !9666
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9667
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !9667, !alias.scope !9615, !nonnull !387, !noundef !387
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ay, !dbg !9668
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.ba, i64 %gepdiff, i1 false), !dbg !9669
  %.pre.i = load i64, ptr %i.ax, align 8, !dbg !9670, !alias.scope !9615
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit, !dbg !9671

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.m, %bb.n
  %i.be = phi i64 [ %.pre.i, %bb.n ], [ %i.ay, %bb.m ], !dbg !9670
  %i.bf = add i64 %i.be, %gepdiff, !dbg !9670
  store i64 %i.bf, ptr %i.ax, align 8, !dbg !9670, !alias.scope !9615
  br label %bb.p, !dbg !9672

bb.o:                                             ; preds = %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ar, i64 noundef %i.as, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #22, !dbg !9673
  unreachable, !dbg !9673

bb.p:                                             ; preds = %bb.i, %bb.e, %bb.c, %bb.a, %bb.h, %bb.d, %bb.j, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit
  ret void, !dbg !9674
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder12preprocessor(ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9675 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = load i64, ptr %1, align 8, !dbg !9718, !range !486, !noundef !387
  %.not = icmp eq i64 %i.c, -1, !dbg !9718
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9719

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9715
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9720
  %.val.i.i = load ptr, ptr %i.d, align 8, !dbg !9720, !alias.scope !9712, !noalias !9713, !nonnull !387, !noundef !387
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9720
  %.val1.i.i = load i64, ptr %i.e, align 8, !dbg !9720, !alias.scope !9712, !noalias !9713, !noundef !387
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9721 ; 2 uses
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.i unwind label %bb.h, !dbg !9722

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9723 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !9724, !range !486, !alias.scope !9714, !noundef !387
  %i.i = icmp eq i64 %i.h, -1, !dbg !9724
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit, label %bb.d, !dbg !9724

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.e, !dbg !9725

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.f, !dbg !9726

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9725
  unreachable, !dbg !9725

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit unwind label %bb.r, !dbg !9727

bb.g:                                             ; preds = %.body, %.body10, %bb.h
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %eh.lpad-body11, %.body10 ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #18
          to label %common.resume unwind label %bb.s, !dbg !9728

bb.h:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !9730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9731
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9732 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !9733, !range !486, !alias.scope !9716, !noundef !387
  %i.o = icmp eq i64 %i.n, -1, !dbg !9733
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit13, label %bb.j, !dbg !9733

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i9 unwind label %bb.k, !dbg !9734

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body10 unwind label %bb.l, !dbg !9735

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9734
  unreachable, !dbg !9734

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i9: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit13 unwind label %bb.m, !dbg !9736

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i9
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body10, !dbg !9732

.body10:                                          ; preds = %bb.k, %bb.m
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.p, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !9732
  br label %bb.g, !dbg !9737

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit13: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !9732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9738
  br label %bb.n, !dbg !9739

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit13
  %i.s = load i64, ptr %1, align 8, !dbg !9740, !range !486, !alias.scope !9717, !noundef !387
  %i.t = icmp eq i64 %i.s, -1, !dbg !9740
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit16, label %bb.o, !dbg !9740

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i15 unwind label %bb.p, !dbg !9741

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.q, !dbg !9742

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9741
  unreachable, !dbg !9741

common.resume:                                    ; preds = %bb.g, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.p ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !9743

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i15: ; preds = %bb.o
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9744
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit16, !dbg !9740

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit16: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i15, %bb.n
  %i.w = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %0, 1, !dbg !9745
  ret { i64, ptr } %i.w, !dbg !9745

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !9723

.body:                                            ; preds = %bb.e, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.r ], [ %i.j, %bb.e ]
  store i64 -1, ptr %i.g, align 8, !dbg !9723
  br label %bb.g, !dbg !9746

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i
  store i64 -1, ptr %i.g, align 8, !dbg !9723
  br label %bb.n, !dbg !9739

bb.s:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9747
  unreachable, !dbg !9747
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder18preprocessor_globs(ptr noalias nofree noundef returned align 8 dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9748 {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(104) %0)
          to label %bb.c unwind label %bb.b, !dbg !9749

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !dbg !9749
  resume { ptr, i32 } %i.a, !dbg !9750

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !dbg !9749
  ret ptr %0, !dbg !9751
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9752 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [128 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !9760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9761, !noalias !9758
  store i64 -1, ptr %i.b, align 8, !dbg !9761, !noalias !9758
end_hunk_0
begin_hunk_1_@_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE11replace_allCs2NzvFoTxuAy_2rg:bb.a
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.al, !dbg !13408

bb.ai:                                            ; preds = %bb.ah
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.sroa.040.0.i.i.i.i.i.i.i.i, !dbg !13409
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !13410, !noalias !13134, !noundef !387 ; 3 uses
  %.not44.i.i.i.i.i.i.i.i = icmp eq i64 %i.ee, 0, !dbg !13411
  br i1 %.not44.i.i.i.i.i.i.i.i, label %bb.al, label %bb.aj, !dbg !13412

bb.aj:                                            ; preds = %bb.ai
  %i.ef = add i64 %i.eb, -1, !dbg !13413
  %i.eg = add i64 %i.ee, -1, !dbg !13414          ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ef, %i.eg, !dbg !13415
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i, !dbg !13415, !prof !501

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !dbg !13416, !noalias !13135
  unreachable, !dbg !13416

_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.eh = icmp eq i64 %i.eb, %i.ee, !dbg !13417
  br i1 %i.eh, label %bb.am, label %bb.an, !dbg !13417

bb.al:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #22, !dbg !13418, !noalias !13136
  unreachable, !dbg !13418

bb.am:                                            ; preds = %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i
  %i.ei = icmp eq i64 %i.eg, %.sroa.3.073.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = select i1 %.sroa.08.074.i.i.i.i.i.i, i1 %i.ei, i1 false, !dbg !13419
  br i1 %or.cond.i.i.i.i.i.i, label %bb.cq, label %bb.an, !dbg !13419

bb.an:                                            ; preds = %bb.am, %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.eb, %bb.am ], [ %i.eg, %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i ], !dbg !13420
  br i1 %i.ds, label %bb.aq, label %bb.ao, !dbg !13421

bb.ao:                                            ; preds = %bb.an
  %i.ej = zext i32 %i.dl to i64, !dbg !13422      ; 2 uses
  %i.ek = icmp samesign ugt i64 %i.dq, %i.ej, !dbg !13423
  br i1 %i.ek, label %bb.ap, label %bb.av, !dbg !13423

bb.ap:                                            ; preds = %bb.ao
  %i.el = shl nuw nsw i64 %i.ej, 1, !dbg !13424   ; 2 uses
  %i.em = or disjoint i64 %i.el, 1, !dbg !13425
  br label %bb.aq, !dbg !13426

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.sroa.038.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %bb.ap ], [ 0, %bb.an ], !dbg !13427 ; 2 uses
  %.sroa.040.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.em, %bb.ap ], [ 1, %bb.an ], !dbg !13427 ; 2 uses
  %i.en = icmp ult i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i, %i.dy, !dbg !13428
  br i1 %i.en, label %bb.ar, label %bb.av, !dbg !13428

bb.ar:                                            ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i, !dbg !13429
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !13430, !noalias !13139, !noundef !387 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ep, 0, !dbg !13431
  %i.eq = icmp ult i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i, %i.dy
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %i.eq, i1 false, !dbg !13432
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.av, !dbg !13432

bb.as:                                            ; preds = %bb.ar
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i, !dbg !13433
  %i.es = load i64, ptr %i.er, align 8, !dbg !13434, !noalias !13139, !noundef !387 ; 2 uses
  %.not44.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.es, 0, !dbg !13435
  br i1 %.not44.i.i.i.i.i.i.i.i.i.i, label %bb.av, label %bb.at, !dbg !13436

bb.at:                                            ; preds = %bb.as
  %i.et = add i64 %i.ep, -1, !dbg !13437          ; 7 uses
  %i.eu = add i64 %i.es, -1, !dbg !13438          ; 2 uses
  %.not.i.i.i16.i.i.i.i.i.i = icmp ugt i64 %i.et, %i.eu, !dbg !13439
  br i1 %.not.i.i.i16.i.i.i.i.i.i, label %bb.au, label %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i.i.i, !dbg !13439, !prof !501

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !dbg !13440, !noalias !13140
  unreachable, !dbg !13440

_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %.not.i.i17.i.i.i.i.i.i = icmp ult i64 %i.et, %6, !dbg !13441
  br i1 %.not.i.i17.i.i.i.i.i.i, label %bb.aw, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i, !dbg !13441

bb.av:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22, !dbg !13442, !noalias !13141
  unreachable, !dbg !13442

bb.aw:                                            ; preds = %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i.i.i
  %i.ev = icmp ult i64 %i.et, %.sroa.0.0.i38, !dbg !13443
  %.not2.i.i.i.i.i.i.i.i = icmp ugt i64 %i.et, %.sroa.13.0
  %or.cond.i.i18.i.i.i.i.i.i = or i1 %.not2.i.i.i.i.i.i.i.i, %i.ev, !dbg !13443
  br i1 %or.cond.i.i18.i.i.i.i.i.i, label %bb.cp, label %bb.ax, !dbg !13443, !prof !675

bb.ax:                                            ; preds = %bb.aw
  %gepdiff.i.i.i.i.i.i.i.i = sub nuw nsw i64 %i.et, %.sroa.0.0.i38, !dbg !13444 ; 3 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %gepdiff.i.i.i.i.i.i.i.i), !dbg !13445, !noalias !13141
  %i.ew = load i64, ptr %i.ab, align 8, !dbg !13446, !alias.scope !13142, !noalias !13143, !noundef !387 ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, -1, !dbg !13447
  call void @llvm.assume(i1 %i.ex), !dbg !13448
  %.not.i3.i.i.i.i.i.i.i.i = icmp eq i64 %i.et, %.sroa.0.0.i38, !dbg !13449
  br i1 %.not.i3.i.i.i.i.i.i.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, label %bb.ay, !dbg !13449

bb.ay:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0.i38, !dbg !13450
  %i.ez = load ptr, ptr %i.aw, align 8, !dbg !13451, !alias.scope !13142, !noalias !13143, !nonnull !387, !noundef !387
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew, !dbg !13452
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull readonly align 1 %i.ey, i64 %gepdiff.i.i.i.i.i.i.i.i, i1 false), !dbg !13453, !noalias !13141
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !dbg !13454, !alias.scope !13142, !noalias !13143
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, !dbg !13455

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.fb = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.ay ], [ %i.ew, %bb.ax ], !dbg !13454
  %i.fc = add i64 %i.fb, %gepdiff.i.i.i.i.i.i.i.i, !dbg !13454 ; 4 uses
  store i64 %i.fc, ptr %i.ab, align 8, !dbg !13454, !alias.scope !13142, !noalias !13143
  call void @llvm.experimental.noalias.scope.decl(metadata !13144), !dbg !13456
  %i.fd = icmp sgt i64 %i.fc, -1, !dbg !13457
  call void @llvm.assume(i1 %i.fd), !dbg !13458
  call void @llvm.experimental.noalias.scope.decl(metadata !13147), !dbg !13459
  call void @llvm.experimental.noalias.scope.decl(metadata !13148), !dbg !13459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13460, !noalias !13149
  store ptr %0, ptr %i.c, align 8, !dbg !13460, !noalias !13149
  store ptr %3, ptr %i.as, align 8, !dbg !13460, !noalias !13149
  store i64 %.sroa.13.0, ptr %i.at, align 8, !dbg !13460, !noalias !13149
  call void @llvm.experimental.noalias.scope.decl(metadata !13150), !dbg !13461
  call void @llvm.experimental.noalias.scope.decl(metadata !13151), !dbg !13461
  br i1 %i.ax, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !dbg !13462

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef 0), !dbg !13463, !noalias !13154
  %i.fe = load i64, ptr %i.ab, align 8, !dbg !13464, !alias.scope !13156, !noalias !13157, !noundef !387 ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, -1, !dbg !13465
  call void @llvm.assume(i1 %i.ff), !dbg !13466
  br label %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i, !dbg !13467

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.be.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i ], [ %7, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.20.0.be.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i ], [ %8, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.fg = getelementptr i8, ptr %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, !dbg !13468 ; 2 uses
  %i.fh = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !13469, !noalias !13165, !nonnull !387, !noundef !387
  %i.fi = call { i64, ptr } %i.fh(i8 noundef 36, ptr noundef nonnull readonly %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.fg), !dbg !13470, !noalias !13170, !inline_history !12659 ; 2 uses
  %i.fj = extractvalue { i64, ptr } %i.fi, 0, !dbg !13471
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !13472
  br i1 %i.fk, label %bb.ba, label %bb.az, !dbg !13472

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i), !dbg !13463, !noalias !13154
  %i.fl = load i64, ptr %i.ab, align 8, !dbg !13464, !alias.scope !13171, !noalias !13157, !noundef !387 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, -1, !dbg !13465
  call void @llvm.assume(i1 %i.fm), !dbg !13466
  %i.fn = load ptr, ptr %i.aw, align 8, !dbg !13473, !alias.scope !13171, !noalias !13157, !nonnull !387, !noundef !387
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fl, !dbg !13474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, i1 false), !dbg !13475, !noalias !13154
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !dbg !13476, !alias.scope !13171, !noalias !13157
  br label %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i, !dbg !13477

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = extractvalue { i64, ptr } %i.fi, 1, !dbg !13471
  %i.fq = call noundef i64 @_RNvXNtCsiykmk5uyuii_6memchr3extPhNtB2_7Pointer8distanceCs2NzvFoTxuAy_2rg(ptr noundef %i.fp, ptr noundef nonnull readonly %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i), !dbg !13478, !noalias !13154 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.fq, %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, !dbg !13479
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i), !dbg !13479
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fq, !dbg !13480 ; 6 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.fq), !dbg !13481, !noalias !13154
  %i.fs = load i64, ptr %i.ab, align 8, !dbg !13482, !alias.scope !13173, !noalias !13157, !noundef !387 ; 3 uses
  %i.ft = icmp sgt i64 %i.fs, -1, !dbg !13483
  call void @llvm.assume(i1 %i.ft), !dbg !13484
  %.not.i43.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fq, 0, !dbg !13485
  br i1 %.not.i43.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb, !dbg !13485

bb.bb:                                            ; preds = %bb.ba
  %i.fu = load ptr, ptr %i.aw, align 8, !dbg !13486, !alias.scope !13173, !noalias !13157, !nonnull !387, !noundef !387
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs, !dbg !13487
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull readonly align 1 %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fq, i1 false), !dbg !13488, !noalias !13154
  %.pre.i44.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !dbg !13489, !alias.scope !13173, !noalias !13157
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %i.fw = phi i64 [ %.pre.i44.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ], [ %i.fs, %bb.ba ], !dbg !13489
  %i.fx = add i64 %i.fw, %i.fq, !dbg !13489       ; 4 uses
  store i64 %i.fx, ptr %i.ab, align 8, !dbg !13489, !alias.scope !13173, !noalias !13157
  %i.fy = sub nuw nsw i64 %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, %i.fq, !dbg !13491 ; 12 uses
  %i.fz = icmp ult i64 %i.fy, 2, !dbg !13492
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 1, !dbg !13492 ; 2 uses
  br i1 %i.fz, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13493

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ga, align 1, !dbg !13494, !alias.scope !13175, !noalias !13176, !noundef !387 ; 2 uses
  %i.gb = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 36, !dbg !13495
  br i1 %i.gb, label %bb.bz, label %bb.bc, !dbg !13496

bb.bc:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13178), !dbg !13497
  %i.gc = load i8, ptr %i.fr, align 1, !dbg !13498, !alias.scope !13179, !noalias !13180, !noundef !387
  %i.gd = icmp eq i8 %i.gc, 36, !dbg !13498
  br i1 %i.gd, label %bb.bd, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, !dbg !13498

bb.bd:                                            ; preds = %bb.bc
  %i.ge = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 123, !dbg !13499 ; 3 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ge, i64 2, i64 1, !dbg !13499 ; 6 uses
  %.not3240.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %i.fy, !dbg !13500
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13500 ; 3 uses
  br i1 %.not3240.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13501

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.be
  %i.gg = phi ptr [ %i.go, %bb.be ], [ %i.gf, %bb.bd ] ; 2 uses
  %.sroa.010.041.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %bb.be ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gg, align 1, !dbg !13502, !alias.scope !13181, !noalias !13180, !noundef !387 ; 3 uses
  %i.gh = add i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -58, !dbg !13503
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gh, -10, !dbg !13503
  %i.gi = and i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -33, !dbg !13503
  %i.gj = add i8 %i.gi, -91, !dbg !13503
  %i.gk = icmp ult i8 %i.gj, -26, !dbg !13503
  %or.cond7.i.i.i.not61.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gk, !dbg !13503
  %i.gl = icmp ne i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 95, !dbg !13503
  %.sroa.0.0.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.gl, %or.cond7.i.i.i.not61.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13504 ; 2 uses
  br i1 %.sroa.0.0.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, !dbg !13504

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fy, %bb.be ], [ %.sroa.010.041.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13505 ; 4 uses
  %.lcssa39.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %bb.be ], [ %i.gg, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13500
  %i.gm = icmp eq i64 %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13506
  br i1 %i.gm, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf, !dbg !13506

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd
  br i1 %i.ge, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13506

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13507, !noalias !13182
  br label %bb.bh, !dbg !13508

bb.be:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = add nuw nsw i64 %.sroa.010.041.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !13509 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gn, !dbg !13500
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %i.fy, !dbg !13500
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13501

bb.bf:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13507, !noalias !13182
  %.not.i47.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.fy
  br i1 %.not.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg, label %bb.bh, !dbg !13508, !prof !13183

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #22, !dbg !13510, !noalias !13184
  unreachable, !dbg !13510

bb.bh:                                            ; preds = %bb.bf, %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf ] ; 3 uses
  %.not32.lcssa6673.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf ]
  %.lcssa396772.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa39.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf ]
  %i.gp = sub nuw nsw i64 %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13511
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gf, i64 noundef %i.gp), !dbg !13507, !noalias !13185
  call void @llvm.experimental.noalias.scope.decl(metadata !13186), !dbg !13512
  %i.gq = load i64, ptr %i.b, align 8, !dbg !13513, !range !513, !alias.scope !13186, !noalias !13182, !noundef !387
  %i.gr = trunc nuw i64 %i.gq to i1, !dbg !13514
  br i1 %i.gr, label %bb.bi, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13514, !prof !501

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13515, !noalias !13187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.au, i64 16, i1 false), !dbg !13515, !noalias !13182
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !dbg !13516, !noalias !13188
  unreachable, !dbg !13516

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.gs = load ptr, ptr %i.au, align 8, !dbg !13517, !alias.scope !13186, !noalias !13182, !nonnull !387, !noundef !387 ; 5 uses
  %i.gt = load i64, ptr %i.av, align 8, !dbg !13517, !alias.scope !13186, !noalias !13182, !noundef !387 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13518, !noalias !13182
  br i1 %i.ge, label %bb.bx, label %bb.bj, !dbg !13519

bb.bj:                                            ; preds = %bb.by, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jp, %bb.by ], [ %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13505 ; 4 uses
  switch i64 %i.gt, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.bk
  ], !dbg !13520

bb.bk:                                            ; preds = %bb.bj
  %i.gu = load i8, ptr %i.gs, align 1, !dbg !13521, !alias.scope !13194, !noalias !13185, !noundef !387 ; 2 uses
  switch i8 %i.gu, label %bb.bl [
    i8 43, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  ], !dbg !13521

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.bj
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gs, align 1, !dbg !13521, !alias.scope !13194, !noalias !13185
  br label %bb.bl, !dbg !13521

bb.bl:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk
  %i.gv = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.bk ], !dbg !13521
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gv, 43, !dbg !13521 ; 2 uses
  %i.gw = sext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13521
  %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %i.gt, %i.gw, !dbg !13521 ; 10 uses
  %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13521
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13521 ; 9 uses
  %i.gx = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.gx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !dbg !13522

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.bl
  %.not5668.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !13523
  br i1 %.not5668.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13523

.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bo
  %.not55.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hb, 0, !dbg !13524
  br i1 %.not55.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !dbg !13524

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.045.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jn, %bb.bw ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hp, %bb.bp ], [ %i.hx, %bb.bq ], [ %i.ie, %bb.br ], [ %i.il, %bb.bs ], [ %i.is, %bb.bt ], [ %i.iz, %bb.bu ], [ %i.jg, %bb.bv ], [ %i.hl, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13525
  %i.gy = zext i32 %.sroa.045.1.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13526
  %i.gz = shl nuw i64 %i.gy, 32, !dbg !13526
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13526

.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.bl, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288 = phi ptr [ %i.ha, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i.i.i.i.i.i.i.i287 = phi i64 [ %i.hb, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ]
  %.sroa.045.0.i.i.i.i.i.i.i.i.i.i.i.i.i286 = phi i32 [ %i.hl, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bl ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288, i64 1, !dbg !13527
  %i.hb = add nsw i64 %.sroa.15.1.i.i.i.i.i.i.i.i.i.i.i.i.i287, -1, !dbg !13527 ; 2 uses
  %i.hc = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i.i.i.i.i.i.i.i.i.i.i286, i32 10), !dbg !13528 ; 2 uses
  %i.hd = extractvalue { i32, i1 } %i.hc, 0, !dbg !13528 ; 2 uses
  %i.he = extractvalue { i32, i1 } %i.hc, 1, !dbg !13528
  %i.hf = load i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288, align 1, !dbg !13529, !alias.scope !13194, !noalias !13185, !noundef !387 ; 2 uses
  br i1 %i.he, label %bb.bn, label %bb.bm, !dbg !13530, !prof !501

bb.bm:                                            ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hg = zext i8 %i.hf to i32, !dbg !13531
  %i.hh = add nsw i32 %i.hg, -48, !dbg !13532     ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 10, !dbg !13533
  br i1 %i.hi, label %bb.bo, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13534

bb.bn:                                            ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hj = add i8 %i.hf, -48, !dbg !13535
  %i.hk = icmp ult i8 %i.hj, 10, !dbg !13535
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.hk, i64 513, i64 257, !dbg !13534
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13534

bb.bo:                                            ; preds = %bb.bm
  %i.hl = add i32 %i.hh, %i.hd, !dbg !13536       ; 3 uses
  %i.hm = icmp ult i32 %i.hl, %i.hd, !dbg !13536
  br i1 %i.hm, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13537, !prof !501

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = load i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !dbg !13538, !alias.scope !13194, !noalias !13185, !noundef !387
  %i.ho = zext i8 %i.hn to i32, !dbg !13539
  %i.hp = add nsw i32 %i.ho, -48, !dbg !13540     ; 3 uses
  %i.hq = icmp ult i32 %i.hp, 10, !dbg !13541
  br i1 %i.hq, label %bb.bp, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13542

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !13523
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1, !dbg !13523

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1:               ; preds = %bb.bp
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1, !dbg !13543
  %i.hs = load i8, ptr %i.hr, align 1, !dbg !13538, !alias.scope !13194, !noalias !13185, !noundef !387
  %i.ht = zext i8 %i.hs to i32, !dbg !13539
  %i.hu = add nsw i32 %i.ht, -48, !dbg !13540     ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 10, !dbg !13541
  br i1 %i.hv, label %bb.bq, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13542

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.hw = mul nuw nsw i32 %i.hp, 10, !dbg !13544
  %i.hx = add nuw nsw i32 %i.hu, %i.hw, !dbg !13545 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2, !dbg !13523
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2, !dbg !13523

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2:               ; preds = %bb.bq
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2, !dbg !13543
  %i.hz = load i8, ptr %i.hy, align 1, !dbg !13538, !alias.scope !13194, !noalias !13185, !noundef !387
  %i.ia = zext i8 %i.hz to i32, !dbg !13539
  %i.ib = add nsw i32 %i.ia, -48, !dbg !13540     ; 2 uses
  %i.ic = icmp ult i32 %i.ib, 10, !dbg !13541
  br i1 %i.ic, label %bb.br, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13542

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.id = mul nuw nsw i32 %i.hx, 10, !dbg !13544
  %i.ie = add nuw nsw i32 %i.ib, %i.id, !dbg !13545 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3, !dbg !13523
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.2, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3, !dbg !13523

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3:               ; preds = %bb.br
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3, !dbg !13543
  %i.ig = load i8, ptr %i.if, align 1, !dbg !13538, !alias.scope !13194, !noalias !13185, !noundef !387
  %i.ih = zext i8 %i.ig to i32, !dbg !13539
  %i.ii = add nsw i32 %i.ih, -48, !dbg !13540     ; 2 uses
  %i.ij = icmp ult i32 %i.ii, 10, !dbg !13541
  br i1 %i.ij, label %bb.bs, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13542

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.ik = mul nuw nsw i32 %i.ie, 10, !dbg !13544
  %i.il = add nuw nsw i32 %i.ii, %i.ik, !dbg !13545 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4, !dbg !13523
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4, !dbg !13523

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4:               ; preds = %bb.bs
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4, !dbg !13543
  %i.in = load i8, ptr %i.im, align 1, !dbg !13538, !alias.scope !13194, !noalias !13185, !noundef !387
  %i.io = zext i8 %i.in to i32, !dbg !13539
  %i.ip = add nsw i32 %i.io, -48, !dbg !13540     ; 2 uses
  %i.iq = icmp ult i32 %i.ip, 10, !dbg !13541
  br i1 %i.iq, label %bb.bt, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13542

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4
  %i.ir = mul i32 %i.il, 10, !dbg !13544
  %i.is = add i32 %i.ip, %i.ir, !dbg !13545       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 5, !dbg !13523
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.4, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5, !dbg !13523

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5:               ; preds = %bb.bt
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5, !dbg !13543
  %i.iu = load i8, ptr %i.it, align 1, !dbg !13538, !alias.scope !13194, !noalias !13185, !noundef !387
  %i.iv = zext i8 %i.iu to i32, !dbg !13539
  %i.iw = add nsw i32 %i.iv, -48, !dbg !13540     ; 2 uses
  %i.ix = icmp ult i32 %i.iw, 10, !dbg !13541
  br i1 %i.ix, label %bb.bu, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13542

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5
  %i.iy = mul i32 %i.is, 10, !dbg !13544
  %i.iz = add i32 %i.iw, %i.iy, !dbg !13545       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 6, !dbg !13523
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.5, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6, !dbg !13523

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6:               ; preds = %bb.bu
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 6, !dbg !13543
  %i.jb = load i8, ptr %i.ja, align 1, !dbg !13538, !alias.scope !13194, !noalias !13185, !noundef !387
  %i.jc = zext i8 %i.jb to i32, !dbg !13539
  %i.jd = add nsw i32 %i.jc, -48, !dbg !13540     ; 2 uses
  %i.je = icmp ult i32 %i.jd, 10, !dbg !13541
  br i1 %i.je, label %bb.bv, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13542

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6
  %i.jf = mul i32 %i.iz, 10, !dbg !13544
  %i.jg = add i32 %i.jd, %i.jf, !dbg !13545       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 7, !dbg !13523
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.6, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7, !dbg !13523
end_hunk_1
