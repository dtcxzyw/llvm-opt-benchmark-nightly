Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$11get_deck_id17h385740ca9e272bb3E":bb.a
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.p, %bb.m
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %"_ZN4core3ptr171drop_in_place$LT$rusqlite..row..AndThenRows$LT$anki..storage..deck..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_deck_id..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf61551eb641a438E.exit39" unwind label %bb.f

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

"_ZN4core3ptr171drop_in_place$LT$rusqlite..row..AndThenRows$LT$anki..storage..deck..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_deck_id..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf61551eb641a438E.exit39": ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.k)
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.s, %"_ZN4core3ptr171drop_in_place$LT$rusqlite..row..AndThenRows$LT$anki..storage..deck..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_deck_id..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf61551eb641a438E.exit39"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.r:                                             ; preds = %bb.l, %"_ZN4core3ptr171drop_in_place$LT$rusqlite..row..AndThenRows$LT$anki..storage..deck..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_deck_id..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf61551eb641a438E.exit"
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.s:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.k)
  br label %bb.q

bb.t:                                             ; preds = %"_ZN4core3ptr171drop_in_place$LT$rusqlite..row..AndThenRows$LT$anki..storage..deck..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_deck_id..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf61551eb641a438E.exit"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$11remove_deck17hdc14e5c33bd1467cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.67 = alloca [64 x i8], align 8           ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 9 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.e, ptr noundef nonnull align 8 %i.h, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @374, i64 noundef 30)
  %i.i = load ptr, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, i64 64, i1 false)
  store ptr %i.i, ptr %i.f, align 8
  %i.l = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %.sroa.4.0..sroa_idx.val26 = load ptr, ptr %i.m, align 8, !noundef !7
  invoke fastcc void @"_ZN67_$LT$$u5b$T$u3b$$u20$1$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7e6449f698370113E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, i64 %2, ptr nonnull %i.l, ptr %.sroa.4.0..sroa_idx.val26)
          to label %bb.h unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #33
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.j, %bb.l, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #31
          to label %bb.r unwind label %bb.q

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !range !30, !noundef !7
  %.not22 = icmp eq i64 %i.o, -9223372036854775783
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.016.0.copyload.pre = load i64, ptr %i.g, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.0..sroa_idx.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.val24 = load ptr, ptr %i.m, align 8, !noundef !7
  invoke fastcc void @_ZN8rusqlite9statement9Statement29execute_with_bound_parameters17h99b9f01282993d44E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.g, ptr %.sroa.4.0..sroa_idx.val, ptr %.sroa.4.0..sroa_idx.val24)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.p = load i64, ptr %i.g, align 8, !range !30, !noundef !7 ; 2 uses
  %.not23 = icmp eq i64 %i.p, -9223372036854775783
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.016.0.copyload = phi i64 [ %i.p, %bb.k ], [ %.sroa.016.0.copyload.pre, %bb.i ]
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.617.0.copyload = load i64, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %.sroa.016.0.copyload, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.617.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %bb.o unwind label %bb.f

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  ret void

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.f)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.q:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.r:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$11update_deck17h02bcc51d66d2bcb8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 28 uses
  %i.b = alloca [8 x i8], align 8                 ; 25 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.1096 = alloca [40 x i8], align 8         ; 2 uses
  %i.i = alloca [112 x i8], align 8               ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.078 = alloca [48 x i8], align 8          ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 19 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [88 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [96 x i8], align 8                ; 16 uses
  %i.r = alloca [64 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.511.sroa.0 = alloca [48 x i8], align 8   ; 5 uses
  %.sroa.511.sroa.10 = alloca [7 x i8], align 1   ; 4 uses
  %.sroa.613 = alloca [16 x i8], align 8          ; 4 uses
  %i.u = alloca [96 x i8], align 8                ; 18 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 15 uses
  %i.x = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [72 x i8], align 8            ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !7
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1997
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1997
  %i.ad = load i64, ptr %i.f, align 8, !range !15, !noalias !1997, !noundef !7
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !noalias !1997, !noundef !7 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit", !prof !16

bb.c:                                             ; preds = %bb.b
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !1997
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ag, i64 %i.ai) #33, !noalias !1997
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit": ; preds = %bb.b
  %i.aj = load ptr, ptr %i.ah, align 8, !noalias !1997, !nonnull !7, !noundef !7 ; 2 uses
  %i.ak = icmp ugt i64 %i.ag, 13
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(14) @190, i64 14, i1 false), !noalias !1998
  store i64 %i.ag, ptr %i.z, align 8, !alias.scope !1999, !noalias !2000
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1999, !noalias !2000
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 14, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1999, !noalias !2000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2001
  invoke void @"_ZN101_$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$u20$as$u20$snafu..GenerateImplicitData$GT$8generate17h12355bed071fbcdfE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e)
          to label %"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE.exit" unwind label %bb.d, !noalias !2001

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit"
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #31
          to label %common.resume unwind label %bb.e, !noalias !2002

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !2002
  unreachable

