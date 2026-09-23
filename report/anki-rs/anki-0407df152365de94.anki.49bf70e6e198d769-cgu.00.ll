Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki4sync10collection6graves46_$LT$impl$u20$anki..collection..Collection$GT$12apply_graves17ha18ba6247b92b5d4E":bb.a
  %storemerge = phi i64 [ %i.as, %bb.r ], [ %i.at, %bb.u ]
  store i64 %storemerge, ptr %0, align 8
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0263312bbab5da7fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.thread144 unwind label %.thread153

.thread144:                                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread142

bb.x:                                             ; preds = %bb.c
  %i.ax = load i64, ptr %i.h, align 8, !range !13, !noundef !3
  %.not85 = icmp eq i64 %i.ax, -9223372036854775773
  br i1 %.not85, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN4anki7storage6graves54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$14add_note_grave17h0b177017a471c924E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %i.o, i64 noundef %i.s, i32 noundef %3)
          to label %bb.aa unwind label %bb.b

bb.aa:                                            ; preds = %bb.z
  %i.ay = load i64, ptr %i.g, align 8, !range !13, !noundef !3
  %.not86 = icmp eq i64 %i.ay, -9223372036854775773
  br i1 %.not86, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.az = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !4095, !nonnull !3, !noundef !3
  %i.ba = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4095, !nonnull !3, !noundef !3 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %._crit_edge, label %bb.c

bb.ad:                                            ; preds = %bb.ab, %bb.y
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6c5510c59ab99307E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.ae unwind label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..notes..NoteId$GT$$GT$17h05a812e2aee91054E.exit"

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf761041fef57d0bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3bbd6daa9a14133E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.body unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3bbd6daa9a14133E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread142 unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread142:                                       ; preds = %bb.ag, %.thread144
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443c0f2199d408cdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$17ha45047441f91f5faE.exit" unwind label %bb.aj

bb.aj:                                            ; preds = %.thread142
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda2b47b306232246E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.body, %.thread146, %bb.f, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.aj ], [ %eh.lpad-body, %.body ], [ %i.ai, %bb.f ], [ %.pn107149, %.thread146 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$17ha45047441f91f5faE.exit": ; preds = %.thread142
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda2b47b306232246E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
  br label %bb.h

.body:                                            ; preds = %bb.ai, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.ai ], [ %i.bc, %bb.af ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$17ha45047441f91f5faE"(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #27
          to label %common.resume unwind label %bb.p

.thread153:                                       ; preds = %._crit_edge164, %bb.w
  %lpad.thr_comm151 = landingpad { ptr, i32 }
          cleanup
  br label %.thread146

"_ZN4core3ptr79drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..notes..NoteId$GT$$GT$17h05a812e2aee91054E.exit.thread108": ; preds = %bb.b, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..notes..NoteId$GT$$GT$17h05a812e2aee91054E.exit"
  %.pn113 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..notes..NoteId$GT$$GT$17h05a812e2aee91054E.exit" ], [ %i.p, %bb.b ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$anki..card..CardId$GT$$GT$17hcbb9e2769897673fE"(ptr noalias noundef align 8 dereferenceable(24) %2) #27
          to label %.thread146 unwind label %bb.p

.thread146:                                       ; preds = %bb.d, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..notes..NoteId$GT$$GT$17h05a812e2aee91054E.exit.thread108", %.thread153
  %.pn107149 = phi { ptr, i32 } [ %.pn113, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..notes..NoteId$GT$$GT$17h05a812e2aee91054E.exit.thread108" ], [ %lpad.thr_comm151, %.thread153 ], [ %i.y, %bb.d ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$17ha45047441f91f5faE"(ptr noalias noundef align 8 dereferenceable(24) %i.bj) #27
          to label %common.resume unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki4sync10collection6status46_$LT$impl$u20$anki..collection..Collection$GT$19sync_status_offline17h410472dafee0d0f3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 12)) %0, ptr noalias noundef align 8 dereferenceable(728) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @"_ZN4anki7storage21collection_timestamps54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$25get_collection_timestamps17hd624914c68aee7b8E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775773
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.011.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8 ; 2 uses
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.613.0.copyload = load i64, ptr %.sroa.613.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.822.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload, ptr %.sroa.224.0..sroa_idx, align 8
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.0.copyload, ptr %.sroa.325.0..sroa_idx, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.613.0.copyload, ptr %.sroa.426.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq i64 %.sroa.613.0.copyload, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %.sroa.512.0.copyload, %.sroa.613.0.copyload
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.f, %bb.c
  %.sroa.010.0 = phi i32 [ 2, %bb.d ], [ %., %bb.f ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.010.0, ptr %i.g, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = icmp sgt i64 %.sroa.011.0.copyload, %.sroa.613.0.copyload
  %. = zext i1 %i.h to i32
  br label %bb.e

bb.g:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki4sync10collection7changes46_$LT$impl$u20$anki..collection..Collection$GT$13apply_changes17h5f7e1811e22b4cc1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160) %2, i32 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.10.i = alloca [103 x i8], align 1        ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 16 uses
  %.sroa.2.i = alloca [16 x i8], align 8          ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [544 x i8], align 8               ; 4 uses
  %i.g = alloca [384 x i8], align 8               ; 13 uses
  %i.h = alloca [384 x i8], align 8               ; 11 uses
  %.sroa.74.i64.sroa.6 = alloca [104 x i8], align 8 ; 6 uses
  %.sroa.4.i65 = alloca [264 x i8], align 8       ; 5 uses
  %i.i = alloca [384 x i8], align 8               ; 8 uses
  %i.j = alloca [544 x i8], align 8               ; 11 uses
  %.sroa.8.i66 = alloca [536 x i8], align 8       ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [112 x i8], align 8               ; 11 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [112 x i8], align 8               ; 8 uses
  %i.o = alloca [224 x i8], align 8               ; 4 uses
  %i.p = alloca [192 x i8], align 8               ; 13 uses
  %i.q = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.74.i.sroa.8 = alloca [88 x i8], align 8  ; 6 uses
  %.sroa.4.i34 = alloca [72 x i8], align 8        ; 5 uses
  %i.r = alloca [192 x i8], align 8               ; 7 uses
  %i.s = alloca [224 x i8], align 8               ; 13 uses
  %.sroa.8.i35 = alloca [216 x i8], align 8       ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [112 x i8], align 8               ; 12 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [112 x i8], align 8               ; 9 uses
  %i.y = alloca [256 x i8], align 8               ; 15 uses
  %.sroa.8.i.sroa.9 = alloca [84 x i8], align 4   ; 6 uses
  %.sroa.4.i = alloca [136 x i8], align 8         ; 5 uses
  %i.z = alloca [256 x i8], align 8               ; 8 uses
  %i.aa = alloca [256 x i8], align 8              ; 16 uses
  %i.ab = alloca [280 x i8], align 8              ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [48 x i8], align 8               ; 5 uses
  %i.ae = alloca [112 x i8], align 8              ; 6 uses
  %i.af = alloca [112 x i8], align 8              ; 6 uses
  %.sroa.8 = alloca [104 x i8], align 8           ; 6 uses
  %.sroa.11 = alloca [88 x i8], align 8           ; 7 uses
  %.sroa.16 = alloca [84 x i8], align 4           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0135.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ah = icmp ult i64 %.sroa.5.0.copyload, 32940614417338486
  tail call void @llvm.assume(i1 %i.ah)
  %.idx.i = mul nuw nsw i64 %.sroa.5.0.copyload, 280
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4155
  store ptr %.sroa.4.0.copyload, ptr %i.ac, align 8, !noalias !4155
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4155
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.0135.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4155
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !4155
  %i.aj = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.aj, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.lr.ph.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.lr.ph.i": ; preds = %bb.a
  %.sroa.836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 232 ; 3 uses
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 168 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 176 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.8.i.sroa.8.0..sroa.510.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.8.i.sroa.9.0..sroa.510.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %.sroa.8.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.8.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.i"

