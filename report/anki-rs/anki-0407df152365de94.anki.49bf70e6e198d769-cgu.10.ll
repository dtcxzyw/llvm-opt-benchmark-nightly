Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN61_$LT$anki..error..AnkiError$u20$as$u20$core..error..Error$GT$5cause17h50fea7de4907c573E":bb.a
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.n
    i64 8, label %bb.n
    i64 9, label %bb.n
    i64 10, label %bb.n
    i64 11, label %bb.n
    i64 12, label %bb.n
    i64 13, label %bb.i
    i64 14, label %bb.n
    i64 15, label %bb.n
    i64 16, label %bb.j
    i64 17, label %bb.k
    i64 18, label %bb.n
    i64 19, label %bb.n
    i64 20, label %bb.n
    i64 21, label %bb.n
    i64 22, label %bb.n
    i64 23, label %bb.l
    i64 24, label %bb.m
    i64 25, label %bb.n
    i64 26, label %bb.n
    i64 27, label %bb.n
    i64 28, label %bb.n
    i64 29, label %bb.n
    i64 30, label %bb.n
    i64 31, label %bb.n
    i64 32, label %bb.n
    i64 33, label %bb.n
    i64 34, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.36.0 = phi ptr [ @1124, %bb.c ], [ undef, %bb.a ], [ @1126, %bb.d ], [ @1041, %bb.e ], [ @1128, %bb.f ], [ @1130, %bb.g ], [ @1132, %bb.h ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1134, %bb.i ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1136, %bb.j ], [ @1138, %bb.k ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1140, %bb.l ], [ @1142, %bb.m ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %0, %bb.h ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.k, %bb.i ], [ null, %bb.a ], [ null, %bb.a ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.n, %bb.l ], [ %i.o, %bb.m ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.p = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr %.sroa.36.0, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @"_ZN61_$LT$anki..error..AnkiError$u20$as$u20$core..error..Error$GT$6source17h22260559a332adfcE"(ptr noundef nonnull align 8 %0) unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775802
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 6
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.n
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.n
    i64 8, label %bb.n
    i64 9, label %bb.n
    i64 10, label %bb.n
    i64 11, label %bb.n
    i64 12, label %bb.n
    i64 13, label %bb.i
    i64 14, label %bb.n
    i64 15, label %bb.n
    i64 16, label %bb.j
    i64 17, label %bb.k
    i64 18, label %bb.n
    i64 19, label %bb.n
    i64 20, label %bb.n
    i64 21, label %bb.n
    i64 22, label %bb.n
    i64 23, label %bb.l
    i64 24, label %bb.m
    i64 25, label %bb.n
    i64 26, label %bb.n
    i64 27, label %bb.n
    i64 28, label %bb.n
    i64 29, label %bb.n
    i64 30, label %bb.n
    i64 31, label %bb.n
    i64 32, label %bb.n
    i64 33, label %bb.n
    i64 34, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.36.0 = phi ptr [ @1124, %bb.c ], [ undef, %bb.a ], [ @1126, %bb.d ], [ @1041, %bb.e ], [ @1128, %bb.f ], [ @1130, %bb.g ], [ @1132, %bb.h ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1134, %bb.i ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1136, %bb.j ], [ @1138, %bb.k ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1140, %bb.l ], [ @1142, %bb.m ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %0, %bb.h ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.k, %bb.i ], [ null, %bb.a ], [ null, %bb.a ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.n, %bb.l ], [ %i.o, %bb.m ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.p = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr %.sroa.36.0, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN61_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Display$GT$3fmt17h60e6009c7d8b3515E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775802
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.f, align 8
  %.val68 = load ptr, ptr %1, align 8             ; 35 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val69, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !13, !noalias !13, !nonnull !13 ; 35 uses
  switch i64 %i.e, label %bb.b [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit74
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit79
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit84
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit89
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit94
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit99
    i64 7, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit104
    i64 8, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit109
    i64 9, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit114
    i64 10, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit119
    i64 11, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit124
    i64 12, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit129
    i64 13, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit134
    i64 14, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit139
    i64 15, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit144
    i64 16, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit149
    i64 17, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit154
    i64 18, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit159
    i64 19, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit164
    i64 20, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit169
    i64 21, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit174
    i64 22, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit179
    i64 23, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit184
    i64 24, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit189
    i64 25, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit194
    i64 26, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit199
    i64 27, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit204
    i64 28, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209
    i64 29, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214
    i64 30, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219
    i64 31, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224
    i64 32, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229
    i64 33, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234
    i64 34, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @931, i64 noundef 12), !noalias !10659, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit74: ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @932, i64 noundef 13), !noalias !10660, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit79: ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @935, i64 noundef 13), !noalias !10661, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit84: ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @937, i64 noundef 11), !noalias !10662, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit89: ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @939, i64 noundef 7), !noalias !10663, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit94: ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @941, i64 noundef 12), !noalias !10664, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit99: ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @943, i64 noundef 9), !noalias !10665, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit104: ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @944, i64 noundef 9), !noalias !10666, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit109: ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @945, i64 noundef 10), !noalias !10667, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit114: ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @946, i64 noundef 13), !noalias !10668, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit119: ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @947, i64 noundef 11), !noalias !10669, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit124: ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @948, i64 noundef 17), !noalias !10670, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit129: ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @949, i64 noundef 21), !noalias !10671, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit134: ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @951, i64 noundef 8), !noalias !10672, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit139: ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1143, i64 noundef 166), !noalias !10673, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit144: ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @953, i64 noundef 8), !noalias !10674, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit149: ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @955, i64 noundef 17), !noalias !10675, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit154: ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @957, i64 noundef 11), !noalias !10676, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit159: ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @958, i64 noundef 12), !noalias !10677, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit164: ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @959, i64 noundef 9), !noalias !10678, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit169: ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 25), !noalias !10679, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit174: ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @961, i64 noundef 21), !noalias !10680, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit179: ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @962, i64 noundef 18), !noalias !10681, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit184: ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @964, i64 noundef 16), !noalias !10682, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit189: ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @966, i64 noundef 11), !noalias !10683, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit194: ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @967, i64 noundef 9), !noalias !10684, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit199: ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @968, i64 noundef 18), !noalias !10685, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit204: ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @969, i64 noundef 19), !noalias !10686, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209: ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @970, i64 noundef 17), !noalias !10687, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214: ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1144, i64 noundef 52), !noalias !10688, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219: ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1145, i64 noundef 39), !noalias !10689, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224: ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @975, i64 noundef 37), !noalias !10690, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229: ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @976, i64 noundef 24), !noalias !10691, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234: ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @977, i64 noundef 24), !noalias !10692, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239: ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @978, i64 noundef 15), !noalias !10693, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit204, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit199, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit194, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit189, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit184, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit179, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit174, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit169, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit164, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit159, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit154, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit149, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit144, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit139, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit134, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit129, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit124, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit119, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit114, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit109, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit104, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit99, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit94, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit89, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit84, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit79, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit74, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit74 ], [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit79 ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit84 ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit89 ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit94 ], [ %i.o, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit99 ], [ %i.p, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit104 ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit109 ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit114 ], [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit119 ], [ %i.t, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit124 ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit129 ], [ %i.v, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit134 ], [ %i.w, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit139 ], [ %i.x, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit144 ], [ %i.y, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit149 ], [ %i.z, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit154 ], [ %i.aa, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit159 ], [ %i.ab, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit164 ], [ %i.ac, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit169 ], [ %i.ad, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit174 ], [ %i.ae, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit179 ], [ %i.af, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit184 ], [ %i.ag, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit189 ], [ %i.ah, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit194 ], [ %i.ai, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit199 ], [ %i.aj, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit204 ], [ %i.ak, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209 ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214 ], [ %i.am, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219 ], [ %i.an, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224 ], [ %i.ao, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229 ], [ %i.ap, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234 ], [ %i.aq, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN61_$LT$anki..error..db..DbError$u20$as$u20$core..fmt..Debug$GT$3fmt17he2ce2cf93961c6b5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @939, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @905, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1146)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN62_$LT$axum_core..error..Error$u20$as$u20$core..error..Error$GT$6source17hcf9ec8e9f308e700E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$core..convert..Infallible$u20$as$u20$core..fmt..Debug$GT$3fmt17hea17660e67335f7cE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$anki..error..CardTypeError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa64f065a7e54b4cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @935, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1152, i64 noundef 8, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1153, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1001, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1151)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..error..Error$GT$11description17h477ad3cb5adc6a36E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @939, i64 7 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..error..Error$GT$5cause17hfb87dc96c7c89cfeE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..error..Error$GT$6source17hd08e46a81fd099faE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d0f4e47d39a9925E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !71, !noundef !13 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN64_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d0f4e47d39a9925E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN64_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d0f4e47d39a9925E.584", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$anki_io..error..FileIoError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb191c47308b3d168E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @937, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1175, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1173, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1176, i64 noundef 2, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1174, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @907)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$core..convert..Infallible$u20$as$u20$core..fmt..Display$GT$3fmt17hb8d3e43308cd7216E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h74eb3348ed036be9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1178, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1179, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1177, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1030, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..error..Error$GT$11description17h0c2f2fb967efbf86E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @935, i64 13 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..error..Error$GT$5cause17h462580baf30ca8bdE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1181, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..error..Error$GT$6source17hb54d0d59b38956e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1181, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17ha084ebf614686a14E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !13, !noalias !10696, !nonnull !13
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @935, i64 noundef 13), !noalias !10696, !inline_history !7
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$anki..search..ReturnItemType$u20$as$u20$core..fmt..Debug$GT$3fmt17h879cdaa92ce92bc3E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !19, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @1182, ptr @1156
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %., i64 noundef 5)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$anki..sync..error..HttpError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f4bd41586377f96E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1185, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1186, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1183, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1184)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$libsqlite3_sys..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h41f2c4488410c8b4E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @887, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1186, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1193, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1194, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @885)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$smallvec..CollectionAllocErr$u20$as$u20$core..fmt..Debug$GT$3fmt17h34ea618847bdb7a3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !13
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1198, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1196)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1195, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$11description17hefbc3333ebb66613E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @937, i64 11 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$5cause17h6723bab80b9b354aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @612, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$6source17h95e13e9831afa7b6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @612, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d356f1c638ced89E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !18, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f3e1feabc7106caE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(44) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !33, !noundef !13
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1202)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4aec70d24b42bd9eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !18, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1203)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h599692f4b2d1e95eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !22, !noundef !13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1204)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h778eb05780cd1b1dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1205)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he0156eb3b8f4f4a1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !22, !noundef !13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1003)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN67_$LT$M$u20$as$u20$tracing_subscriber..fmt..format..FormatFields$GT$13format_fields17hb4a686a8b5ecbe8aE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10700)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !10701
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !alias.scope !10702, !noalias !10700
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  store i8 0, ptr %i.d, align 1, !alias.scope !10702, !noalias !10700
  call void @"_ZN65_$LT$$RF$F$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17h409794c9c25be12aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @1206)
  %.sroa.3.0.copyload = load i8, ptr %i.d, align 1
  %i.e = trunc nuw i8 %.sroa.3.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN67_$LT$M$u20$as$u20$tracing_subscriber..fmt..format..FormatFields$GT$13format_fields17he4ce67134ac83365E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10706)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !10707
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !alias.scope !10708, !noalias !10706
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  store i8 0, ptr %i.d, align 1, !alias.scope !10708, !noalias !10706
  call void @"_ZN65_$LT$$RF$F$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17he29d4c11fc3bde4eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @1206)
  %.sroa.3.0.copyload = load i8, ptr %i.d, align 1
  %i.e = trunc nuw i8 %.sroa.3.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h125e7d8d346adef1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = tail call noundef zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17he7ff4eb0e968ea3eE"(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9f276b78205f300E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = tail call noundef zeroext i1 @"_ZN59_$LT$dyn$u20$core..any..Any$u20$as$u20$core..fmt..Debug$GT$3fmt17h9eeb102f004f0c37E"(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..hash..Hash$GT$4hash17h69e87e36202e16bdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #17 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10718
  store i8 -1, ptr %i.a, align 1, !noalias !10718
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !10719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10718
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN67_$LT$anki..sync..error..HttpError$u20$as$u20$core..error..Error$GT$6source17h84bf46eaeed1c227E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !align !22, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14
  %.sroa.3.0 = select i1 %.not, ptr undef, ptr %i.d
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$anki..sync..error..HttpError$u20$as$u20$core..fmt..Display$GT$3fmt17hc5c48dab44f58e07E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i16, ptr %i.d, align 8, !range !61, !noundef !13
  store i16 %i.e, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h9c3ab772d7f4490aE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @1208, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.k, align 8
  %.val = load ptr, ptr %1, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$anki..timestamp..TimestampSecs$u20$as$u20$core..fmt..Debug$GT$3fmt17h49b821acd9a31376E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1209, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1005)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$anki..error..network..SyncError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb021ecdc56e62b80E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @943, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @905, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1210)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9ef46dd57d58cdccE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17he54142367c5c5a8bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$anki..import_export..ImportError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbc71aa2285ec6fe8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !70, !noundef !13 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775806
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 2
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1211, i64 noundef 7)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1212, i64 noundef 6)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1213, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1214, i64 noundef 13)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1215, i64 noundef 9)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1216, i64 noundef 25)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$anki..timestamp..TimestampMillis$u20$as$u20$core..fmt..Debug$GT$3fmt17h9590337954898a91E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1217, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1005)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$hyper..proto..h1..encode..NotEof$u20$as$u20$core..fmt..Debug$GT$3fmt17hbc8187e9e2c4fe1aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1218, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$libsqlite3_sys..error..ErrorCode$u20$as$u20$core..fmt..Debug$GT$3fmt17hf11a5d3be7165239E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !69, !noundef !13 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN69_$LT$libsqlite3_sys..error..ErrorCode$u20$as$u20$core..fmt..Debug$GT$3fmt17hf11a5d3be7165239E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN69_$LT$libsqlite3_sys..error..ErrorCode$u20$as$u20$core..fmt..Debug$GT$3fmt17hf11a5d3be7165239E.585", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1a6d3f95d5d97bcfE"(ptr noalias noundef align 8 dereferenceable(464) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.d, label %bb.d, label %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h476bb74aa42e0760E.exit"

"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h476bb74aa42e0760E.exit": ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %"_ZN4core3ptr84drop_in_place$LT$$u5b$tracing_subscriber..filter..env..field..CallsiteMatch$u5d$$GT$17h6e1202da4192609aE.exit", label %.lr.ph

"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit.i": ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.c
  br i1 %i.g, label %"_ZN4core3ptr84drop_in_place$LT$$u5b$tracing_subscriber..filter..env..field..CallsiteMatch$u5d$$GT$17h6e1202da4192609aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h476bb74aa42e0760E.exit", %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit.i"
  %.sroa.0.0.i1 = phi i64 [ %i.i, %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit.i" ], [ 0, %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h476bb74aa42e0760E.exit" ] ; 2 uses
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %.sroa.0.0.i1
  %i.i = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5201ea20f9311ad0E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit.i" unwind label %bb.b

"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit7.i": ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.c
  br i1 %i.l, label %common.resume, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.i, %i.c
  br i1 %i.n, label %common.resume, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit7.i"
  %.sroa.0.1.i2 = phi i64 [ %i.k, %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit7.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %.sroa.0.1.i2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5201ea20f9311ad0E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit7.i" unwind label %bb.c

common.resume:                                    ; preds = %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit7.i", %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.m, %bb.b ], [ %i.m, %"_ZN4core3ptr74drop_in_place$LT$tracing_subscriber..filter..env..field..CallsiteMatch$GT$17h28e292a9199edb9eE.exit7.i" ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !13, !noundef !13
end_hunk_0
begin_hunk_1_@"_ZN6multer5field5Field5bytes28_$u7b$$u7b$closure$u7d$$u7d$17h52ef1feb17315ccbE":bb.a
  %.sroa.055.0 = phi ptr [ @_ZN5bytes9bytes_mut13SHARED_VTABLE17haa9e6d9e7b5468bdE, %bb.t ], [ %.sroa.055.0.copyload56, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.dc)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %.body24, %bb.ak
  %.pn13 = phi { ptr, i32 } [ %i.dg, %bb.ak ], [ %.pn10.pn, %.body24 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 569
  %i.de = load i8, ptr %i.dd, align 1, !range !19, !noundef !13
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ap, label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34"

bb.ak:                                            ; preds = %bb.an, %bb.ai
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  store i8 0, ptr %i.ax, align 1
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit", %bb.al
  %.sroa.674.0 = phi ptr [ %.sroa.657.0, %bb.al ], [ %.sroa.650.sroa.0.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.473.0 = phi ptr [ %.sroa.055.0, %bb.al ], [ %.sroa.4.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.875.0 = phi i64 [ %.sroa.7.0, %bb.al ], [ %.sroa.650.sroa.3.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.976.0 = phi ptr [ %.sroa.862.0, %bb.al ], [ %.sroa.650.sroa.5.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.1077.0 = phi i64 [ undef, %bb.al ], [ %.sroa.8.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 570
  store i8 0, ptr %i.dh, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 %i.av, ptr %0, align 8
  %.sroa.372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.372.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.372, i64 7, i1 false)
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.473.0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.674.0, ptr %.sroa.674.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.875.0, ptr %.sroa.875.0..sroa_idx, align 8
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.976.0, ptr %.sroa.976.0..sroa_idx, align 8
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.1077.0, ptr %.sroa.1077.0..sroa_idx, align 8
  br label %common.ret

.body24:                                          ; preds = %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit", %.body, %bb.ah, %bb.w
  %.pn10.pn = phi { ptr, i32 } [ %i.bj, %bb.w ], [ %i.db, %bb.ah ], [ %.pn5, %.body ], [ %.pn8, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit" ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.di) #42
          to label %bb.aj unwind label %bb.ag

bb.an:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.372, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.349, i64 7, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.dj)
          to label %bb.ao unwind label %bb.ak

bb.ao:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc735800a8665824E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" unwind label %bb.d

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit": ; preds = %bb.ao
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 569
  store i8 0, ptr %i.dl, align 1
  br label %bb.am

.body:                                            ; preds = %bb.n, %bb.m
  %.pn5 = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.au, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.body24

bb.ap:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc735800a8665824E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34" unwind label %bb.ag

bb.aq:                                            ; preds = %bb.ar, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34"
  store i8 0, ptr %i.x, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 2, ptr %i.l, align 8
  resume { ptr, i32 } %.pn15

bb.ar:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34"
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.k) #42
          to label %bb.aq unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN70_$LT$alloc..boxed..Box$LT$M$GT$$u20$as$u20$prost..message..Message$GT$11merge_field17h70f313ee2f745941E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = tail call noundef align 8 ptr @"_ZN74_$LT$anki_proto..search..SearchNode$u20$as$u20$prost..message..Message$GT$11merge_field17ha5ec194d55a566d6E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef %1, i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..fmt..Debug$GT$3fmt17ha93968b9ff1b74f6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !48, !noundef !13 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775805
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 3
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1251, i64 noundef 18)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1252, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1253, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @972)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1254, i64 noundef 12)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1255, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1256, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1257, i64 noundef 12)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..error..Error$GT$11description17h3e29bd11352ffd93E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @943, i64 9 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..error..Error$GT$5cause17h8929b41d1b203253E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..error..Error$GT$6source17hb41d5c19985018a7E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..fmt..Display$GT$3fmt17h7d93812e8217ce1cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hde434981500d7af5E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @1259, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.k, align 8
  %.val = load ptr, ptr %1, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  call void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26clear_searched_cards_table17h8dddfaec4d2fb866E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.f)
  %i.g = load i64, ptr %i.d, align 8, !range !34, !noundef !13
  %.not = icmp eq i64 %i.g, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @1260, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.k, align 8
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #42
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$anki..search..NoteTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4dc951a98e4344d9E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  call void @"_ZN4anki7storage4note54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26clear_searched_notes_table17hf9b531b9ec59bc45E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.f)
  %i.g = load i64, ptr %i.d, align 8, !range !34, !noundef !13
  %.not = icmp eq i64 %i.g, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @1260, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.k, align 8
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #42
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$anki..error..network..NetworkError$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a3a6a9222f92b2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @941, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @905, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1261)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, i64 } @"_ZN71_$LT$anki..import_export..ImportError$u20$as$u20$core..error..Error$GT$11description17h1fad5ea53fb30bc4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
switch.lookup:
  %i.a = load i64, ptr %0, align 8, !range !70, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2          ; 2 uses
  %switch.gep = getelementptr inbounds i8, ptr @"switch.table._ZN71_$LT$anki..import_export..ImportError$u20$as$u20$core..error..Error$GT$11description17h1fad5ea53fb30bc4E", i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1 = getelementptr inbounds [8 x i8], ptr @"switch.table._ZN71_$LT$anki..import_export..ImportError$u20$as$u20$core..error..Error$GT$11description17h1fad5ea53fb30bc4E.586", i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %switch.ext, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN71_$LT$anki..import_export..ImportError$u20$as$u20$core..error..Error$GT$5cause17h4c8f83e8c49e748dE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN71_$LT$anki..import_export..ImportError$u20$as$u20$core..error..Error$GT$6source17h55f692ae53834003E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$anki..import_export..ImportError$u20$as$u20$core..fmt..Display$GT$3fmt17hb352112f5f12ff2dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !70, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.f, align 8
  %.val10 = load ptr, ptr %1, align 8             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !13, !noalias !13, !nonnull !13 ; 6 uses
  switch i64 %i.e, label %bb.b [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit16
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1211, i64 noundef 7), !noalias !10805, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit16: ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1212, i64 noundef 6), !noalias !10806, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21: ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1213, i64 noundef 17), !noalias !10807, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26: ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1214, i64 noundef 13), !noalias !10808, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31: ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1215, i64 noundef 9), !noalias !10809, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36: ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1268, i64 noundef 99), !noalias !10810, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit16, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit16 ], [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21 ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26 ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31 ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !10819
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i10 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !10819
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i10, %bb.d ] ; 2 uses
  %i.r = icmp ult i64 %.sroa.03.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !10819, !noundef !13
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit

