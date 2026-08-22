Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$19update_deck_configs17h33ef4a6831f24a47E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$22all_deck_config_legacy17h147025e59481bdccE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @"_ZN4anki7storage10deckconfig54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15all_deck_config17h4ae9a98a6e9b984eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.h)
  %i.i = load i64, ptr %i.e, align 8, !range !153, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.i, -9223372036854775773
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.j, align 8 ; 3 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.523.0.copyload = load ptr, ptr %.sroa.523.0..sroa_idx, align 8 ; 4 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.624.0.copyload = load i64, ptr %.sroa.624.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.538.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.833.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %.sroa.2.0..sroa_idx35, align 8
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.523.0.copyload, ptr %.sroa.336.0..sroa_idx, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.624.0.copyload, ptr %.sroa.437.0..sroa_idx, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = icmp ult i64 %.sroa.624.0.copyload, 24019198012642646
  call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [384 x i8], ptr %.sroa.523.0.copyload, i64 %.sroa.624.0.copyload
  %i.m = icmp sgt i64 %.sroa.022.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  store ptr %.sroa.523.0.copyload, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.523.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.022.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17he5ab72fd11e4e3bbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1414
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !range !25, !noalias !1414, !noundef !3
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !26, !noalias !1414, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i", !prof !27

bb.d:                                             ; preds = %.noexc
  %i.s = load i64, ptr %i.r, align 8, !noalias !1414
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.q, i64 %i.s) #26
          to label %.noexc45 unwind label %bb.k

.noexc45:                                         ; preds = %bb.d
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i": ; preds = %.noexc
  %i.t = load ptr, ptr %i.r, align 8, !noalias !1414, !nonnull !3, !noundef !3
  %i.u = icmp ugt i64 %i.q, 127
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1414
  store i64 %i.q, ptr %i.c, align 8, !noalias !1414
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !noalias !1414
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8, !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1418
  store ptr %i.c, ptr %i.a, align 8, !noalias !1418
  %i.x = invoke noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17ha547d707068bd27dE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.f unwind label %bb.e, !noalias !1422 ; 2 uses

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body unwind label %bb.j, !noalias !1422

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1418
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.h, !noalias !1422

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.i, !noalias !1422

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !1422
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.g
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.k

.thread:                                          ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1414
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !1422
  unreachable

bb.k:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.d, %bb.c, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.z, %bb.h ], [ %i.y, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17h73ff8051c3f431f2E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #27
          to label %common.resume unwind label %bb.t

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.copyload47 = load i64, ptr %i.c, align 8, !noalias !1423 ; 2 uses
  %.sroa.7.0.copyload50 = load ptr, ptr %i.v, align 8, !noalias !1423 ; 2 uses
  %.sroa.9.0.copyload52 = load i64, ptr %i.w, align 8, !noalias !1423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1414
  %i.ad = icmp eq i64 %.sroa.0.0.copyload47, -9223372036854775808
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.7.067 = phi ptr [ %i.x, %.thread ], [ %.sroa.7.0.copyload50, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.067) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN94_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$serde_json..error..Error$GT$$GT$4from17hb2c10e38184e88cfE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 %.sroa.7.067)
          to label %bb.r unwind label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload47, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.copyload50, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.copyload52, ptr %.sroa.563.0..sroa_idx, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94a9ee72a230ccbeE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17h73ff8051c3f431f2E.exit" unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfba5061ab8b9cfb6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17h73ff8051c3f431f2E.exit": ; preds = %bb.o
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfba5061ab8b9cfb6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.518.sroa.6.0.copyload = load ptr, ptr %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx, align 16
  %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.518.sroa.7.0.copyload = load i64, ptr %.sroa.518.sroa.7.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.641.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.720.0..sroa_idx, i64 80, i1 false)
  %i.ah = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store <2 x i64> %i.ah, ptr %0, align 8
  %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.518.sroa.6.0.copyload, ptr %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx, align 8
  %.sroa.540.sroa.6.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.518.sroa.7.0.copyload, ptr %.sroa.540.sroa.6.0..sroa.540.0..sroa_idx.sroa_idx, align 8
  br label %bb.o