bb.b:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.split-lp77.i, %.loopexit76.i
  %.pn27.i = phi { ptr, i32 } [ %.pn.i, %.loopexit.split-lp.i ], [ %lpad.loopexit78.i, %.loopexit76.i ], [ %lpad.loopexit.split-lp79.i, %.loopexit.split-lp77.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5bc422dc6c53b7ddE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.thread264 unwind label %bb.w, !noalias !4156

.loopexit76.i:                                    ; preds = %bb.l, %bb.c
  %lpad.loopexit78.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp77.i:                           ; preds = %bb.af
  %lpad.loopexit.split-lp79.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.i": ; preds = %bb.ae, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.lr.ph.i"
  %i.ay = phi ptr [ %.sroa.4.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.lr.ph.i" ], [ %i.cp, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 280
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4157, !noalias !4158
  %.sroa.0.0.copyload35.i = load i64, ptr %i.ay, align 8, !noalias !4159 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload35.i, 2
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.thread.i", label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.i"
  %.sroa.836.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.0.0.copyload35.i, ptr %i.ab, align 8, !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.836.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.836.0..sroa_idx37.i, i64 272, i1 false), !noalias !4156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4155
  invoke void @"_ZN4anki8notetype8schema11124_$LT$impl$u20$core..convert..From$LT$anki..notetype..schema11..NotetypeSchema11$GT$$u20$for$u20$anki..notetype..Notetype$GT$4from17h2307ff8bc5a11161E"(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.ab)
          to label %bb.d unwind label %.loopexit76.i, !noalias !4156

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.thread.i": ; preds = %bb.ae, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.i", %bb.a
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5bc422dc6c53b7ddE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.thread293 unwind label %bb.ah

.thread293:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.an

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4155
  %i.ba = load i64, ptr %i.al, align 8, !noalias !4155, !noundef !3
  invoke void @"_ZN4anki7storage8notetype54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$12get_notetype17h423e65336bcaa0cbE"(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.z, ptr noundef nonnull align 8 %i.ak, i64 noundef %i.ba)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.i, !noalias !4156

.loopexit.split-lp.i:                             ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit81.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp82.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.aa) #27
          to label %bb.b unwind label %bb.w, !noalias !4156

.loopexit.i:                                      ; preds = %.noexc30.i, %.noexc29.i, %bb.q
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ad, %bb.aa, %bb.x, %bb.p, %bb.n, %bb.i, %bb.d
  %lpad.loopexit81.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.u
  %lpad.loopexit.split-lp82.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.e:                                             ; preds = %bb.d
  %4 = load <4 x i64>, ptr %i.z, align 8, !noalias !4155 ; 5 uses
  %5 = extractelement <4 x i64> %4, i64 0         ; 2 uses
  %6 = icmp eq i64 %5, 3
  %.sroa.8.i.sroa.8.0.copyload239 = load i32, ptr %.sroa.8.i.sroa.8.0..sroa.510.0..sroa_idx.i.sroa_idx, align 8, !noalias !4155 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.8.i.sroa.9, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.8.i.sroa.9.0..sroa.510.0..sroa_idx.i.sroa_idx, i64 84, i1 false), !noalias !4155
  br i1 %6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.16, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.8.i.sroa.9, i64 84, i1 false), !noalias !4160
  %7 = extractelement <4 x i64> %4, i64 1
  %i.bb = extractelement <4 x i64> %4, i64 2
  %i.bc = extractelement <4 x i64> %4, i64 3
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.611.0..sroa_idx.i, i64 136, i1 false), !noalias !4155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4155
  %.not20.i = icmp eq i64 %5, 2
  br i1 %.not20.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4155
  store <4 x i64> %4, ptr %i.y, align 8, !noalias !4155
  store i32 %.sroa.8.i.sroa.8.0.copyload239, ptr %.sroa.8.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.8.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.8.i.sroa.9, i64 84, i1 false), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.i, i64 136, i1 false), !noalias !4155
  %i.bd = load i64, ptr %i.am, align 8, !noalias !4155, !noundef !3
  %i.be = load i64, ptr %i.an, align 8, !noalias !4155, !noundef !3
  %.not21.i = icmp sgt i64 %i.bd, %i.be
  br i1 %.not21.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.y)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.i, !noalias !4156