_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !13
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted20 = load i64, ptr %i.aj, align 8
  %.promoted21 = load i64, ptr %i.ak, align 8, !alias.scope !10820
  %.promoted23 = load i64, ptr %i.al, align 8, !alias.scope !10820
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !13
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !10821, !noundef !13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !10821, !noundef !13 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10821, !noundef !13
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !10821
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !10821
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !10821
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !10820
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !10820
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !10822
  %i.bm = zext i32 %.sroa.014.0.copyload.i17 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i11 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i11, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i11
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !10822
  %i.br = zext i16 %.sroa.015.0.copyload.i16 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i11, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i12
  %i.bv = or disjoint i64 %.sroa.03.0.i11, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i11, %bb.m ] ; 3 uses
  %.sroa.0.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i12, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i13, %i.ag
  br i1 %i.bw, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit18

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i13, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !10822, !noundef !13
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i13, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit18

_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit18: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i15 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i15, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted23, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.119 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.119
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.119, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit18, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_ZN4core4hash3sip9u8to64_le17ha6d1b62c4ca5a74eE.exit18 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc892ce2fc73f26eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !10831, !noalias !10832, !noundef !13 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split5

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit"

.split5:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h37bd9ab57da75b39E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4", label %.split6

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4", label %.split6

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit": ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h6f03b4a794a26c86E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4", label %.split6