common.resume:                                    ; preds = %.body58, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.d ], [ %.pn45, %.body58 ]
  resume { ptr, i32 } %common.resume.op

"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit"
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2001
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.x, ptr noundef nonnull align 8 %i.an, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @375, i64 noundef 93)
  %i.ao = load ptr, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %i.ap, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.bl, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit60", %"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE.exit"
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bl

bb.i:                                             ; preds = %bb.f
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store ptr %i.ao, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke void @_ZN5prost7message7Message6encode17hdfcde54e04b1921eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %.body51, %bb.ar, %bb.o, %bb.j
  %.pn43 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.au, %bb.j ], [ %.pn, %bb.ar ], [ %.pn, %.body51 ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #31
          to label %.body58 unwind label %bb.bj

bb.j:                                             ; preds = %bb.be, %bb.at, %bb.q, %bb.n, %bb.l, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.av = load i64, ptr %i.v, align 8, !range !15, !noundef !7
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.j, i64 noundef %i.ay, i64 noundef %i.ba)
          to label %bb.bk unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !9, !noundef !7
  %i.bd = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %i.bd, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.078)
  call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bg = load i8, ptr %i.bf, align 8, !range !10, !alias.scope !2003, !noalias !2004, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2005
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdc9f3553434daff8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.be)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2005
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 104
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc9c52f58e3e45727E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.t unwind label %bb.o, !noalias !2004