bb.j:                                             ; preds = %bb.h
  %i.bf = load i64, ptr %i.ao, align 8, !noalias !4155, !noundef !3 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 64051194700380388
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.ap, align 8, !noalias !4155, !noundef !3 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 64051194700380388
  call void @llvm.assume(i1 %i.bi)
  %.not22.i = icmp eq i64 %i.bf, %i.bh
  br i1 %.not22.i, label %bb.m, label %bb.r

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4155
  br label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17hc98b0cd22d269991E.exit.i", %bb.k
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.aa)
          to label %bb.ae unwind label %.loopexit76.i, !noalias !4156

bb.m:                                             ; preds = %bb.j
  %i.bj = load i64, ptr %i.aq, align 8, !noalias !4155, !noundef !3 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 41175768021673107
  call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %i.ar, align 8, !noalias !4155, !noundef !3 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 41175768021673107
  call void @llvm.assume(i1 %i.bm)
  %.not23.i = icmp eq i64 %i.bj, %i.bl
  br i1 %.not23.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.y)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.i, !noalias !4156

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4155
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4162
  %i.bn = load ptr, ptr %i.at, align 8, !alias.scope !4161, !noalias !4163, !nonnull !3, !noundef !3
  %i.bo = load i64, ptr %i.au, align 8, !alias.scope !4161, !noalias !4163, !noundef !3
  invoke void @"_ZN4anki7storage8notetype54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15get_notetype_id17hc234114305553486E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noundef nonnull align 8 %i.ak, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bn, i64 noundef %i.bo)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !4156

.noexc.i:                                         ; preds = %bb.p
  %i.bp = load i64, ptr %i.v, align 8, !range !13, !noalias !4162, !noundef !3 ; 2 uses
  %.not22.i.i = icmp eq i64 %i.bp, -9223372036854775773
  br i1 %.not22.i.i, label %.lr.ph.i.i, label %.loopexit75.i

.lr.ph.i.i:                                       ; preds = %.noexc.i, %.noexc31.i
  %i.bq = load i64, ptr %i.av, align 8, !range !7, !noalias !4162, !noundef !3
  %i.br = load i64, ptr %i.aw, align 8, !noalias !4162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4162
  %i.bs = trunc nuw i64 %i.bq to i1
  %i.bt = load i64, ptr %i.al, align 8, !noalias !4155
  %i.bu = icmp ne i64 %i.br, %i.bt
  %or.cond.not.i = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond.not.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull @132, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @132, i64 1))
          to label %.noexc29.i unwind label %.loopexit.i, !noalias !4156

.noexc29.i:                                       ; preds = %bb.q
  invoke void @_ZN4anki8notetype8Notetype12set_modified17hc6ac9c30b28595f1E(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.aa, i32 noundef %3)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !4156

.noexc30.i:                                       ; preds = %.noexc29.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4162
  %i.bv = load ptr, ptr %i.at, align 8, !alias.scope !4161, !noalias !4163, !nonnull !3, !noundef !3
  %i.bw = load i64, ptr %i.au, align 8, !alias.scope !4161, !noalias !4163, !noundef !3
  invoke void @"_ZN4anki7storage8notetype54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15get_notetype_id17hc234114305553486E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noundef nonnull align 8 %i.ak, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bw)
          to label %.noexc31.i unwind label %.loopexit.i, !noalias !4156

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.bx = load i64, ptr %i.v, align 8, !range !13, !noalias !4162, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bx, -9223372036854775773
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit75.i

bb.r:                                             ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4164
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, i64 noundef 23, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc32.i unwind label %bb.t, !noalias !4156

.noexc32.i:                                       ; preds = %bb.r
  %i.by = load i64, ptr %i.u, align 8, !range !7, !noalias !4164, !noundef !3
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !8, !noalias !4164, !noundef !3 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.bz, label %bb.s, label %bb.u, !prof !9

bb.s:                                             ; preds = %.noexc32.i
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !4164
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.cb, i64 %i.cd) #26
          to label %.noexc33.i unwind label %bb.t, !noalias !4156

.noexc33.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.y) #27
          to label %.loopexit.split-lp.i unwind label %bb.w, !noalias !4156

bb.u:                                             ; preds = %.noexc32.i
  %i.cf = load ptr, ptr %i.cc, align 8, !noalias !4164, !nonnull !3, !noundef !3 ; 2 uses
  %i.cg = icmp ugt i64 %i.cb, 22
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.cf, ptr noundef nonnull align 1 dereferenceable(23) @109, i64 23, i1 false), !noalias !4165
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.y)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4156

bb.v:                                             ; preds = %bb.u
  %i.ch = ptrtoint ptr %i.cf to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4155
  br label %bb.af