.split6:                                          ; preds = %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !13, !noalias !10833, !nonnull !13
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1269, i64 noundef 2), !noalias !10833, !inline_history !7
  br i1 %i.m, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4", label %bb.c

bb.c:                                             ; preds = %.split6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !alias.scope !10834, !noalias !10835, !noundef !13 ; 2 uses
  %i.p = and i32 %i.o, 33554432
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.o, 67108864
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h37bd9ab57da75b39E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4"

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4"

bb.g:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h6f03b4a794a26c86E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4"

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit4": ; preds = %bb.g, %bb.f, %bb.e, %.split6, %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit"
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ true, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE.exit" ], [ true, %.split6 ], [ true, %.split ], [ true, %.split5 ], [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, i64 } @"_ZN72_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..error..Error$GT$11description17h5330921a456cbb37E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
switch.lookup:
  %i.a = load i64, ptr %0, align 8, !range !48, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3          ; 2 uses
  %switch.gep = getelementptr inbounds i8, ptr @"switch.table._ZN72_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..error..Error$GT$11description17h5330921a456cbb37E", i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1 = getelementptr inbounds [8 x i8], ptr @"switch.table._ZN72_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..error..Error$GT$11description17h5330921a456cbb37E.587", i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %switch.ext, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..error..Error$GT$5cause17hd1cb9a9dc3daacfeE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..error..Error$GT$6source17hf3b9738723118f63E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..fmt..Display$GT$3fmt17h564eefc2fa7a32d0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !48, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.f, align 8
  %.val8 = load ptr, ptr %1, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !13, !noalias !13, !nonnull !13 ; 5 uses
  switch i64 %i.e, label %bb.b [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit14
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1251, i64 noundef 18), !noalias !10846, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit14: ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1252, i64 noundef 9), !noalias !10847, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19: ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1254, i64 noundef 12), !noalias !10848, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24: ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1255, i64 noundef 11), !noalias !10849, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29: ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1257, i64 noundef 12), !noalias !10850, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit14, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit14 ], [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19 ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24 ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h40752e040661d9c5E"(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #19 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %.preheader22.split, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

.preheader22.split:                               ; preds = %bb.a
  %.not56 = icmp eq i64 %1, 0
  br i1 %.not56, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread", label %.lr.ph44

"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread": ; preds = %.split, %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit", %.lr.ph44, %bb.e, %bb.c, %bb.f, %bb.k, %bb.h, %bb.g, %bb.i, %.lr.ph42, %"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit", %.lr.ph, %.preheader22.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %.lr.ph ], [ true, %.preheader22.split ], [ false, %bb.h ], [ false, %"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit" ], [ false, %.lr.ph42 ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.k ], [ false, %.lr.ph44 ], [ false, %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit" ], [ true, %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18" ], [ false, %.split ]
  ret i1 %.sroa.0.0

.lr.ph44:                                         ; preds = %.preheader22.split, %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18"
  %.sroa.01.043 = phi i64 [ %i.bg, %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18" ], [ 0, %.preheader22.split ] ; 3 uses
  %i.a = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.01.043 ; 7 uses
  %i.b = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %.sroa.01.043 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10876)
  %i.c = load i64, ptr %i.a, align 8, !range !21, !alias.scope !10875, !noalias !10876, !noundef !13 ; 2 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807   ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !range !21, !alias.scope !10876, !noalias !10875, !noundef !13 ; 2 uses
  %i.f = icmp eq i64 %i.e, -9223372036854775807   ; 3 uses
  %not..i = xor i1 %i.f, true
  %i.g = xor i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.b:                                             ; preds = %.lr.ph44
  br i1 %i.d, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.h = icmp eq i64 %i.c, -9223372036854775808   ; 2 uses
  %i.i = icmp eq i64 %i.e, -9223372036854775808   ; 3 uses
  %i.j = xor i1 %i.h, %i.i
  br i1 %i.j, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = xor i1 %i.i, true
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$fluent_syntax..ast..InlineExpression$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8a8eb73fdc665f69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.m), !inline_history !10854
  br i1 %i.n, label %bb.f, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10878)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10877, !noalias !10878, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10877, !noalias !10878, !noundef !13 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !10878, !noalias !10877, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !10878, !noalias !10877, !noundef !13
  %.not.i.i = icmp eq i64 %i.r, %i.v
  br i1 %.not.i.i, label %.preheader20, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