bb.o:                                             ; preds = %.noexc
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$17h7ad1dc567626199dE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #31
          to label %.body unwind label %bb.p, !noalias !2004

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !2004
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !2007, !noalias !2006, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bn = load <2 x i32>, ptr %i.bm, align 8, !alias.scope !2007, !noalias !2006
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bb)
          to label %bb.r unwind label %bb.j

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bp = load i8, ptr %i.bo, align 8, !range !10, !alias.scope !2007, !noalias !2006, !noundef !7
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.br = load i32, ptr %i.bq, align 8, !range !13, !alias.scope !2007, !noalias !2006, !noundef !7 ; 2 uses
  %i.bs = trunc nuw i32 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bu = load i32, ptr %i.bt, align 4, !alias.scope !2007, !noalias !2006
  %.sroa.5.0.i = select i1 %i.bs, i32 %i.bu, i32 undef
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bw = load i32, ptr %i.bv, align 8, !range !13, !alias.scope !2007, !noalias !2006, !noundef !7 ; 2 uses
  %i.bx = trunc nuw i32 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !2007, !noalias !2006
  %.sroa.52.0.i = select i1 %i.bx, i32 %i.bz, i32 undef
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cb = load i32, ptr %i.ca, align 8, !range !13, !alias.scope !2007, !noalias !2006, !noundef !7 ; 3 uses
  %i.cc = trunc nuw i32 %i.cb to i1
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 132
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 4, !alias.scope !2007, !noalias !2006
  %.sroa.55.0.i = select i1 %i.cc, i64 %.sroa.55.0.copyload.i, i64 undef ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ce = load i32, ptr %i.cd, align 4, !range !13, !alias.scope !2007, !noalias !2006, !noundef !7 ; 3 uses
  %i.cf = trunc nuw i32 %i.ce to i1
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !2007, !noalias !2006
  %.sroa.510.0.i = select i1 %i.cf, i64 %.sroa.510.0.copyload.i, i64 undef ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ch = load i32, ptr %i.cg, align 8, !range !13, !alias.scope !2007, !noalias !2006, !noundef !7 ; 2 uses
  %i.ci = trunc nuw i32 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.ck = load float, ptr %i.cj, align 4, !alias.scope !2007, !noalias !2006
  %.sroa.514.0.i = select i1 %i.ci, float %i.ck, float undef
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.bl, ptr %i.cl, align 8, !alias.scope !2006, !noalias !2007
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  store <2 x i32> %i.bn, ptr %i.cm, align 8, !alias.scope !2006, !noalias !2007
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i8 %i.bp, ptr %i.cn, align 8, !alias.scope !2006, !noalias !2007
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %i.br, ptr %i.co, align 8, !alias.scope !2006, !noalias !2007
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %.sroa.5.0.i, ptr %i.cp, align 4, !alias.scope !2006, !noalias !2007
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.bw, ptr %i.cq, align 8, !alias.scope !2006, !noalias !2007
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 %.sroa.52.0.i, ptr %i.cr, align 4, !alias.scope !2006, !noalias !2007
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 %i.cb, ptr %i.cs, align 8, !alias.scope !2006, !noalias !2007
  %.sroa.55.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store i64 %.sroa.55.0.i, ptr %.sroa.55.0..sroa_idx6.i, align 4, !alias.scope !2006, !noalias !2007
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  store i32 %i.ce, ptr %i.ct, align 4, !alias.scope !2006, !noalias !2007
  %.sroa.510.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 %.sroa.510.0.i, ptr %.sroa.510.0..sroa_idx11.i, align 8, !alias.scope !2006, !noalias !2007
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 %i.ch, ptr %i.cu, align 8, !alias.scope !2006, !noalias !2007
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store float %.sroa.514.0.i, ptr %i.cv, align 4, !alias.scope !2006, !noalias !2007
  %.sroa.09.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.0..sroa_idx, i64 48, i1 false)
  %i.cw = trunc i64 %.sroa.510.0.i to i8
  %.sroa.511.sroa.10.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.sroa.10.0..sroa.511.0..sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %3 = bitcast i64 %.sroa.55.0.i to <2 x i32>
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.sroa.511.sroa.9.0 = phi i8 [ %i.bg, %bb.t ], [ %i.cw, %bb.r ]
  %.sroa.511.sroa.7.0 = phi i32 [ %i.dd, %bb.t ], [ %i.ce, %bb.r ]
  %.sroa.511.sroa.6.0 = phi i32 [ %i.da, %bb.t ], [ %i.cb, %bb.r ]
  %.sroa.09.0 = phi i64 [ -9223372036854775808, %bb.t ], [ %.sroa.09.0.copyload, %bb.r ]
  %4 = phi <2 x i32> [ %5, %bb.t ], [ %3, %bb.r ]
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.sroa.0, i64 48, i1 false)
  %.sroa.416.sroa.9.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.416.sroa.9.0..sroa.416.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.sroa.10, i64 7, i1 false)
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  store i64 %.sroa.09.0, ptr %i.u, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 %.sroa.511.sroa.6.0, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  store <2 x i32> %4, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 4
  %.sroa.416.sroa.7.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  store i32 %.sroa.511.sroa.7.0, ptr %.sroa.416.sroa.7.0..sroa.416.0..sroa_idx.sroa_idx, align 4
  %.sroa.416.sroa.8.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i8 %.sroa.511.sroa.9.0, ptr %.sroa.416.sroa.8.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_ZN5prost7message7Message6encode17hc69fe12574addca0E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.v unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %.noexc
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.da = load i32, ptr %i.cz, align 8, !alias.scope !2003, !noalias !2004, !noundef !7
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 132
  %5 = load <2 x i32>, ptr %i.db, align 4, !alias.scope !2003, !noalias !2004
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !2003, !noalias !2004, !noundef !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.078, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2003
  %.sroa.078.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.078, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.078.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.078, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.078)
  br label %bb.s

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.s, %bb.w, %bb.af, %bb.ai, %bb.ak, %bb.ap, %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #31
          to label %.body51 unwind label %bb.bj

bb.v:                                             ; preds = %bb.s
  %i.de = load i64, ptr %i.s, align 8, !range !15, !noundef !7
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, i64 noundef %i.dh, i64 noundef %i.dj)
          to label %bb.bd unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dk = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !noundef !7
  %.not = icmp eq ptr %i.dk, null
  br i1 %.not, label %bb.af, label %.lr.ph.i, !prof !16