bb.w:                                             ; preds = %bb.t, %.loopexit.split-lp.i, %bb.b
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !4156
  unreachable

.loopexit75.i:                                    ; preds = %.noexc.i, %.noexc31.i
  %.lcssa.i.i = phi i64 [ %i.bx, %.noexc31.i ], [ %i.bp, %.noexc.i ]
  %.sroa.514.0.copyload.i.i = load i64, ptr %i.av, align 8, !noalias !4162
  %.sroa.615.0.copyload.i.i = load i64, ptr %i.aw, align 8, !noalias !4162
  %.sroa.716.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.14.24.copyload = load i32, ptr %.sroa.716.0..sroa_idx.i.i, align 8, !noalias !4160
  %.sroa.16.24..sroa.716.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.16, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.16.24..sroa.716.0..sroa_idx.i.i.sroa_idx, i64 84, i1 false), !noalias !4160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4162
  br label %bb.af

bb.x:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4155
  invoke void @"_ZN4anki7storage8notetype54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$39add_or_update_notetype_with_existing_id17h532d01868ba18afcE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.x, ptr noundef nonnull align 8 %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.aa)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.i, !noalias !4156

bb.y:                                             ; preds = %bb.x
  %i.cj = load i64, ptr %i.x, align 8, !range !13, !noalias !4155, !noundef !3 ; 2 uses
  %.not25.i = icmp eq i64 %i.cj, -9223372036854775773
  br i1 %.not25.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.10.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.10.0.copyload126 = load i64, ptr %.sroa.10.0..sroa_idx125, align 8, !noalias !4160
  %.sroa.12.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.12.0.copyload129 = load i64, ptr %.sroa.12.0..sroa_idx128, align 8, !noalias !4160
  %.sroa.14.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.14.0.copyload132 = load i32, ptr %.sroa.14.0..sroa_idx131, align 8, !noalias !4160
  %.sroa.16.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.16, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.16.0..sroa_idx134, i64 84, i1 false), !noalias !4160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4155
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4155
  %i.ck = invoke noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h5e777dce6c50c31fE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.i, !noalias !4156 ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ck, ptr %i.w, align 8, !noalias !4155
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17hc98b0cd22d269991E.exit.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !4166
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.ad, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17hc98b0cd22d269991E.exit.i"

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h1ae294f526e4d3f9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17hc98b0cd22d269991E.exit.i" unwind label %.loopexit.split-lp.loopexit.i, !noalias !4156

"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17hc98b0cd22d269991E.exit.i": ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4155
  br label %bb.l

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4155
  %i.co = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4167, !noalias !4158, !nonnull !3, !noundef !3
  %i.cp = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4167, !noalias !4158, !nonnull !3, !noundef !3 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.co
  br i1 %i.cq, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.i"

bb.af:                                            ; preds = %bb.f, %bb.v, %bb.z, %.loopexit75.i
  %.sroa.14.1 = phi i32 [ %.sroa.14.0.copyload132, %bb.z ], [ %.sroa.14.24.copyload, %.loopexit75.i ], [ %.sroa.8.i.sroa.8.0.copyload239, %bb.f ], [ 9, %bb.v ]
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.copyload129, %bb.z ], [ %.sroa.615.0.copyload.i.i, %.loopexit75.i ], [ %i.bc, %bb.f ], [ 23, %bb.v ]
  %.sroa.10.1 = phi i64 [ %.sroa.10.0.copyload126, %bb.z ], [ %.sroa.514.0.copyload.i.i, %.loopexit75.i ], [ %i.bb, %bb.f ], [ %i.ch, %bb.v ]
  %.sroa.0.1 = phi i64 [ %i.cj, %bb.z ], [ %.lcssa.i.i, %.loopexit75.i ], [ %7, %bb.f ], [ %i.cb, %bb.v ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.aa)
          to label %bb.ag unwind label %.loopexit.split-lp77.i, !noalias !4156

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4155
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5bc422dc6c53b7ddE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haef885a32793be70E.exit.thread.i", %bb.ag
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread264

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.not = icmp eq i64 %.sroa.0.1, -9223372036854775773
  br i1 %.not, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.5183.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.16, i64 84, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.2180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.1, ptr %.sroa.2180.0..sroa_idx, align 8
  %.sroa.3181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.1, ptr %.sroa.3181.0..sroa_idx, align 8
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.14.1, ptr %.sroa.4182.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9c6ac3f1039f1d93E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he616468ab58a31bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.body32 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he616468ab58a31bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..schema11..DeckSchema11$GT$$GT$17hcc071f701c671f6eE.exit" unwind label %bb.dt

bb.am:                                            ; preds = %bb.ak
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.an:                                            ; preds = %.thread293, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0147.0.copyload = load i64, ptr %i.cu, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.5149.0.copyload = load i64, ptr %.sroa.5149.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i34)
  %i.cv = icmp ult i64 %.sroa.5149.0.copyload, 41175768021673107
  call void @llvm.assume(i1 %i.cv)
  %.idx.i36 = mul nuw nsw i64 %.sroa.5149.0.copyload, 224
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 %.idx.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4168
  store ptr %.sroa.4148.0.copyload, ptr %i.t, align 8, !noalias !4168
  %.sroa.5.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %.sroa.4148.0.copyload, ptr %.sroa.5.0..sroa_idx.i37, align 8, !noalias !4168
  %.sroa.6.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.0147.0.copyload, ptr %.sroa.6.0..sroa_idx.i38, align 8, !noalias !4168
  %.sroa.7.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  store ptr %i.cw, ptr %.sroa.7.0..sroa_idx.i39, align 8, !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i35)
  %i.cx = icmp eq i64 %.sroa.5149.0.copyload, 0
  br i1 %i.cx, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.lr.ph.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.lr.ph.i": ; preds = %bb.an
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 4 uses
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 168 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  %.sroa.gep92.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %.sroa.gep93.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %.sroa.74.i.sroa.8.0..sroa.514.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.74.i.sroa.8.0..sroa.3.0..sroa_idx.i40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.i"