.preheader20:                                     ; preds = %bb.f
  %.not57 = icmp eq i64 %i.r, 0
  br i1 %.not57, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader20, %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i
  %.sroa.01.0.i.i41 = phi i64 [ %i.ax, %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i ], [ 0, %.preheader20 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.01.0.i.i41 ; 6 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %.sroa.01.0.i.i41 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10882)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !19, !alias.scope !10883, !noalias !10884, !noundef !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !19, !alias.scope !10885, !noalias !10886, !noundef !13
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.g:                                             ; preds = %.lr.ph42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10888)
  %i.ad = load i64, ptr %i.w, align 8, !range !18, !alias.scope !10887, !noalias !10889, !noundef !13
  %i.ae = load i64, ptr %i.x, align 8, !range !18, !alias.scope !10888, !noalias !10890, !noundef !13
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val6.i = load i64, ptr %i.ag, align 8, !alias.scope !10887, !noalias !10889, !noundef !13 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val8.i = load i64, ptr %i.ah, align 8, !alias.scope !10888, !noalias !10890, !noundef !13
  %.not.i.i.i12 = icmp eq i64 %.val6.i, %.val8.i
  br i1 %.not.i.i.i12, label %"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit", label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit": ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val3.i13 = load ptr, ptr %i.ai, align 8, !alias.scope !10888, !noalias !10890, !nonnull !13, !align !22, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i14 = load ptr, ptr %i.aj, align 8, !alias.scope !10887, !noalias !10889, !nonnull !13, !align !22, !noundef !13
  %bcmp.i.i11.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i14, ptr nonnull readonly align 1 %.val3.i13, i64 %.val6.i), !noalias !10891
  %i.ak = icmp eq i32 %bcmp.i.i11.i, 0
  br i1 %i.ak, label %bb.i, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.i:                                             ; preds = %"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10893)
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !10892, !noalias !10894, !nonnull !13, !noundef !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10892, !noalias !10894, !noundef !13 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !10893, !noalias !10895, !nonnull !13, !noundef !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !10893, !noalias !10895, !noundef !13
  %.not.i.i7 = icmp eq i64 %i.ao, %i.as
  br i1 %.not.i.i7, label %.preheader, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