.lr.ph.i:                                         ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !7, !noundef !7
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !7
  store ptr %i.dm, ptr %i.p, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.do, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.p, ptr %i.q, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @236, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.dq, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @168, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.dr, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @169, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr @170, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr @170, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  store ptr %i.aa, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store ptr @255, ptr %i.ec, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !2008, !noalias !2009, !noundef !7
  %i.ef = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.ee) #34, !noalias !2010 ; 7 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2010
  store ptr %i.q, ptr %i.b, align 8, !noalias !2010
  %exitcond.not = icmp eq i32 %i.ef, 0
  br i1 %exitcond.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.y

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i": ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.loopexit"
  %i.eh = phi i64 [ 6, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.loopexit" ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ], [ 5, %.lr.ph.i.4 ], [ 6, %.lr.ph.i.5 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2010
  %.not13.i = icmp eq i64 %i.eh, %i.eg
  br i1 %.not13.i, label %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit, label %.thread

bb.y:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2010
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc49 unwind label %.loopexit

.noexc49:                                         ; preds = %bb.y
  %i.ei = load i64, ptr %i.a, align 8, !range !30, !noalias !2010, !noundef !7 ; 2 uses
  %.not12.i = icmp eq i64 %i.ei, -9223372036854775783
  br i1 %.not12.i, label %.lr.ph.i.1, label %bb.z

bb.z:                                             ; preds = %.noexc49.5, %.noexc49.4, %.noexc49.3, %.noexc49.2, %.noexc49.1, %.noexc49
  %.lcssa117 = phi i64 [ %i.ei, %.noexc49 ], [ %i.ej, %.noexc49.1 ], [ %i.ek, %.noexc49.2 ], [ %i.el, %.noexc49.3 ], [ %i.em, %.noexc49.4 ], [ %i.en, %.noexc49.5 ]
  %.sroa.890.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.890.0.copyload92 = load i64, ptr %.sroa.890.0..sroa_idx91, align 8, !noalias !2011
  %.sroa.993.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.993.0.copyload95 = load i64, ptr %.sroa.993.0..sroa_idx94, align 8, !noalias !2011
  %.sroa.1096.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1096, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1096.0..sroa_idx97, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2010
  br label %.thread

.lr.ph.i.1:                                       ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2010
  store ptr %i.dt, ptr %i.b, align 8, !noalias !2010
  %exitcond.1.not = icmp eq i32 %i.ef, 1
  br i1 %exitcond.1.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2010
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 2)
          to label %.noexc49.1 unwind label %.loopexit

.noexc49.1:                                       ; preds = %bb.aa
  %i.ej = load i64, ptr %i.a, align 8, !range !30, !noalias !2010, !noundef !7 ; 2 uses
  %.not12.i.1 = icmp eq i64 %i.ej, -9223372036854775783
  br i1 %.not12.i.1, label %.lr.ph.i.2, label %bb.z

.lr.ph.i.2:                                       ; preds = %.noexc49.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2010
  store ptr %i.dv, ptr %i.b, align 8, !noalias !2010
  %exitcond.2.not = icmp eq i32 %i.ef, 2
  br i1 %exitcond.2.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2010
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 3)
          to label %.noexc49.2 unwind label %.loopexit

.noexc49.2:                                       ; preds = %bb.ab
  %i.ek = load i64, ptr %i.a, align 8, !range !30, !noalias !2010, !noundef !7 ; 2 uses
  %.not12.i.2 = icmp eq i64 %i.ek, -9223372036854775783
  br i1 %.not12.i.2, label %.lr.ph.i.3, label %bb.z

.lr.ph.i.3:                                       ; preds = %.noexc49.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2010
  store ptr %i.dx, ptr %i.b, align 8, !noalias !2010
  %exitcond.3.not = icmp eq i32 %i.ef, 3
  br i1 %exitcond.3.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2010
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 4)
          to label %.noexc49.3 unwind label %.loopexit

.noexc49.3:                                       ; preds = %bb.ac
  %i.el = load i64, ptr %i.a, align 8, !range !30, !noalias !2010, !noundef !7 ; 2 uses
  %.not12.i.3 = icmp eq i64 %i.el, -9223372036854775783
  br i1 %.not12.i.3, label %.lr.ph.i.4, label %bb.z