.thread.i:                                        ; preds = %bb.bk, %bb.aw, %.thread62.loopexit.split-lp.i, %.thread62.loopexit.i, %.loopexit.split-lp75.i, %.loopexit74.i
  %.pn24.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.aw ], [ %lpad.thr_comm.split-lp.i, %bb.bk ], [ %lpad.loopexit.split-lp77.i, %.loopexit.split-lp75.i ], [ %lpad.loopexit76.i, %.loopexit74.i ], [ %lpad.loopexit79.i, %.thread62.loopexit.i ], [ %lpad.loopexit.split-lp80.i, %.thread62.loopexit.split-lp.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he80eb5f73b1be928E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.thread272.thread337 unwind label %bb.bi, !noalias !4169

.loopexit74.i:                                    ; preds = %bb.bf
  %lpad.loopexit76.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp75.i:                           ; preds = %.thread69.i
  %lpad.loopexit.split-lp77.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.i": ; preds = %bb.be, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.lr.ph.i"
  %i.dg = phi ptr [ %.sroa.4148.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.lr.ph.i" ], [ %i.ef, %bb.be ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4170)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  store ptr %i.dh, ptr %.sroa.5.0..sroa_idx.i37, align 8, !alias.scope !4170, !noalias !4171
  %.sroa.0.0.copyload30.i = load i64, ptr %i.dg, align 8, !noalias !4172 ; 3 uses
  %.sroa.8.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.i35, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.0..sroa_idx31.i, i64 216, i1 false), !noalias !4172
  %.not.i42 = icmp eq i64 %.sroa.0.0.copyload30.i, -9223372036854775807
  br i1 %.not.i42, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.thread.i", label %bb.ao

bb.ao:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4168
  store i64 %.sroa.0.0.copyload30.i, ptr %i.s, align 8, !noalias !4168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.i35, i64 216, i1 false), !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4168
  %.not17.i = icmp eq i64 %.sroa.0.0.copyload30.i, -9223372036854775808
  %.sroa.gep.val.i = load i64, ptr %.sroa.gep.i, align 8, !noalias !4168
  %.sroa.gep92.val.i = load i64, ptr %.sroa.gep92.i, align 8, !noalias !4168
  %i.di = select i1 %.not17.i, i64 %.sroa.gep.val.i, i64 %.sroa.gep92.val.i
  invoke void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$8get_deck17h3aeace89e775e0d0E"(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.r, ptr noundef nonnull align 8 %i.cy, i64 noundef %i.di)
          to label %bb.ap unwind label %bb.bk, !noalias !4169

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.thread.i": ; preds = %bb.be, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.i", %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i35)
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he80eb5f73b1be928E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.thread299 unwind label %.thread272

.thread299:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i34)
  br label %bb.bn

.thread62.loopexit.i:                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$$GT$17h389bee44ba0e8f26E.exit.i", %bb.at
  %lpad.loopexit79.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread62.loopexit.split-lp.i:                    ; preds = %bb.bg
  %lpad.loopexit.split-lp80.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ap:                                            ; preds = %bb.ao
  %8 = load <4 x i64>, ptr %i.r, align 8, !noalias !4168 ; 5 uses
  %9 = extractelement <4 x i64> %8, i64 0         ; 2 uses
  %10 = icmp eq i64 %9, -9223372036854775807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.74.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.74.i.sroa.8.0..sroa.514.0..sroa_idx.i.sroa_idx, i64 88, i1 false), !noalias !4168
  br i1 %10, label %.thread69.i, label %bb.aq

.thread69.i:                                      ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.74.i.sroa.8, i64 88, i1 false), !noalias !4173
  %11 = extractelement <4 x i64> %8, i64 1
  %i.dj = extractelement <4 x i64> %8, i64 2
  %i.dk = extractelement <4 x i64> %8, i64 3
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..decks..schema11..DeckSchema11$GT$17h088cd17b5f27a710E"(ptr noalias noundef align 8 dereferenceable(224) %i.s)
          to label %bb.bj unwind label %.loopexit.split-lp75.i, !noalias !4169

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.i34, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.615.0..sroa_idx.i, i64 72, i1 false), !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4168
  %.not18.i = icmp eq i64 %9, -9223372036854775808
  br i1 %.not18.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4168
  store <4 x i64> %8, ptr %i.q, align 8, !noalias !4168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.74.i.sroa.8.0..sroa.3.0..sroa_idx.i40.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.74.i.sroa.8, i64 88, i1 false), !noalias !4168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i41, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.i34, i64 72, i1 false), !noalias !4168
  %i.dl = load i64, ptr %i.s, align 8, !range !8, !noalias !4168, !noundef !3
  %i.dm = load i64, ptr %i.cz, align 8, !noalias !4168, !noundef !3
  %.sroa.gep93.val.i = load i64, ptr %.sroa.gep93.i, align 8, !noalias !4168
  %.sroa.gep.val99.i = load i64, ptr %.sroa.gep.i, align 8, !noalias !4168
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.q)
          to label %bb.as unwind label %bb.bk, !noalias !4169