.preheader:                                       ; preds = %bb.i
  %.not58 = icmp eq i64 %i.ao, 0
  br i1 %.not58, label %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.at = add nuw i64 %.sroa.01.0.i.i940, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.ao
  br i1 %exitcond.not, label %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.sroa.01.0.i.i940 = phi i64 [ %i.at, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [104 x i8], ptr %i.am, i64 %.sroa.01.0.i.i940
  %i.av = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i940
  %i.aw = tail call fastcc noundef zeroext i1 @"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.av), !noalias !10896, !inline_history !10870
  br i1 %i.aw, label %bb.j, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i: ; preds = %bb.j, %.preheader
  %i.ax = add nuw i64 %.sroa.01.0.i.i41, 1        ; 2 uses
  %exitcond61.not = icmp eq i64 %i.ax, %i.r
  br i1 %exitcond61.not, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %.lr.ph42

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.f)
  %i.ay = getelementptr i8, ptr %i.a, i64 16
  %.val2.i = load i64, ptr %i.ay, align 8, !alias.scope !10875, !noalias !10876, !noundef !13 ; 2 uses
  %i.az = getelementptr i8, ptr %i.b, i64 16
  %.val4.i = load i64, ptr %i.az, align 8, !alias.scope !10876, !noalias !10875, !noundef !13
  %.not.i.i.i = icmp eq i64 %.val2.i, %.val4.i
  br i1 %.not.i.i.i, label %.split, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

.split:                                           ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.ba, align 8, !alias.scope !10876, !noalias !10875, !nonnull !13, !align !22, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.bb, align 8, !alias.scope !10875, !noalias !10876, !nonnull !13, !align !22, !noundef !13
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %.val2.i), !alias.scope !10897, !noalias !10898, !inline_history !10874
  %i.bc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bc, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit": ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$fluent_syntax..ast..InlineExpression$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8a8eb73fdc665f69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be), !inline_history !10854
  br i1 %i.bf, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18": ; preds = %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i, %.split, %.preheader20, %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit"
  %i.bg = add nuw i64 %.sroa.01.043, 1            ; 2 uses
  %exitcond62.not = icmp eq i64 %i.bg, %1
  br i1 %exitcond62.not, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread", label %.lr.ph44
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hd269ee2b1edc347dE"(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #19 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %.preheader.split, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"

.preheader.split:                                 ; preds = %bb.a
  %.not14 = icmp eq i64 %1, 0
  br i1 %.not14, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread", label %.lr.ph

bb.b:                                             ; preds = %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit"
  %i.a = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %1
  br i1 %exitcond.not, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread", label %.lr.ph

"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread": ; preds = %bb.b, %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i", %.lr.ph, %.preheader.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader.split ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i" ], [ false, %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit" ], [ true, %bb.b ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader.split, %bb.b
  %.sroa.01.09 = phi i64 [ %i.a, %bb.b ], [ 0, %.preheader.split ] ; 3 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.09 ; 3 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.01.09 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10907)
  %i.d = getelementptr i8, ptr %i.b, i64 88
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !10906, !noalias !10907, !noundef !13 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 88
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !10907, !noalias !10906, !noundef !13
  %.not.i.i.i = icmp eq i64 %.val1.i, %.val3.i
  br i1 %.not.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i", label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i": ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !10907, !noalias !10906, !nonnull !13, !align !22, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !10906, !noalias !10907, !nonnull !13, !align !22, !noundef !13
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val2.i, i64 %.val1.i), !alias.scope !10908, !noalias !10909, !inline_history !10905
  %i.h = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.h, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit", label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"

"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit": ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i"
  %i.i = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$fluent_syntax..ast..InlineExpression$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8a8eb73fdc665f69E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c), !inline_history !10905
  br i1 %i.i, label %bb.b, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..error..Error$GT$11description17h7cacfcb2e406c9d7E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @941, i64 12 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..error..Error$GT$5cause17h16fa61a1d78a7672E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..error..Error$GT$6source17h7cce42c782b2d108E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..fmt..Display$GT$3fmt17h2f69417bd4708caeE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !13, !noalias !10912, !nonnull !13
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @941, i64 noundef 12), !noalias !10912, !inline_history !7
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN73_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5bd1c06f801f59fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load i64, ptr %0, align 8, !range !79, !noundef !13
  switch i64 %i.k, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1289, i64 noundef 12)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1290, i64 noundef 11)
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1291, i64 noundef 10)
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1292, i64 noundef 13)
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1293, i64 noundef 13)
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1294, i64 noundef 10)
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1295, i64 noundef 13)
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1296, i64 noundef 10)
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.j, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1297, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.u

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.i, align 8
  %i.w = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1299, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.l:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1300, i64 noundef 11)
  br label %bb.u

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.h, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1301, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.g, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1302, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ad, ptr %i.f, align 8
  %i.ae = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1303, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ag, ptr %i.e, align 8
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1304, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.q:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1305, i64 noundef 26, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.r:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.am, ptr %i.c, align 8
  %i.an = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1306, i64 noundef 26, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.s:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.b, align 8
  %i.aq = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1307, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.a, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1281, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @998)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.b ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.x, %bb.l ], [ %i.z, %bb.m ], [ %i.ab, %bb.n ], [ %i.ae, %bb.o ], [ %i.ah, %bb.p ], [ %i.ak, %bb.q ], [ %i.an, %bb.r ], [ %i.aq, %bb.s ], [ %i.as, %bb.t ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN74_$LT$anki..error..not_found..NotFoundError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d84c711cd3387eaE"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1309, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1310, i64 noundef 9, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1311, i64 noundef 10, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @884, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1308)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17h052d1c2e196cdf1bE"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hd4b42ec04b0eb9d1E":bb.a
  %i.ba = sub nuw i64 %.sroa.09.038, %i.ax
  %exitcond.not = icmp eq i64 %i.az, %.sroa.0.0.i.i.i
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  store ptr %i.av, ptr %i.at, align 8
  store i64 %.sroa.09.038, ptr %i.ay, align 8
  %i.bb = add i64 %.sroa.14.037, 1
  br label %.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h7661ffae69986853E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !13
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.b, align 8, !noundef !13
  %i.c = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !13
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %.val2)
  %i.f = insertvalue { ptr, i64 } %i.c, i64 %.sroa.0.0.i, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h9d2bd9e4b6073eb2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !13, !align !22, !noundef !13
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !noundef !13
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %.val1.i.i)
  %i.e = insertvalue { ptr, i64 } %i.b, i64 %.sroa.0.0.i, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1c51342f554af5d5E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1375, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1376) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11484)
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !11484, !noundef !13 ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.d, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hfefcbee75254a3d4E.exit", !prof !15

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11484
  store i64 %1, ptr %i.a, align 8, !noalias !11484
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !11484
  call void @_ZN5bytes13panic_advance17h799a24a1f73a1f12E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #44, !noalias !11484
  unreachable

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hfefcbee75254a3d4E.exit": ; preds = %bb.c
  %i.h = load ptr, ptr %.val.i, align 8, !alias.scope !11484, !nonnull !13, !align !22, !noundef !13
  %i.i = sub nuw i64 %i.e, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  store ptr %i.j, ptr %.val.i, align 8, !alias.scope !11484
  store i64 %i.i, ptr %i.d, align 8, !alias.scope !11484
  %i.k = sub nuw i64 %i.c, %1
  store i64 %i.k, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h69a63b390248477bE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !13 ; 2 uses
  %.not = icmp ugt i64 %1, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1375, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1376) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %1, ptr %i.d, align 8, !noalias !11487
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !11487, !noundef !13 ; 3 uses
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.d, label %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit", !prof !15

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11487
  store i64 %i.h, ptr %i.b, align 8, !noalias !11487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11487
  store ptr %i.d, ptr %i.a, align 8, !noalias !11487
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !11487
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8, !noalias !11487
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !11487
  store ptr @1190, ptr %i.c, align 8, !noalias !11487
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.j, align 8, !noalias !11487
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.k, align 8, !noalias !11487
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.l, align 8, !noalias !11487
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.m, align 8, !noalias !11487
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1192) #44, !noalias !11487
  unreachable