bb.s:                                             ; preds = %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$$GT$17h73ff8051c3f431f2E.exit", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.t:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$22get_deck_config_legacy17h1529bd7106c3a3c5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.611.i = alloca [112 x i8], align 8       ; 7 uses
  %.sroa.519.i = alloca [264 x i8], align 8       ; 6 uses
  %i.a = alloca [384 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [112 x i8], align 8         ; 7 uses
  %.sroa.5.i = alloca [264 x i8], align 8         ; 6 uses
  %i.b = alloca [384 x i8], align 8               ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [544 x i8], align 8               ; 9 uses
  %.sroa.6 = alloca [112 x i8], align 8           ; 4 uses
  %.sroa.4 = alloca [264 x i8], align 8           ; 2 uses
  %i.f = alloca [384 x i8], align 8               ; 11 uses
  %i.g = alloca [384 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.519.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1424
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  call void @"_ZN4anki7storage10deckconfig54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15get_deck_config17h542f970a2d04b145E"(ptr noalias noundef nonnull sret([384 x i8]) align 8 captures(address) dereferenceable(384) %i.b, ptr noundef nonnull align 8 %i.h, i64 noundef %2), !noalias !1424
  %i.i = load i64, ptr %i.b, align 8, !range !738, !noalias !1424, !noundef !3 ; 3 uses
  %i.j = icmp eq i64 %i.i, -9223372036854775807
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false), !noalias !1424
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1424
  br label %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread"

bb.c:                                             ; preds = %bb.a
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.628.0..sroa_idx.i, i64 264, i1 false), !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1424
  %.not.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not.i, label %bb.d, label %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread30"

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1424
  call void @"_ZN4anki7storage10deckconfig54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15get_deck_config17h542f970a2d04b145E"(ptr noalias noundef nonnull sret([384 x i8]) align 8 captures(address) dereferenceable(384) %i.a, ptr noundef nonnull align 8 %i.h, i64 noundef 1), !noalias !1424
  %i.l = load i64, ptr %i.a, align 8, !range !738, !noalias !1424, !noundef !3 ; 3 uses
  %i.m = icmp eq i64 %i.l, -9223372036854775807
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.611.i, ptr noundef nonnull align 8 dereferenceable(112) %i.n, i64 112, i1 false), !noalias !1424
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1424
  br label %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread"

bb.f:                                             ; preds = %bb.d
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.519.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.631.0..sroa_idx.i, i64 264, i1 false), !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1424
  %.not32.i = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not32.i, label %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit", label %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread30"

"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread": ; preds = %bb.e, %bb.b
  %.sroa.611.i.sink = phi ptr [ %.sroa.611.i, %bb.e ], [ %.sroa.6.i, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.611.i.sink, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.519.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.g

"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread30": ; preds = %bb.f, %bb.c
  %.sroa.6.i.sink = phi ptr [ %.sroa.6.i, %bb.c ], [ %.sroa.611.i, %bb.f ]
  %.sroa.5.i.sink = phi ptr [ %.sroa.5.i, %bb.c ], [ %.sroa.519.i, %bb.f ]
  %.ph = phi i64 [ %i.i, %bb.c ], [ %i.l, %bb.f ]
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i.sink, i64 112, i1 false)
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.i.sink, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.519.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.h

"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit": ; preds = %bb.f
  call void @"_ZN71_$LT$anki..deckconfig..DeckConfig$u20$as$u20$core..default..Default$GT$7default17h7be06d72ccb53769E"(ptr noalias noundef nonnull sret([384 x i8]) align 8 captures(address) dereferenceable(384) %i.f)
  %.pre = load i64, ptr %i.f, align 8, !range !738 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.519.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.p = icmp eq i64 %.pre, -9223372036854775807
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread", %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, i64 112, i1 false)
  br label %bb.o