bb.as:                                            ; preds = %bb.ar
  %.not19.i = icmp eq i64 %i.dl, -9223372036854775808
  %i.dn = select i1 %.not19.i, i64 %.sroa.gep93.val.i, i64 %.sroa.gep.val99.i
  %.not20.i43 = icmp sgt i64 %i.dm, %i.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4168
  br i1 %.not20.i43, label %bb.bf, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.o, ptr noundef nonnull align 8 dereferenceable(224) %i.s, i64 224, i1 false), !noalias !4168
  invoke void @"_ZN4anki5decks8schema11110_$LT$impl$u20$core..convert..From$LT$anki..decks..schema11..DeckSchema11$GT$$u20$for$u20$anki..decks..Deck$GT$4from17hffc1427d8e1f2f60E"(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(224) %i.o)
          to label %bb.au unwind label %.thread62.loopexit.i, !noalias !4169

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4168
  call void @llvm.experimental.noalias.scope.decl(metadata !4174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4175
  %i.do = load ptr, ptr %i.da, align 8, !alias.scope !4174, !noalias !4176, !nonnull !3, !noundef !3
  %i.dp = load i64, ptr %i.db, align 8, !alias.scope !4174, !noalias !4176, !noundef !3
  invoke void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$11get_deck_id17h385740ca9e272bb3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.l, ptr noundef nonnull align 8 %i.cy, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.do, i64 noundef %i.dp)
          to label %.noexc.i45 unwind label %.loopexit.split-lp.i44, !noalias !4169

.noexc.i45:                                       ; preds = %bb.au
  %i.dq = load i64, ptr %i.l, align 8, !range !13, !noalias !4175, !noundef !3 ; 2 uses
  %.not22.i.i46 = icmp eq i64 %i.dq, -9223372036854775773
  br i1 %.not22.i.i46, label %.lr.ph.i.i51, label %.loopexit73.i

.lr.ph.i.i51:                                     ; preds = %.noexc.i45, %.noexc28.i
  %i.dr = load i64, ptr %i.dc, align 8, !range !7, !noalias !4175, !noundef !3
  %i.ds = load i64, ptr %i.dd, align 8, !noalias !4175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4175
  %i.dt = trunc nuw i64 %i.dr to i1
  %i.du = load i64, ptr %i.de, align 8, !noalias !4168
  %i.dv = icmp ne i64 %i.ds, %i.du
  %or.cond.not.i52 = select i1 %i.dt, i1 %i.dv, i1 false
  br i1 %or.cond.not.i52, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.lr.ph.i.i51
  invoke void @_ZN4anki5decks4name14NativeDeckName10add_suffix17ha67b56380adf4d6eE(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 1)
          to label %.noexc26.i unwind label %.loopexit.i54, !noalias !4169

.noexc26.i:                                       ; preds = %bb.av
  invoke void @_ZN4anki5decks4Deck12set_modified17hb31ee2488e43a2e6E(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.p, i32 noundef %3)
          to label %.noexc27.i unwind label %.loopexit.i54, !noalias !4169

.noexc27.i:                                       ; preds = %.noexc26.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4175
  %i.dw = load ptr, ptr %i.da, align 8, !alias.scope !4174, !noalias !4176, !nonnull !3, !noundef !3
  %i.dx = load i64, ptr %i.db, align 8, !alias.scope !4174, !noalias !4176, !noundef !3
  invoke void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$11get_deck_id17h385740ca9e272bb3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.l, ptr noundef nonnull align 8 %i.cy, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dw, i64 noundef %i.dx)
          to label %.noexc28.i unwind label %.loopexit.i54, !noalias !4169

.noexc28.i:                                       ; preds = %.noexc27.i
  %i.dy = load i64, ptr %i.l, align 8, !range !13, !noalias !4175, !noundef !3 ; 2 uses
  %.not.i.i56 = icmp eq i64 %i.dy, -9223372036854775773
  br i1 %.not.i.i56, label %.lr.ph.i.i51, label %.loopexit73.i

.loopexit.i54:                                    ; preds = %.noexc27.i, %.noexc26.i, %bb.av
  %lpad.loopexit.i55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp.i44:                           ; preds = %bb.bd, %bb.ba, %bb.ax, %bb.au
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp.i44, %.loopexit.i54
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i55, %.loopexit.i54 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i44 ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.p) #27
          to label %.thread.i unwind label %bb.bi, !noalias !4169

.loopexit73.i:                                    ; preds = %.noexc.i45, %.noexc28.i
  %.lcssa.i.i47 = phi i64 [ %i.dy, %.noexc28.i ], [ %i.dq, %.noexc.i45 ]
  %.sroa.514.0.copyload.i.i48 = load i64, ptr %i.dc, align 8, !noalias !4175
  %.sroa.615.0.copyload.i.i49 = load i64, ptr %i.dd, align 8, !noalias !4175
  %.sroa.716.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.716.0..sroa_idx.i.i50, i64 88, i1 false), !noalias !4173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4175
  br label %bb.bg

bb.ax:                                            ; preds = %.lr.ph.i.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4168
  invoke void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$35add_or_update_deck_with_existing_id17h10dac0cff8037c8dE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.n, ptr noundef nonnull align 8 %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.p)
          to label %bb.ay unwind label %.loopexit.split-lp.i44, !noalias !4169