"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit": ; preds = %bb.c
  %i.n = sub nuw i64 %i.h, %1
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !11487
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !11487, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store ptr %i.q, ptr %i.o, align 8, !alias.scope !11487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = sub nuw i64 %i.f, %1
  store i64 %i.r, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h46d6dd1962065159E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !13, !align !14, !noundef !13
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h4e70c8e4e51768a6E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN78_$LT$anki..error..filtered..CustomStudyError$u20$as$u20$core..error..Error$GT$11description17h2b3252d6ec7a5ed5E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !19, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 32, i64 35
  %.1 = select i1 %i.b, ptr @1401, ptr @1400
  %i.c = insertvalue { ptr, i64 } poison, ptr %.1, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %., 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN78_$LT$anki..error..filtered..CustomStudyError$u20$as$u20$core..error..Error$GT$5cause17hef40fff8fc65c85eE"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN78_$LT$anki..error..filtered..CustomStudyError$u20$as$u20$core..error..Error$GT$6source17h2ed8bf17f36d0528E"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$anki..error..filtered..CustomStudyError$u20$as$u20$core..fmt..Display$GT$3fmt17h074c717b362f121fE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !19, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !noalias !13, !nonnull !13 ; 2 uses
  br i1 %i.b, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit8

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1358, i64 noundef 12), !noalias !11492, !inline_history !7
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit8: ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1357, i64 noundef 15), !noalias !11493, !inline_history !7
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit8, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.f, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit8 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4f43b5fece4e6cf4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11498
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 8), !noalias !11498
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !11498, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !11498, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7f5af0747859046dE.exit", !prof !15

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !11498
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #44, !noalias !11498
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7f5af0747859046dE.exit": ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !11498, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11498
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !11497, !noalias !11499
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !11497, !noalias !11499
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = shl i64 %i.e, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.c, i64 %i.p, i1 false), !noalias !11497
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !11497, !noalias !11499
  %i.q = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hdb4eb8b4925ecf65E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h859a44b306db57aeE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11504
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !11504
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noalias !11504, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !11504, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", !prof !15

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !11504
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #44, !noalias !11504
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !11504, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11504
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !11503, !noalias !11505
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !11503, !noalias !11505
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !11503
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !11503, !noalias !11505
  %i.p = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN79_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..error..Error$GT$11description17h808d82d741eb1139E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #6 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !24, !noundef !13 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN79_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..error..Error$GT$11description17h808d82d741eb1139E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN79_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..error..Error$GT$11description17h808d82d741eb1139E.590", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %switch.load3, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %switch.ext, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN79_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..error..Error$GT$5cause17h538af4b005ac33a1E"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN79_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..error..Error$GT$6source17hdd2319cb8bc40755E"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..fmt..Display$GT$3fmt17hcab378a65b97a644E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !24, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.b, align 8
  %.val6 = load ptr, ptr %1, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val7, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !13, !noalias !13, !nonnull !13 ; 4 uses
  switch i8 %i.a, label %default.unreachable23 [
    i8 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit12
    i8 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit17
    i8 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit22
  ]

default.unreachable23:                            ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1364, i64 noundef 14), !noalias !11514, !inline_history !7
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit12: ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1365, i64 noundef 19), !noalias !11515, !inline_history !7
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit17: ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1366, i64 noundef 21), !noalias !11516, !inline_history !7
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit22: ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1367, i64 noundef 20), !noalias !11517, !inline_history !7
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit22, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit17, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit12, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.e, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.f, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit12 ], [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit17 ], [ %i.h, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit22 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN79_$LT$axum..extract..multipart..MultipartError$u20$as$u20$core..error..Error$GT$6source17h28097993be1d110eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1411, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h23e5ef23fd47f22eE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !13  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$8complete17h5fbab74e5630bed7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = tail call noundef i64 @_ZN5tokio4sync7oneshot5State12set_complete17h08e2d113d203d299E(ptr noundef nonnull align 8 %i.b)
  %i.d = and i64 %i.c, 5
  %or.cond.not.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i, label %bb.c, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$8complete17h5fbab74e5630bed7E.exit"

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !align !14, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noundef !13
  tail call void %i.h(ptr noundef %i.j), !inline_history !11518
  br label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$8complete17h5fbab74e5630bed7E.exit"

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$8complete17h5fbab74e5630bed7E.exit": ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN80_$LT$F$u20$as$u20$axum..handler..Handler$LT$$LP$M$C$T1$C$T2$C$T3$RP$$C$S$GT$$GT$4call17h7935653de5e477e1E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(240) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3480 x i8], align 8              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(224) %0, i64 224, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.e = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 0, ptr %i.f, align 8
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11521
  %i.g = tail call noundef align 8 dereferenceable_or_null(3480) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 3480, i64 noundef range(i64 1, 9) 8) #45, !noalias !11521 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17heeca2a6f8ccb1af4E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 3480) #44
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr578drop_in_place$LT$$LT$anki..sync..http_server..routes..sync_handler$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$u20$as$u20$axum..handler..Handler$LT$$LP$axum_core..extract..private..ViaRequest$C$axum..extract..path..Path$LT$anki..sync..collection..protocol..SyncMethod$GT$$C$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$C$anki..sync..request..SyncRequest$LT$alloc..vec..Vec$LT$u8$GT$$GT$$RP$$C$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$GT$17h58a731917b69ea73E"(ptr noundef nonnull align 8 dereferenceable(3480) %i.a) #42
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17heeca2a6f8ccb1af4E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3480) %i.g, ptr noundef nonnull align 8 dereferenceable(3480) %i.a, i64 3480, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @1419, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN80_$LT$F$u20$as$u20$axum..handler..Handler$LT$$LP$M$C$T1$C$T2$C$T3$RP$$C$S$GT$$GT$4call17hce840b4bb349cf53E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(240) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3480 x i8], align 8              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(224) %0, i64 224, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.e = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 0, ptr %i.f, align 8
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11524
  %i.g = tail call noundef align 8 dereferenceable_or_null(3480) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 3480, i64 noundef range(i64 1, 9) 8) #45, !noalias !11524 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf202b760ddcaf34dE.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 3480) #44
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr584drop_in_place$LT$$LT$anki..sync..http_server..routes..media_sync_handler$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$u20$as$u20$axum..handler..Handler$LT$$LP$axum_core..extract..private..ViaRequest$C$axum..extract..path..Path$LT$anki..sync..media..protocol..MediaSyncMethod$GT$$C$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$C$anki..sync..request..SyncRequest$LT$alloc..vec..Vec$LT$u8$GT$$GT$$RP$$C$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4b2c0669732bef0bE"(ptr noundef nonnull align 8 dereferenceable(3480) %i.a) #42
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf202b760ddcaf34dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3480) %i.g, ptr noundef nonnull align 8 dereferenceable(3480) %i.a, i64 3480, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @1420, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN80_$LT$F$u20$as$u20$axum..handler..Handler$LT$$LP$M$C$T1$C$T2$C$T3$RP$$C$S$GT$$GT$4call28_$u7b$$u7b$closure$u7d$$u7d$17h891972165a162a10E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.26.i = alloca [24 x i8], align 8         ; 7 uses
  %.sroa.38.i = alloca [16 x i8], align 8         ; 7 uses
  %.sroa.50.i = alloca [72 x i8], align 8         ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3375.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.5376.i = alloca [16 x i8], align 8       ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [144 x i8], align 8               ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3363.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.5364.i = alloca [16 x i8], align 8       ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [144 x i8], align 8               ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3351.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.5352.i = alloca [16 x i8], align 8       ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [144 x i8], align 8               ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3339.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.5340.i = alloca [16 x i8], align 8       ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [144 x i8], align 8               ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3327.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.5328.i = alloca [16 x i8], align 8       ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [144 x i8], align 8               ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3315.i = alloca [24 x i8], align 8       ; 7 uses