bb.h:                                             ; preds = %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread30", %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit"
  %i.r = phi i64 [ %.ph, %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit.thread30" ], [ %.pre, %"_ZN4anki10deckconfig46_$LT$impl$u20$anki..collection..Collection$GT$15get_deck_config17h023ec5b071d3fdb0E.exit" ] ; 2 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.518.0..sroa_idx, i64 112, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.619.0..sroa_idx, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not, label %bb.j, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, i64 112, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4, i64 264, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN120_$LT$anki..deckconfig..schema11..DeckConfSchema11$u20$as$u20$core..convert..From$LT$anki..deckconfig..DeckConfig$GT$$GT$4from17h4b35790045e15b29E"(ptr noalias noundef nonnull sret([544 x i8]) align 8 captures(address) dereferenceable(544) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(384) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN10serde_json3ser6to_vec17h50507bfc12d751a7E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %i.e)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$17hdb34da9d73a05ae1E"(ptr noalias noundef align 8 dereferenceable(544) %i.e) #27
          to label %bb.s unwind label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.t = load i64, ptr %i.d, align 8, !range !26, !noundef !3 ; 2 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN94_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$serde_json..error..Error$GT$$GT$4from17hb2c10e38184e88cfE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 %i.w)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %bb.l
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.622.0.copyload = load i64, ptr %.sroa.622.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.x, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.622.0.copyload, ptr %.sroa.616.0..sroa_idx, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$17hdb34da9d73a05ae1E"(ptr noalias noundef align 8 dereferenceable(544) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n, %bb.g
  ret void

bb.p:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$17hdb34da9d73a05ae1E"(ptr noalias noundef align 8 dereferenceable(544) %i.e) #27
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$17hdb34da9d73a05ae1E"(ptr noalias noundef align 8 dereferenceable(544) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.r:                                             ; preds = %bb.p, %bb.k
  %i.z = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE":bb.a
  br label %bb.al

bb.ad:                                            ; preds = %bb.a
  %i.bl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @457, i64 noundef 19)
  br label %bb.al

bb.ae:                                            ; preds = %bb.a
  %i.bm = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 17)
  br label %bb.al

bb.af:                                            ; preds = %bb.a
  %i.bn = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @459, i64 noundef 20)
  br label %bb.al

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.b, align 8
  %i.bp = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @461, i64 noundef 23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @462, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @460)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.ah:                                            ; preds = %bb.a
  %i.bq = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 37)
  br label %bb.al

bb.ai:                                            ; preds = %bb.a
  %i.br = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 24)
  br label %bb.al

bb.aj:                                            ; preds = %bb.a
  %i.bs = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @465, i64 noundef 24)
  br label %bb.al

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.a, align 8
  %i.bu = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @466, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @421, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.ai, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.an, %bb.l ], [ %i.ao, %bb.m ], [ %i.ap, %bb.n ], [ %i.aq, %bb.o ], [ %i.as, %bb.p ], [ %i.at, %bb.q ], [ %i.au, %bb.r ], [ %i.aw, %bb.s ], [ %i.ay, %bb.t ], [ %i.ba, %bb.u ], [ %i.bb, %bb.v ], [ %i.bc, %bb.w ], [ %i.bd, %bb.x ], [ %i.be, %bb.y ], [ %i.bg, %bb.z ], [ %i.bi, %bb.aa ], [ %i.bj, %bb.ab ], [ %i.bk, %bb.ac ], [ %i.bl, %bb.ad ], [ %i.bm, %bb.ae ], [ %i.bn, %bb.af ], [ %i.bp, %bb.ag ], [ %i.bq, %bb.ah ], [ %i.br, %bb.ai ], [ %i.bs, %bb.aj ], [ %i.bu, %bb.ak ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN59_$LT$anki_io..error..FileOp$u20$as$u20$core..fmt..Debug$GT$3fmt17h98121c6bc1368113E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !13813, !noundef !3 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775802
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 6
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @467, i64 noundef 8)
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 4)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @469, i64 noundef 4)
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 6)
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @471, i64 noundef 5)
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @472, i64 noundef 6)
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @474, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @473)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @475, i64 noundef 6)
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @476, i64 noundef 7)
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @477, i64 noundef 4)
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 8)
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @479, i64 noundef 18)
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 12)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @481, i64 noundef 7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ %i.p, %bb.l ], [ %i.q, %bb.m ], [ %i.r, %bb.n ], [ %i.s, %bb.o ], [ %i.t, %bb.p ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(256) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h5319096f48f7e0feE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.h = cmpxchg ptr %i.g, i64 1, i64 0 acquire monotonic, align 8
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.j release, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.p, %bb.g ]
  invoke void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3f7d375f8928fb5bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr70drop_in_place$LT$alloc..sync..Weak$LT$anki..notetype..Notetype$GT$$GT$17hebe57e7d4bd9c7cbE.exit" unwind label %bb.k