bb.ay:                                            ; preds = %bb.ax
  %i.dz = load i64, ptr %i.n, align 8, !range !13, !noalias !4168, !noundef !3 ; 2 uses
  %.not22.i53 = icmp eq i64 %i.dz, -9223372036854775773
  br i1 %.not22.i53, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.9.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.9.0.copyload140 = load i64, ptr %.sroa.9.0..sroa_idx139, align 8, !noalias !4173
  %.sroa.10142.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.10142.0.copyload144 = load i64, ptr %.sroa.10142.0..sroa_idx143, align 8, !noalias !4173
  %.sroa.11.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.0..sroa_idx146, i64 88, i1 false), !noalias !4173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4168
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4168
  %i.ea = invoke noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h6f29802c3b1dbe90E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.de)
          to label %bb.bb unwind label %.loopexit.split-lp.i44, !noalias !4169 ; 3 uses

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.ea, ptr %i.m, align 8, !noalias !4168
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$$GT$17h389bee44ba0e8f26E.exit.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ec = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !4177
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.bd, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$$GT$17h389bee44ba0e8f26E.exit.i"

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h85b1fb5c2f3d6049E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$$GT$17h389bee44ba0e8f26E.exit.i" unwind label %.loopexit.split-lp.i44, !noalias !4169

"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$$GT$17h389bee44ba0e8f26E.exit.i": ; preds = %bb.bd, %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4168
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.p)
          to label %.critedge.i unwind label %.thread62.loopexit.i, !noalias !4169

.critedge.i:                                      ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$$GT$17h389bee44ba0e8f26E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4168
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i35)
  %i.ee = load ptr, ptr %.sroa.7.0..sroa_idx.i39, align 8, !alias.scope !4178, !noalias !4171, !nonnull !3, !noundef !3
  %i.ef = load ptr, ptr %.sroa.5.0..sroa_idx.i37, align 8, !alias.scope !4178, !noalias !4171, !nonnull !3, !noundef !3 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ee
  br i1 %i.eg, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7c8803671c09e1eE.exit.i"

bb.bf:                                            ; preds = %bb.as
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..decks..schema11..DeckSchema11$GT$17h088cd17b5f27a710E"(ptr noalias noundef align 8 dereferenceable(224) %i.s)
          to label %bb.be unwind label %.loopexit74.i, !noalias !4169

bb.bg:                                            ; preds = %bb.az, %.loopexit73.i
  %.sroa.10142.0 = phi i64 [ %.sroa.615.0.copyload.i.i49, %.loopexit73.i ], [ %.sroa.10142.0.copyload144, %bb.az ]
  %.sroa.9.0 = phi i64 [ %.sroa.514.0.copyload.i.i48, %.loopexit73.i ], [ %.sroa.9.0.copyload140, %bb.az ]
  %.sroa.0136.0 = phi i64 [ %.lcssa.i.i47, %.loopexit73.i ], [ %i.dz, %bb.az ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.p)
          to label %bb.bh unwind label %.thread62.loopexit.split-lp.i, !noalias !4169

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4168
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bk, %bb.aw, %.thread.i
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !4169
  unreachable

bb.bj:                                            ; preds = %bb.bh, %.thread69.i
  %.sroa.10142.1 = phi i64 [ %i.dk, %.thread69.i ], [ %.sroa.10142.0, %bb.bh ]
  %.sroa.9.1 = phi i64 [ %i.dj, %.thread69.i ], [ %.sroa.9.0, %bb.bh ]
  %.sroa.0136.1 = phi i64 [ %11, %.thread69.i ], [ %.sroa.0136.0, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i35)
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he80eb5f73b1be928E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.bl unwind label %.thread272

bb.bk:                                            ; preds = %bb.ar, %bb.ao
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..decks..schema11..DeckSchema11$GT$17h088cd17b5f27a710E"(ptr noalias noundef align 8 dereferenceable(224) %i.s) #27
          to label %.thread.i unwind label %bb.bi, !noalias !4169

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i34)
  %.not18 = icmp eq i64 %.sroa.0136.1, -9223372036854775773
  br i1 %.not18, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4203.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.0136.1, ptr %0, align 8
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.1, ptr %.sroa.2201.0..sroa_idx, align 8
  %.sroa.3202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10142.1, ptr %.sroa.3202.0..sroa_idx, align 8
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..schema11..DeckSchema11$GT$$GT$17hcc071f701c671f6eE.exit"

bb.bn:                                            ; preds = %.thread299, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.0154.0.copyload = load i64, ptr %i.ei, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.4155.0.copyload = load ptr, ptr %.sroa.4155.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.5156.0.copyload = load i64, ptr %.sroa.5156.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i64.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i65)
  %i.ej = icmp ult i64 %.sroa.5156.0.copyload, 16954728008924221
  call void @llvm.assume(i1 %i.ej)
  %.idx.i67 = mul nuw nsw i64 %.sroa.5156.0.copyload, 544
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.4155.0.copyload, i64 %.idx.i67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4179
  store ptr %.sroa.4155.0.copyload, ptr %i.k, align 8, !noalias !4179
  %.sroa.5.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %.sroa.4155.0.copyload, ptr %.sroa.5.0..sroa_idx.i68, align 8, !noalias !4179
  %.sroa.6.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.0154.0.copyload, ptr %.sroa.6.0..sroa_idx.i69, align 8, !noalias !4179
  %.sroa.7.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.ek, ptr %.sroa.7.0..sroa_idx.i70, align 8, !noalias !4179
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i66)
  %i.el = icmp eq i64 %.sroa.5156.0.copyload, 0
  br i1 %i.el, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.lr.ph.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.lr.ph.i": ; preds = %bb.bn
  %.sroa.8.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %.sroa.3.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 472
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 4 uses
  %.sroa.74.i64.sroa.6.0..sroa.512.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.74.i64.sroa.6.0..sroa.3.0..sroa_idx.i72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.i"