end_hunk_2
begin_hunk_3_@"_ZN80_$LT$zstd..stream..zio..reader..Reader$LT$R$C$D$GT$$u20$as$u20$std..io..Read$GT$4read17hfda0bbbad5abe841E":.peel.begin
  br i1 %i.ag, label %bb.s, label %bb.p

bb.f:                                             ; preds = %.backedge.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11789
  call void @"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h07fe8d7a648bafa5E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f), !noalias !11790
  %i.ah = load ptr, ptr %i.a, align 8, !noalias !11789, !noundef !13 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit40, label %bb.g

.loopexit40:                                      ; preds = %bb.f
  %.pre44 = load ptr, ptr %i.g, align 8, !noalias !11789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11789
  %i.aj = ptrtoint ptr %.pre44 to i64
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.g, align 8, !noalias !11789, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11789
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ah, ptr %i.d, align 8
  store i64 %i.ak, ptr %i.h, align 8
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  store i64 %2, ptr %i.j, align 8
  store i64 0, ptr %i.k, align 8
  %i.am = load i8, ptr %i.l, align 1, !range !19, !noundef !13
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.e, align 2
  br label %.backedge.peel.backedge

.backedge.peel.backedge:                          ; preds = %bb.h, %bb.n
  br label %.backedge.peel, !llvm.loop !11788

bb.i:                                             ; preds = %bb.k, %.thread
  %i.ao = call { i64, ptr } @"_ZN75_$LT$zstd..stream..raw..Decoder$u20$as$u20$zstd..stream..raw..Operation$GT$3run17hc59c15c7072a7211E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) ; 2 uses
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  %i.ar = trunc nuw i64 %i.ap to i1
  br i1 %i.ar, label %.loopexit41, label %bb.l

bb.j:                                             ; preds = %.thread
  %i.as = call noundef ptr @"_ZN75_$LT$zstd..stream..raw..Decoder$u20$as$u20$zstd..stream..raw..Operation$GT$6reinit17h1ededcf8e8c5188fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.k, label %.loopexit41

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.l, align 1
  br label %bb.i

bb.l:                                             ; preds = %bb.i
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.l, align 1
  %i.au = load i8, ptr %i.m, align 8, !range !19, !noundef !13
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o, %bb.l
  %i.aw = load i64, ptr %i.i, align 8, !noundef !13
  %i.ax = call noundef i64 @"_ZN9zstd_safe18OutBuffer$LT$C$GT$3pos17ha1150b54b03dabbeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$7consume17h04a20eda02305dc5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef %i.aw)
  %.not22 = icmp eq i64 %i.ax, 0
  br i1 %.not22, label %.backedge.peel.backedge, label %.loopexit

bb.o:                                             ; preds = %bb.m
  store i8 2, ptr %i.e, align 2
  br label %bb.n

.loopexit:                                        ; preds = %bb.n, %.backedge.peel, %.peel.begin, %bb.e, %.loopexit40, %.loopexit41, %bb.s
  %.sroa.8.0 = phi i64 [ %.sroa.8.1, %.loopexit41 ], [ %.sroa.8.2, %bb.s ], [ %i.aj, %.loopexit40 ], [ 0, %.peel.begin ], [ %i.w, %bb.e ], [ 0, %.backedge.peel ], [ %i.ax, %bb.n ]
  %.sroa.0.0 = phi i64 [ 1, %.loopexit41 ], [ %.sroa.0.2, %bb.s ], [ 1, %.loopexit40 ], [ 0, %.peel.begin ], [ 0, %bb.e ], [ 0, %.backedge.peel ], [ 0, %bb.n ]
  %i.ay = inttoptr i64 %.sroa.8.0 to ptr
  %i.az = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ba = insertvalue { i64, ptr } %i.az, ptr %i.ay, 1
  ret { i64, ptr } %i.ba

.loopexit41:                                      ; preds = %bb.i, %bb.j, %bb.a
  %.sroa.8.1.in = phi ptr [ %i.q, %bb.a ], [ %i.as, %bb.j ], [ %i.aq, %bb.i ]
  %.sroa.8.1 = ptrtoint ptr %.sroa.8.1.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.p:                                             ; preds = %.loopexit39
  %i.bb = icmp eq ptr %i.ae, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 2, ptr %i.e, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = call noundef i64 @"_ZN9zstd_safe18OutBuffer$LT$C$GT$3pos17ha1150b54b03dabbeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.s

bb.s:                                             ; preds = %.loopexit39, %bb.r
  %.sroa.8.2 = phi i64 [ %i.bc, %bb.r ], [ %i.af, %.loopexit39 ]
  %.sroa.0.2 = phi i64 [ 0, %bb.r ], [ 1, %.loopexit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$axum..extract..multipart..MultipartRejection$u20$as$u20$core..fmt..Debug$GT$3fmt17h23e40013fda1d2beE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1402, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1444)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN81_$LT$tokio..sync..oneshot..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f4ec187e1277065E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !13  ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = atomicrmw or ptr %i.b, i64 4 acquire, align 8 ; 2 uses
  %i.d = and i64 %i.c, 10
  %or.cond.not.i = icmp eq i64 %i.d, 8
  br i1 %or.cond.not.i, label %bb.c, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$5close17hde9a0abafe6599b8E.exit"

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !align !14, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noundef !13
  tail call void %i.h(ptr noundef %i.j), !inline_history !11791
  br label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$5close17hde9a0abafe6599b8E.exit"

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$5close17hde9a0abafe6599b8E.exit": ; preds = %bb.b, %bb.c
  %i.k = and i64 %i.c, 2
  %.not1 = icmp eq i64 %i.k, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$5close17hde9a0abafe6599b8E.exit", %bb.e, %bb.a
  ret void