.lr.ph.i.4:                                       ; preds = %.noexc49.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2010
  store ptr %i.dz, ptr %i.b, align 8, !noalias !2010
  %exitcond.4.not = icmp eq i32 %i.ef, 4
  br i1 %exitcond.4.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2010
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 5)
          to label %.noexc49.4 unwind label %.loopexit

.noexc49.4:                                       ; preds = %bb.ad
  %i.em = load i64, ptr %i.a, align 8, !range !30, !noalias !2010, !noundef !7 ; 2 uses
  %.not12.i.4 = icmp eq i64 %i.em, -9223372036854775783
  br i1 %.not12.i.4, label %.lr.ph.i.5, label %bb.z

.lr.ph.i.5:                                       ; preds = %.noexc49.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2010
  store ptr %i.eb, ptr %i.b, align 8, !noalias !2010
  %exitcond.5.not = icmp eq i32 %i.ef, 5
  br i1 %exitcond.5.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ae
end_hunk_0
begin_hunk_1_@"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26get_active_deck_ids_sorted17hbd8924562284adcaE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69, i64 64, i1 false)
  store ptr %i.g, ptr %i.e, align 8
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !7
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.g, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #33
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #31
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !2219, !noalias !2220, !noundef !7
  %i.m = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %.val.i) #34, !noalias !2221 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0
  %i.n = sext i32 %i.m to i64
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775786, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.o, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %bb.l unwind label %bb.e

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN4core4iter8adapters11try_process17h7cf60b9f542db56bE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, ptr noundef align 8 %i.o)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.e)
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.e)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26get_decks_for_search_cards17h5cf0cee0d22f8e7fE"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.69 = alloca [64 x i8], align 8           ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @399, i64 noundef 154)
  %i.g = load ptr, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69, i64 64, i1 false)
  store ptr %i.g, ptr %i.e, align 8
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !7
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.g, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #33
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #31
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !2229, !noalias !2230, !noundef !7
  %i.m = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %.val.i) #34, !noalias !2231 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0
  %i.n = sext i32 %i.m to i64
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775786, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.o, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %bb.l unwind label %bb.e

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN4core4iter8adapters11try_process17h216866e24d728329E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, ptr noundef align 8 %i.o)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.e)
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.e)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$35add_or_update_deck_with_existing_id17h10dac0cff8037c8dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 28 uses
  %i.b = alloca [8 x i8], align 8                 ; 25 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.1093 = alloca [40 x i8], align 8         ; 2 uses
  %i.i = alloca [112 x i8], align 8               ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.075 = alloca [48 x i8], align 8          ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 19 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 16 uses
  %i.o = alloca [64 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.511.sroa.0 = alloca [48 x i8], align 8   ; 5 uses
  %.sroa.511.sroa.10 = alloca [7 x i8], align 1   ; 4 uses
  %.sroa.613 = alloca [16 x i8], align 8          ; 4 uses
  %i.r = alloca [96 x i8], align 8                ; 18 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 15 uses
  %i.u = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.v = alloca [72 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [72 x i8], align 8            ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !7
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2273
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2273
  %i.aa = load i64, ptr %i.f, align 8, !range !15, !noalias !2273, !noundef !7
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !noalias !2273, !noundef !7 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit", !prof !16

bb.c:                                             ; preds = %bb.b
  %i.af = load i64, ptr %i.ae, align 8, !noalias !2273
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ad, i64 %i.af) #33, !noalias !2273
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit": ; preds = %bb.b
  %i.ag = load ptr, ptr %i.ae, align 8, !noalias !2273, !nonnull !7, !noundef !7 ; 2 uses
  %i.ah = icmp ugt i64 %i.ad, 13
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(14) @190, i64 14, i1 false), !noalias !2274
  store i64 %i.ad, ptr %i.w, align 8, !alias.scope !2275, !noalias !2276
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2275, !noalias !2276
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 14, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2275, !noalias !2276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2277
  invoke void @"_ZN101_$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$u20$as$u20$snafu..GenerateImplicitData$GT$8generate17h12355bed071fbcdfE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e)
          to label %"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE.exit" unwind label %bb.d, !noalias !2277

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit"
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #31
          to label %common.resume unwind label %bb.e, !noalias !2278

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !2278
  unreachable

common.resume:                                    ; preds = %.body54, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %.pn41, %.body54 ]
  resume { ptr, i32 } %common.resume.op