.thread.i76:                                      ; preds = %.thread43.i, %.body.i29.i, %.body.i21.i, %bb.ca, %.thread53.loopexit.split-lp.i, %.thread53.loopexit.i, %.loopexit.split-lp.i81, %.loopexit.i79
  %.pn19.i = phi { ptr, i32 } [ %eh.lpad-body.i30.i, %.body.i29.i ], [ %eh.lpad-body46.i, %.thread43.i ], [ %lpad.loopexit.split-lp.i82, %.loopexit.split-lp.i81 ], [ %eh.lpad-body.i22.i, %.body.i21.i ], [ %i.fd, %bb.ca ], [ %lpad.loopexit.i80, %.loopexit.i79 ], [ %lpad.loopexit56.i, %.thread53.loopexit.i ], [ %lpad.loopexit.split-lp57.i, %.thread53.loopexit.split-lp.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h68d05ebcbbb4e4bfE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.thread352 unwind label %bb.cp, !noalias !4179

.loopexit.i79:                                    ; preds = %bb.cn
  %lpad.loopexit.i80 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i76

.loopexit.split-lp.i81:                           ; preds = %bb.br
  %lpad.loopexit.split-lp.i82 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i76

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.i": ; preds = %bb.cm, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.lr.ph.i"
  %i.es = phi ptr [ %.sroa.4155.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.lr.ph.i" ], [ %i.fo, %bb.cm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 544
  store ptr %i.et, ptr %.sroa.5.0..sroa_idx.i68, align 8, !alias.scope !4180, !noalias !4181
  %.sroa.0.0.copyload37.i = load i64, ptr %i.es, align 8, !noalias !4182 ; 2 uses
  %.sroa.8.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.8.i66, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.8.0..sroa_idx38.i, i64 536, i1 false), !noalias !4182
  %.not.i74 = icmp eq i64 %.sroa.0.0.copyload37.i, -9223372036854775808
  br i1 %.not.i74, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.thread.i", label %bb.bo

bb.bo:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4179
  store i64 %.sroa.0.0.copyload37.i, ptr %i.j, align 8, !noalias !4179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.8.0..sroa_idx.i71, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.8.i66, i64 536, i1 false), !noalias !4179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4179
  %i.eu = load i64, ptr %i.en, align 8, !noalias !4179, !noundef !3
  invoke void @"_ZN4anki7storage10deckconfig54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15get_deck_config17h542f970a2d04b145E"(ptr noalias noundef nonnull sret([384 x i8]) align 8 captures(address) dereferenceable(384) %i.i, ptr noundef nonnull align 8 %i.em, i64 noundef %i.eu)
          to label %bb.bq unwind label %bb.bp, !noalias !4179

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.thread.i": ; preds = %bb.cm, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.i", %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i66)
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h68d05ebcbbb4e4bfE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.thread304 unwind label %bb.ef

.thread304:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h463fcf4e66f5f202E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74.i64.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i65)
  br label %bb.cr

.thread53.loopexit.i:                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i32.i", %bb.by
  %lpad.loopexit56.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i76

.thread53.loopexit.split-lp.i:                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i24.i"
  %lpad.loopexit.split-lp57.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i76

bb.bp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %bb.bo
  %lpad.thr_comm.split-lp.i75 = landingpad { ptr, i32 }
          cleanup
  br label %.thread43.i

bb.bq:                                            ; preds = %bb.bo
  %i.ev = load i64, ptr %i.i, align 8, !range !22, !noalias !4179, !noundef !3 ; 3 uses
  %i.ew = icmp eq i64 %i.ev, -9223372036854775807
  %.sroa.74.i64.sroa.0.0.copyload251 = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !4179 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.74.i64.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.74.i64.sroa.6.0..sroa.512.0..sroa_idx.i.sroa_idx, i64 104, i1 false), !noalias !4179
  br i1 %i.ew, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.74.i64.sroa.6, i64 104, i1 false), !noalias !4183
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$17hdb34da9d73a05ae1E"(ptr noalias noundef align 8 dereferenceable(544) %i.j)
          to label %bb.co unwind label %.loopexit.split-lp.i81, !noalias !4179

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.i65, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.613.0..sroa_idx.i, i64 264, i1 false), !noalias !4179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4179
  %.not15.i = icmp eq i64 %i.ev, -9223372036854775808
  br i1 %.not15.i, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4179
  store i64 %i.ev, ptr %i.h, align 8, !noalias !4179
  store i64 %.sroa.74.i64.sroa.0.0.copyload251, ptr %.sroa.3.0..sroa_idx.i72, align 8, !noalias !4179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.74.i64.sroa.6.0..sroa.3.0..sroa_idx.i72.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.74.i64.sroa.6, i64 104, i1 false), !noalias !4179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.0..sroa_idx.i73, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.i65, i64 264, i1 false), !noalias !4179
  %i.ex = load i64, ptr %i.eo, align 8, !noalias !4179, !noundef !3
  %i.ey = load i64, ptr %i.ep, align 8, !noalias !4179, !noundef !3
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.h)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i" unwind label %bb.bu, !noalias !4179

bb.bu:                                            ; preds = %bb.bt
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.h)
          to label %.body.i.i unwind label %bb.bv, !noalias !4179

bb.bv:                                            ; preds = %bb.bu
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !4179
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i": ; preds = %bb.bt
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.bw, !noalias !4179

bb.bw:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i"
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bw, %bb.bu
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fb, %bb.bw ], [ %i.ez, %bb.bu ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.eq) #27
          to label %.thread43.i unwind label %bb.bx, !noalias !4179

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i"
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.eq)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit.i" unwind label %bb.bp, !noalias !4179

bb.bx:                                            ; preds = %.body.i.i
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !4179
  unreachable

"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
end_hunk_0