bb.e:                                             ; preds = %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$5close17hde9a0abafe6599b8E.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.l, align 1
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$core..fmt..Debug$GT$3fmt17h386524f4d126ec6eE"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1448, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @227, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1447, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @884, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1308)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$num_enum..TryFromPrimitiveError$LT$Enum$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h4b540c221c60c612E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1456, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h9d30d5fd02a40103E", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @1460, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.h, align 8
  %.val = load ptr, ptr %1, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$num_enum..TryFromPrimitiveError$LT$Enum$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5940894d8ad50da5E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1462, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i8$GT$3fmt17h762a1924844065c8E", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @1460, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.h, align 8
  %.val = load ptr, ptr %1, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$num_enum..TryFromPrimitiveError$LT$Enum$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hbd23cda0adb902e4E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1464, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h9d30d5fd02a40103E", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @1460, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.h, align 8
  %.val = load ptr, ptr %1, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN83_$LT$axum..extract..multipart..MultipartRejection$u20$as$u20$core..error..Error$GT$6source17h612c71f653bf9555E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$axum_extra..typed_header..TypedHeaderRejection$u20$as$u20$core..fmt..Debug$GT$3fmt17ha804cd1c65369326E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1467, i64 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1465, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1469, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1466)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h01dcd2727dd78d37E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17he38d1f225ea897e2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) ; 5 uses
  %i.b = icmp ugt i64 %i.a, %2
  br i1 %i.b, label %bb.b, label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h74a4b13745474f61E.exit", !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.a, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1471) #44
  unreachable

"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h74a4b13745474f61E.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = sub nuw i64 %2, %i.a
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %i.f = tail call noundef i64 @_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h876226308cfeb057E(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 %i.e, i64 noundef %i.d)
  %i.g = add i64 %i.f, %i.a                       ; 5 uses
  %i.h = icmp ugt i64 %i.g, %2
  br i1 %i.h, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h74a4b13745474f61E.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = sub nuw i64 %2, %i.g
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g
  %i.l = tail call noundef i64 @_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17he38d1f225ea897e2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 %i.k, i64 noundef %i.j)
  %i.m = add i64 %i.l, %i.g
  ret i64 %i.m

bb.d:                                             ; preds = %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h74a4b13745474f61E.exit"
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.g, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1471) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hc6261f87c3f75a6dE"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17hfb3558ef2fa0073cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(20) %i.a, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) ; 5 uses
  %i.c = icmp ugt i64 %i.b, %2
  br i1 %i.c, label %bb.b, label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hfb905f884580fb5dE.exit", !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.b, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1471) #44
  unreachable

"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hfb905f884580fb5dE.exit": ; preds = %bb.a
  %i.d = sub nuw i64 %2, %i.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b
  %i.f = tail call noundef i64 @_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h876226308cfeb057E(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %i.e, i64 noundef %i.d)
  %i.g = add i64 %i.f, %i.b                       ; 5 uses
  %i.h = icmp ugt i64 %i.g, %2
  br i1 %i.h, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hfb905f884580fb5dE.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = sub nuw i64 %2, %i.g
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g
  %i.l = tail call noundef i64 @_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17he38d1f225ea897e2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 %i.k, i64 noundef %i.j)
  %i.m = add i64 %i.l, %i.g
  ret i64 %i.m

bb.d:                                             ; preds = %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hfb905f884580fb5dE.exit"
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.g, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1471) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h8a74d6bfd9794222E"(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 50         ; 2 uses
  %.val1.i.i = load i8, ptr %i.a, align 2, !noundef !13
  %i.b = getelementptr i8, ptr %0, i64 51         ; 2 uses
  %.val2.i.i = load i8, ptr %i.b, align 1, !noundef !13
  %i.c = sub i8 %.val2.i.i, %.val1.i.i
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i.i = load i64, ptr %i.e, align 8, !noundef !13
  %i.f = or i64 %.val.i.i, %i.d
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.g, align 8, !nonnull !13, !align !22, !noundef !13
  %i.h = getelementptr i8, ptr %0, i64 64
  %.val2 = load i64, ptr %i.h, align 8, !noundef !13
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZN5bytes3buf8buf_impl3Buf13has_remaining17hede6a874d1d208c0E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(20) %i.i)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !noundef !13
  %.val2.i = load i64, ptr %i.e, align 8, !noundef !13
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h2fc331ba37953abaE.exit"

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11794)
  %i.l = load i8, ptr %i.a, align 2, !alias.scope !11794, !noundef !13 ; 2 uses
  %i.m = zext i8 %i.l to i64                      ; 3 uses
  %i.n = load i8, ptr %i.b, align 1, !alias.scope !11794, !noundef !13 ; 3 uses
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = icmp uge i8 %i.n, %i.l
  %i.q = icmp ult i8 %i.n, 19
  %or.cond.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %"_ZN81_$LT$hyper..proto..h1..encode..ChunkSize$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h925b21beb83f2305E.exit.i", label %bb.f, !prof !37

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.m, i64 noundef %i.o, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1446) #44, !noalias !11794
  unreachable

"_ZN81_$LT$hyper..proto..h1..encode..ChunkSize$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h925b21beb83f2305E.exit.i": ; preds = %bb.e
  %i.r = sub nuw nsw i64 %i.o, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h2fc331ba37953abaE.exit"

"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h2fc331ba37953abaE.exit": ; preds = %bb.d, %"_ZN81_$LT$hyper..proto..h1..encode..ChunkSize$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h925b21beb83f2305E.exit.i"
  %.pn6.i = phi ptr [ %i.s, %"_ZN81_$LT$hyper..proto..h1..encode..ChunkSize$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h925b21beb83f2305E.exit.i" ], [ %.val.i, %bb.d ] ; 2 uses
  %.pn4.i = phi i64 [ %i.r, %"_ZN81_$LT$hyper..proto..h1..encode..ChunkSize$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h925b21beb83f2305E.exit.i" ], [ %.val2.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn6.i) ]
  br label %bb.g

bb.g:                                             ; preds = %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h2fc331ba37953abaE.exit", %bb.b
  %.pn6.i.pn = phi ptr [ %.pn6.i, %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h2fc331ba37953abaE.exit" ], [ %.val, %bb.b ]
  %.pn4.i.pn = phi i64 [ %.pn4.i, %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h2fc331ba37953abaE.exit" ], [ %.val2, %bb.b ]
  %.pn3.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn6.i.pn, 0
  %.pn = insertvalue { ptr, i64 } %.pn3.i.pn, i64 %.pn4.i.pn, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h9f3b4a2f1470a437E"(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !13
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val4 = load i64, ptr %i.b, align 8, !noundef !13
  %i.c = or i64 %.val4, %.val3
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5bytes3buf8buf_impl3Buf13has_remaining17h733088c2abbb29fbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %.val3.pn.in.idx.i = select i1 %i.e, i64 0, i64 24
  %.val3.pn.in.i = getelementptr i8, ptr %0, i64 %.val3.pn.in.idx.i
  %.val4.pn.in.v.i = select i1 %i.e, i64 8, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val4.pn.in.v.i.sink = phi i64 [ %.val4.pn.in.v.i, %bb.c ], [ 56, %bb.b ]
  %.val3.pn.i.pn.in = phi ptr [ %.val3.pn.in.i, %bb.c ], [ %i.d, %bb.b ]
  %.val4.pn.in.i = getelementptr i8, ptr %0, i64 %.val4.pn.in.v.i.sink
  %.val4.pn.i.pn = load i64, ptr %.val4.pn.in.i, align 8, !noundef !13
  %.val3.pn.i.pn = load ptr, ptr %.val3.pn.i.pn.in, align 8, !nonnull !13, !noundef !13
  %.pn5.i.pn = insertvalue { ptr, i64 } poison, ptr %.val3.pn.i.pn, 0
  %.pn = insertvalue { ptr, i64 } %.pn5.i.pn, i64 %.val4.pn.i.pn, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h765bfa67e98edc57E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
end_hunk_3