bb.e:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  invoke void @"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new17h873f00cb810471bdE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.o)
          to label %bb.h unwind label %bb.e

bb.g:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.c, align 8, !range !14558, !noundef !3 ; 3 uses
  %i.r = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, -9223372036854775807) %i.q)
  %i.s = icmp eq i64 %i.r, 1
  %i.t = add nuw i64 %i.q, 15
  %i.u = sub i64 0, %i.q
  %i.v = and i64 %i.t, %i.u
  %.sroa.0.0.i10 = select i1 %i.s, i64 %i.v, i64 15
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.0.i10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.y, ptr noundef nonnull align 8 dereferenceable(256) %i.o, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.z = invoke noundef nonnull ptr @"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$8into_arc17h5303308b29217747E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.z, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3f7d375f8928fb5bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit"
  %i.aa = phi ptr [ %i.j, %bb.c ], [ %i.z, %bb.i ], [ %i.an, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit" ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  ret ptr %i.ab

bb.k:                                             ; preds = %bb.o, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr70drop_in_place$LT$alloc..sync..Weak$LT$anki..notetype..Notetype$GT$$GT$17hebe57e7d4bd9c7cbE.exit": ; preds = %bb.o, %.thread, %bb.d
  %.pn5.pn = phi { ptr, i32 } [ %i.aq, %.thread ], [ %i.ar, %bb.o ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %.pn5.pn

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new17h873f00cb810471bdE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.ad)
  %i.ae = load i64, ptr %i.f, align 8, !range !14558, !noundef !3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14559
  invoke fastcc void @"_ZN63_$LT$anki..notetype..Notetype$u20$as$u20$core..clone..Clone$GT$5clone17h6549acf63128520bE"(ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.ad)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ah = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, -9223372036854775807) %i.ae)
  %i.ai = icmp eq i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ae, 15
  %i.ak = sub i64 0, %i.ae
  %i.al = and i64 %i.aj, %i.ak
  %.sroa.0.0.i9 = select i1 %i.ai, i64 %i.al, i64 15
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.0.0.i9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false), !noalias !14559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.an = call noundef nonnull ptr @"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$8into_arc17h5303308b29217747E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ao = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !14564
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit"

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h1ae294f526e4d3f9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit" unwind label %.thread

.thread:                                          ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %0, align 8
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..sync..Weak$LT$anki..notetype..Notetype$GT$$GT$17hebe57e7d4bd9c7cbE.exit"

"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit": ; preds = %bb.m, %bb.n
  store ptr %i.an, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.o:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN83_$LT$alloc..sync..UniqueArcUninit$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc151a5921413da8cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %"_ZN4core3ptr70drop_in_place$LT$alloc..sync..Weak$LT$anki..notetype..Notetype$GT$$GT$17hebe57e7d4bd9c7cbE.exit" unwind label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5alloc5alloc15exchange_malloc17hcfed4d974299cc5fE(i64 noundef range(i64 16, 385) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.a = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) %0, i64 noundef 8) #29 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %0) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$prost..error..EncodeError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb33ab02a2a9bf8cdE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @483, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @484, i64 noundef 8, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @482, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @485, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @460)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN63_$LT$anki..notetype..Notetype$u20$as$u20$core..clone..Clone$GT$5clone17h6549acf63128520bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.o = load i32, ptr %i.n, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8aa4efc145f23440E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.e ], [ %i.q, %bb.c ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #27
          to label %bb.v unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd433ae84b8966e60E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.s, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..fields..NoteField$GT$$GT$17h6c89437bcd91e9abE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #27
          to label %bb.b unwind label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !14569)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load <2 x i32>, ptr %i.t, align 8, !alias.scope !14569, !noalias !14572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14574
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14569, !noalias !14572, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14574
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.j unwind label %bb.i, !noalias !14572

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.k ], [ %i.z, %bb.i ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #27
          to label %.body unwind label %bb.r, !noalias !14572

bb.i:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14574
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_1