"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E.exit"
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2277
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.u, ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @400, i64 noundef 98)
  %i.al = load ptr, ptr %i.u, align 8, !noundef !7 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.am, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.bi, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit56", %"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE.exit"
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bi

bb.i:                                             ; preds = %bb.f
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store ptr %i.al, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke void @_ZN5prost7message7Message6encode17hdfcde54e04b1921eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %.body47, %bb.ao, %bb.o, %bb.j
  %.pn39 = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.ar, %bb.j ], [ %.pn, %bb.ao ], [ %.pn, %.body47 ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #31
          to label %.body54 unwind label %bb.bg

bb.j:                                             ; preds = %bb.bb, %bb.aq, %bb.q, %bb.n, %bb.l, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.s, align 8, !range !15, !noundef !7
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.j, i64 noundef %i.av, i64 noundef %i.ax)
          to label %bb.bh unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !9, !noundef !7
  %i.ba = icmp eq i64 %i.az, -9223372036854775808
  br i1 %i.ba, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.075)
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bd = load i8, ptr %i.bc, align 8, !range !10, !alias.scope !2279, !noalias !2280, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2281
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdc9f3553434daff8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bb)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2281
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 104
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc9c52f58e3e45727E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %bb.t unwind label %bb.o, !noalias !2280

bb.o:                                             ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$17h7ad1dc567626199dE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #31
          to label %.body unwind label %bb.p, !noalias !2280

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !2280
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2283, !noalias !2282, !noundef !7
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bk = load <2 x i32>, ptr %i.bj, align 8, !alias.scope !2283, !noalias !2282
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ay)
          to label %bb.r unwind label %bb.j

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bm = load i8, ptr %i.bl, align 8, !range !10, !alias.scope !2283, !noalias !2282, !noundef !7
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bo = load i32, ptr %i.bn, align 8, !range !13, !alias.scope !2283, !noalias !2282, !noundef !7 ; 2 uses
  %i.bp = trunc nuw i32 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !2283, !noalias !2282
  %.sroa.5.0.i = select i1 %i.bp, i32 %i.br, i32 undef
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bt = load i32, ptr %i.bs, align 8, !range !13, !alias.scope !2283, !noalias !2282, !noundef !7 ; 2 uses
  %i.bu = trunc nuw i32 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !2283, !noalias !2282
  %.sroa.52.0.i = select i1 %i.bu, i32 %i.bw, i32 undef
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.by = load i32, ptr %i.bx, align 8, !range !13, !alias.scope !2283, !noalias !2282, !noundef !7 ; 3 uses
  %i.bz = trunc nuw i32 %i.by to i1
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 132
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 4, !alias.scope !2283, !noalias !2282
  %.sroa.55.0.i = select i1 %i.bz, i64 %.sroa.55.0.copyload.i, i64 undef ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.cb = load i32, ptr %i.ca, align 4, !range !13, !alias.scope !2283, !noalias !2282, !noundef !7 ; 3 uses
  %i.cc = trunc nuw i32 %i.cb to i1
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !2283, !noalias !2282
  %.sroa.510.0.i = select i1 %i.cc, i64 %.sroa.510.0.copyload.i, i64 undef ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ce = load i32, ptr %i.cd, align 8, !range !13, !alias.scope !2283, !noalias !2282, !noundef !7 ; 2 uses
  %i.cf = trunc nuw i32 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.ch = load float, ptr %i.cg, align 4, !alias.scope !2283, !noalias !2282
  %.sroa.514.0.i = select i1 %i.cf, float %i.ch, float undef
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.bi, ptr %i.ci, align 8, !alias.scope !2282, !noalias !2283
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  store <2 x i32> %i.bk, ptr %i.cj, align 8, !alias.scope !2282, !noalias !2283
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i8 %i.bm, ptr %i.ck, align 8, !alias.scope !2282, !noalias !2283
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %i.bo, ptr %i.cl, align 8, !alias.scope !2282, !noalias !2283
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %.sroa.5.0.i, ptr %i.cm, align 4, !alias.scope !2282, !noalias !2283
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.bt, ptr %i.cn, align 8, !alias.scope !2282, !noalias !2283
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 %.sroa.52.0.i, ptr %i.co, align 4, !alias.scope !2282, !noalias !2283
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 %i.by, ptr %i.cp, align 8, !alias.scope !2282, !noalias !2283
  %.sroa.55.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store i64 %.sroa.55.0.i, ptr %.sroa.55.0..sroa_idx6.i, align 4, !alias.scope !2282, !noalias !2283
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  store i32 %i.cb, ptr %i.cq, align 4, !alias.scope !2282, !noalias !2283
  %.sroa.510.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 %.sroa.510.0.i, ptr %.sroa.510.0..sroa_idx11.i, align 8, !alias.scope !2282, !noalias !2283
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 %i.ce, ptr %i.cr, align 8, !alias.scope !2282, !noalias !2283
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store float %.sroa.514.0.i, ptr %i.cs, align 4, !alias.scope !2282, !noalias !2283
  %.sroa.09.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.0..sroa_idx, i64 48, i1 false)
  %i.ct = trunc i64 %.sroa.510.0.i to i8
  %.sroa.511.sroa.10.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.sroa.10.0..sroa.511.0..sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %3 = bitcast i64 %.sroa.55.0.i to <2 x i32>
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.sroa.511.sroa.9.0 = phi i8 [ %i.bd, %bb.t ], [ %i.ct, %bb.r ]
  %.sroa.511.sroa.7.0 = phi i32 [ %i.da, %bb.t ], [ %i.cb, %bb.r ]
  %.sroa.511.sroa.6.0 = phi i32 [ %i.cx, %bb.t ], [ %i.by, %bb.r ]
  %.sroa.09.0 = phi i64 [ -9223372036854775808, %bb.t ], [ %.sroa.09.0.copyload, %bb.r ]
  %4 = phi <2 x i32> [ %5, %bb.t ], [ %3, %bb.r ]
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.sroa.0, i64 48, i1 false)
  %.sroa.416.sroa.9.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.416.sroa.9.0..sroa.416.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.sroa.10, i64 7, i1 false)
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  store i64 %.sroa.09.0, ptr %i.r, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i32 %.sroa.511.sroa.6.0, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  store <2 x i32> %4, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 4
  %.sroa.416.sroa.7.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  store i32 %.sroa.511.sroa.7.0, ptr %.sroa.416.sroa.7.0..sroa.416.0..sroa_idx.sroa_idx, align 4
  %.sroa.416.sroa.8.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i8 %.sroa.511.sroa.9.0, ptr %.sroa.416.sroa.8.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_ZN5prost7message7Message6encode17hc69fe12574addca0E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.v unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %.noexc
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cx = load i32, ptr %i.cw, align 8, !alias.scope !2279, !noalias !2280, !noundef !7
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 132
  %5 = load <2 x i32>, ptr %i.cy, align 4, !alias.scope !2279, !noalias !2280
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.da = load i32, ptr %i.cz, align 4, !alias.scope !2279, !noalias !2280, !noundef !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2279
  %.sroa.075.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.075, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.075, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.075)
  br label %bb.s

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.s, %bb.w, %bb.af, %bb.aj, %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #31
          to label %.body47 unwind label %bb.bg

bb.v:                                             ; preds = %bb.s
  %i.db = load i64, ptr %i.p, align 8, !range !15, !noundef !7
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, i64 noundef %i.de, i64 noundef %i.dg)
          to label %bb.ba unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dh = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !noundef !7
  %.not = icmp eq ptr %i.dh, null
  br i1 %.not, label %bb.af, label %.lr.ph.i, !prof !16

.lr.ph.i:                                         ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !7, !noundef !7
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !7
  store ptr %i.dj, ptr %i.m, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.x, ptr %i.n, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @255, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @236, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store ptr %i.dn, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @168, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  store ptr %i.do, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @169, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr @170, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 2 uses
  store ptr %i.q, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store ptr @170, ptr %i.dz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !2284, !noalias !2285, !noundef !7
  %i.ec = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.eb) #34, !noalias !2286 ; 7 uses
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2286
  store ptr %i.n, ptr %i.b, align 8, !noalias !2286
  %exitcond.not = icmp eq i32 %i.ec, 0
  br i1 %exitcond.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.y

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i": ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.loopexit"
  %i.ee = phi i64 [ 6, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.loopexit" ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ], [ 5, %.lr.ph.i.4 ], [ 6, %.lr.ph.i.5 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  %.not13.i = icmp eq i64 %i.ee, %i.ed
  br i1 %.not13.i, label %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit, label %bb.ah

bb.y:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2286
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc45 unwind label %.loopexit

.noexc45:                                         ; preds = %bb.y
  %i.ef = load i64, ptr %i.a, align 8, !range !30, !noalias !2286, !noundef !7 ; 2 uses
  %.not12.i = icmp eq i64 %i.ef, -9223372036854775783
  br i1 %.not12.i, label %.lr.ph.i.1, label %bb.z

bb.z:                                             ; preds = %.noexc45.5, %.noexc45.4, %.noexc45.3, %.noexc45.2, %.noexc45.1, %.noexc45
  %.lcssa114 = phi i64 [ %i.ef, %.noexc45 ], [ %i.eg, %.noexc45.1 ], [ %i.eh, %.noexc45.2 ], [ %i.ei, %.noexc45.3 ], [ %i.ej, %.noexc45.4 ], [ %i.ek, %.noexc45.5 ]
  %.sroa.887.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.887.0.copyload89 = load i64, ptr %.sroa.887.0..sroa_idx88, align 8, !noalias !2287
  %.sroa.990.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.990.0.copyload92 = load i64, ptr %.sroa.990.0..sroa_idx91, align 8, !noalias !2287
  %.sroa.1093.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1093, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1093.0..sroa_idx94, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  br label %bb.ah

.lr.ph.i.1:                                       ; preds = %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2286
  store ptr %i.dq, ptr %i.b, align 8, !noalias !2286
  %exitcond.1.not = icmp eq i32 %i.ec, 1
  br i1 %exitcond.1.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2286
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 2)
          to label %.noexc45.1 unwind label %.loopexit

.noexc45.1:                                       ; preds = %bb.aa
  %i.eg = load i64, ptr %i.a, align 8, !range !30, !noalias !2286, !noundef !7 ; 2 uses
  %.not12.i.1 = icmp eq i64 %i.eg, -9223372036854775783
  br i1 %.not12.i.1, label %.lr.ph.i.2, label %bb.z

.lr.ph.i.2:                                       ; preds = %.noexc45.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2286
  store ptr %i.ds, ptr %i.b, align 8, !noalias !2286
  %exitcond.2.not = icmp eq i32 %i.ec, 2
  br i1 %exitcond.2.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2286
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 3)
          to label %.noexc45.2 unwind label %.loopexit

.noexc45.2:                                       ; preds = %bb.ab
  %i.eh = load i64, ptr %i.a, align 8, !range !30, !noalias !2286, !noundef !7 ; 2 uses
  %.not12.i.2 = icmp eq i64 %i.eh, -9223372036854775783
  br i1 %.not12.i.2, label %.lr.ph.i.3, label %bb.z

.lr.ph.i.3:                                       ; preds = %.noexc45.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2286
  store ptr %i.du, ptr %i.b, align 8, !noalias !2286
  %exitcond.3.not = icmp eq i32 %i.ec, 3
  br i1 %exitcond.3.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2286
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 4)
          to label %.noexc45.3 unwind label %.loopexit

.noexc45.3:                                       ; preds = %bb.ac
  %i.ei = load i64, ptr %i.a, align 8, !range !30, !noalias !2286, !noundef !7 ; 2 uses
  %.not12.i.3 = icmp eq i64 %i.ei, -9223372036854775783
  br i1 %.not12.i.3, label %.lr.ph.i.4, label %bb.z

.lr.ph.i.4:                                       ; preds = %.noexc45.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2286
  store ptr %i.dw, ptr %i.b, align 8, !noalias !2286
  %exitcond.4.not = icmp eq i32 %i.ec, 4
  br i1 %exitcond.4.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2286
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.45.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 5)
          to label %.noexc45.4 unwind label %.loopexit

.noexc45.4:                                       ; preds = %bb.ad
  %i.ej = load i64, ptr %i.a, align 8, !range !30, !noalias !2286, !noundef !7 ; 2 uses
  %.not12.i.4 = icmp eq i64 %i.ej, -9223372036854775783
  br i1 %.not12.i.4, label %.lr.ph.i.5, label %bb.z

.lr.ph.i.5:                                       ; preds = %.noexc45.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2286
  store ptr %i.dy, ptr %i.b, align 8, !noalias !2286
  %exitcond.5.not = icmp eq i32 %i.ec, 5
  br i1 %exitcond.5.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.ae
end_hunk_1
