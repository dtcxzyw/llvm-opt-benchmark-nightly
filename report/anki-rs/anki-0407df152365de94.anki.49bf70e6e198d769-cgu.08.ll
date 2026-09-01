Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.08?download=true
inline.NumInlined: 5641
inline.NumDeleted: 2214
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4anki8notetype7cardgen32extract_data_from_existing_cards17h4f321c09ab397b19E:bb.a

.noexc:                                           ; preds = %._crit_edge
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false), !noalias !1059
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.j, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1059
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.k, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !1059
  invoke void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h71c3feb9b8737468E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
          to label %bb.g unwind label %bb.c, !noalias !1059

bb.c:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1062, !noalias !1059
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val7.i = load i64, ptr %i.m, align 8, !alias.scope !1062, !noalias !1059, !noundef !4
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u32$GT$$GT$17hdede15a0d5c38f39E"(ptr %.val.i, i64 %.val7.i) #44, !noalias !1059
  br label %.thread

bb.d:                                             ; preds = %bb.e, %bb.f, %.lr.ph
  %.sroa.4.1 = phi i32 [ %i.s, %bb.f ], [ %.sroa.4.056, %bb.e ], [ %.sroa.4.056, %.lr.ph ] ; 2 uses
  %.sroa.02.1 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.058, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd332d4c01e0735b4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.o)
          to label %bb.b unwind label %.loopexit  ; 0 uses

bb.e:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr %.sroa.0.058, align 8, !range !1065, !noundef !4
  %.not12 = icmp eq i32 %i.q, 0
  br i1 %.not12, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.058, i64 4
  %i.s = load i32, ptr %i.r, align 4
  br label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.g:                                             ; preds = %.noexc
  %.sroa.0.0.copyload23 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload25 = load i64, ptr %.sroa.5.0..sroa_idx24, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx26, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1059
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %.not15 = icmp eq i64 %i.u, 1                   ; 2 uses
  br i1 %.not15, label %bb.h, label %"_ZN4core3ptr85drop_in_place$LT$std..collections..hash..set..IntoIter$LT$anki..decks..DeckId$GT$$GT$17h111bb7e210a8b139E.exit22"

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3ff3ee300adc1f9dE"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u32$GT$$GT$17hdede15a0d5c38f39E"(ptr %.sroa.0.0.copyload23, i64 %.sroa.5.0.copyload25) #44
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %.sroa.036.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.437.0.copyload = load i64, ptr %.sroa.437.0..sroa_idx, align 8 ; 2 uses
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.538.0.copyload = load ptr, ptr %.sroa.538.0..sroa_idx, align 8 ; 2 uses
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.639.0.copyload = load ptr, ptr %.sroa.639.0..sroa_idx, align 8 ; 2 uses
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.740.0.copyload = load ptr, ptr %.sroa.740.0..sroa_idx, align 8
  %.sroa.941.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.941.0.copyload = load i16, ptr %.sroa.941.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not46 = icmp ne i64 %.sroa.11.0.copyload, 0   ; 3 uses
  br i1 %.not46, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not12.i.i = icmp eq i16 %.sroa.941.0.copyload, 0
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h344d7b0eca97231aE.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.740.0.copyload, %bb.k ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.639.0.copyload, %bb.k ]
  %.val10.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !1066
  %i.y = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -128 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.cast.i.i = bitcast <16 x i1> %i.y to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h344d7b0eca97231aE.exit.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h344d7b0eca97231aE.exit.i": ; preds = %.lr.ph.i.i, %bb.k
  %i.ab = phi ptr [ %.sroa.639.0.copyload, %bb.k ], [ %i.z, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.941.0.copyload, %bb.k ], [ %.cast.i.i, %.lr.ph.i.i ]
  %i.ac = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1071, !noundef !4
  br label %bb.l

bb.l:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h344d7b0eca97231aE.exit.i", %bb.j
  %.sroa.3.0.i = phi i64 [ %i.ah, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h344d7b0eca97231aE.exit.i" ], [ undef, %bb.j ] ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq i64 %.sroa.036.0.copyload, 0
  %i.ai = icmp eq i64 %.sroa.437.0.copyload, 0
  %or.cond = select i1 %.not.i.i.i.i.i21, i1 true, i1 %i.ai
  br i1 %or.cond, label %"_ZN4core3ptr85drop_in_place$LT$std..collections..hash..set..IntoIter$LT$anki..decks..DeckId$GT$$GT$17h111bb7e210a8b139E.exit22", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.538.0.copyload) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.538.0.copyload, i64 noundef %.sroa.437.0.copyload, i64 noundef range(i64 1, -9223372036854775807) %.sroa.036.0.copyload) #34, !noalias !1072
  br label %"_ZN4core3ptr85drop_in_place$LT$std..collections..hash..set..IntoIter$LT$anki..decks..DeckId$GT$$GT$17h111bb7e210a8b139E.exit22"

"_ZN4core3ptr85drop_in_place$LT$std..collections..hash..set..IntoIter$LT$anki..decks..DeckId$GT$$GT$17h111bb7e210a8b139E.exit22": ; preds = %bb.l, %bb.m, %bb.g
  %.sroa.6.1 = phi i64 [ undef, %bb.g ], [ %.sroa.3.0.i, %bb.m ], [ %.sroa.3.0.i, %bb.l ]
  %.sroa.05.1.shrunk = phi i1 [ false, %bb.g ], [ %.not46, %bb.m ], [ %.not46, %bb.l ]
  %.sroa.05.1 = zext i1 %.sroa.05.1.shrunk to i64
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.02.0.lcssa, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.4.0.lcssa, ptr %i.ak, align 4
  store i64 %.sroa.05.1, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.copyload23, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.copyload25, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br i1 %.not15, label %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit", label %bb.n

"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit": ; preds = %bb.o, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6ba5ffae1f6bd872E.exit.i.i.i.i.i.i, %bb.n, %"_ZN4core3ptr85drop_in_place$LT$std..collections..hash..set..IntoIter$LT$anki..decks..DeckId$GT$$GT$17h111bb7e210a8b139E.exit22"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$std..collections..hash..set..IntoIter$LT$anki..decks..DeckId$GT$$GT$17h111bb7e210a8b139E.exit22"
  %.val19 = load ptr, ptr %i.d, align 8, !alias.scope !1083 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val20 = load i64, ptr %i.an, align 8, !alias.scope !1083, !noundef !4 ; 4 uses
  %i.ao = icmp eq i64 %.val20, 0
  br i1 %i.ao, label %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6ba5ffae1f6bd872E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6ba5ffae1f6bd872E.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.ap = shl i64 %.val20, 3
  %i.aq = icmp slt i64 %.val20, 2305843009213693950
  call void @llvm.assume(i1 %i.aq)
  %i.ar = and i64 %i.ap, -16                      ; 2 uses
  %i.as = add i64 %i.ar, 16                       ; 2 uses
  %i.at = add nsw i64 %.val20, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = icmp ult i64 %i.au, 9223372036854775793
  call void @llvm.assume(i1 %i.av)
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19) ]
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit", label %bb.o

bb.o:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6ba5ffae1f6bd872E.exit.i.i.i.i.i.i
  %i.ay = sub nuw nsw i64 -16, %i.ar
  %i.az = getelementptr inbounds i8, ptr %.val19, i64 %i.ay
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !1086
  br label %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit"

bb.p:                                             ; preds = %bb.i, %.thread
  %.pn.pn44 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %i.v, %bb.i ]
  resume { ptr, i32 } %.pn.pn44

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val17 = load ptr, ptr %i.d, align 8, !alias.scope !1083
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val18 = load i64, ptr %i.ba, align 8, !alias.scope !1083, !noundef !4
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE"(ptr %.val17, i64 %.val18) #44
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki9scheduler4fsrs12memory_state20get_last_revlog_info17haad6494f73a29f85E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.lr.ph.i":
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.5.i = alloca ptr, align 8                ; 12 uses
  %.sroa.14.i = alloca ptr, align 8               ; 6 uses
  %i.c = alloca [120 x i8], align 8               ; 25 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdfa479ef2fea4c88E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @129) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %2
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1089
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1089
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1089
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 5 uses
  store ptr %1, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1089
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store ptr %i.h, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1089
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 32, i1 false), !alias.scope !1089
  store i64 -1, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1089
  %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 5 uses
  store i8 0, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1089
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  store i64 1, ptr %i.j, align 8, !noalias !1092
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i"

.body6:                                           ; preds = %bb.bf, %bb.a, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.t, %bb.a ], [ %i.gc, %bb.bf ]
  %.val = load ptr, ptr %i.d, align 8, !alias.scope !1098
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load i64, ptr %i.s, align 8, !alias.scope !1098, !noundef !4
  call fastcc void @"_ZN4core3ptr137drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..card..CardId$C$anki..scheduler..fsrs..memory_state..LastRevlogInfo$GT$$GT$17h84521bacf6eacf91E"(ptr %.val, i64 %.val3) #44
  resume { ptr, i32 } %.pn

bb.a:                                             ; preds = %"_ZN4core3ptr256drop_in_place$LT$core..cell..RefCell$LT$itertools..groupbylazy..GroupInner$LT$anki..card..CardId$C$core..slice..iter..Iter$LT$anki..revlog..RevlogEntry$GT$$C$anki..scheduler..fsrs..memory_state..get_last_revlog_info..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb19e4325ea3770bcE.exit.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body6

._crit_edge.i.invoke:                             ; preds = %.loopexit.i.i.i, %.noexc5
  %i.u = phi ptr [ @16, %.noexc5 ], [ @272, %.loopexit.i.i.i ]
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #42
          to label %._crit_edge.i.cont unwind label %.loopexit.split-lp

._crit_edge.i.cont:                               ; preds = %._crit_edge.i.invoke
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i": ; preds = %.noexc5, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.lr.ph.i"
  %i.v = phi i64 [ 1, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.lr.ph.i" ], [ %i.fz, %.noexc5 ] ; 2 uses
  %i.w = phi i64 [ 0, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.lr.ph.i" ], [ %i.fy, %.noexc5 ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  store i64 -1, ptr %i.c, align 8, !noalias !1103
  %i.x = load i64, ptr %i.l, align 8, !alias.scope !1106, !noalias !1109, !noundef !4
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i", label %bb.b

bb.b:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i"
  %i.z = load i64, ptr %i.m, align 8, !alias.scope !1106, !noalias !1109, !noundef !4 ; 2 uses
  %i.aa = icmp ult i64 %i.w, %i.z
  br i1 %i.aa, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i64 %i.w, %i.z
  br i1 %i.ab, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1106, !noalias !1109, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 288230376151711744
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load i64, ptr %i.n, align 8, !alias.scope !1106, !noalias !1109, !noundef !4
  %i.af = sub i64 %i.w, %i.ae
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !range !317, !alias.scope !1106, !noalias !1109, !noundef !4
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i", label %bb.g

.thread.i.i:                                      ; preds = %bb.c
  %i.aj = load i8, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !range !317, !alias.scope !1106, !noalias !1109, !noundef !4
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i", label %bb.f

bb.f:                                             ; preds = %.thread.i.i
  %i.al = invoke noundef align 8 dereferenceable_or_null(40) ptr @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$14step_buffering17h637c877dc76f1f84E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k, i64 poison)
          to label %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i" unwind label %.loopexit.i, !noalias !1110

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.am = load ptr, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1111, !noalias !1109, !align !60, !noundef !4 ; 2 uses
  store ptr null, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1111, !noalias !1109
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.thread19.i.i"

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1114, !noalias !1109, !nonnull !4, !noundef !4 ; 5 uses
  %i.ao = load ptr, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1114, !noalias !1109, !nonnull !4, !noundef !4
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1111, !noalias !1109
  br label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i"

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.aq, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1114, !noalias !1109
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1117, !noundef !4 ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !range !598, !alias.scope !1111, !noalias !1109, !noundef !4
  %i.au = load i64, ptr %i.o, align 8, !alias.scope !1111, !noalias !1109
  %i.av = trunc nuw i64 %i.at to i1
  %i.aw = icmp ne i64 %i.au, %i.as
  %or.cond.i.i.i = select i1 %i.av, i1 %i.aw, i1 false
  store i64 1, ptr %i.k, align 8, !alias.scope !1111, !noalias !1109
  store i64 %i.as, ptr %i.o, align 8, !alias.scope !1111, !noalias !1109
  br i1 %or.cond.i.i.i, label %bb.k, label %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.thread19.i.i"

bb.k:                                             ; preds = %bb.j
  store ptr %i.an, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1111, !noalias !1109
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !1111, !noalias !1109
  br label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i"

bb.l:                                             ; preds = %bb.d, %bb.b
  %i.ax = invoke noundef align 8 dereferenceable_or_null(40) ptr @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17he13c89b8df7a505bE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k, i64 noundef %i.w)
          to label %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i" unwind label %.loopexit.i, !noalias !1110

"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i": ; preds = %bb.l, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.ax, %bb.l ], [ %i.al, %bb.f ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i", label %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.thread19.i.i"

"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.thread19.i.i": ; preds = %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i", %bb.j, %bb.g
  %.sroa.0.0.i22.i.i = phi ptr [ %.sroa.0.0.i.i.i, %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i" ], [ %i.am, %bb.g ], [ %i.an, %bb.j ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.ay = load i64, ptr %i.k, align 8, !range !598, !alias.scope !1118, !noalias !1121, !noundef !4
  %i.az = load i64, ptr %i.o, align 8, !alias.scope !1118, !noalias !1121 ; 2 uses
  store i64 0, ptr %i.k, align 8, !alias.scope !1118, !noalias !1121
  %i.ba = trunc nuw i64 %i.ay to i1
  br i1 %i.ba, label %bb.m, label %bb.n, !prof !125

bb.m:                                             ; preds = %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.thread19.i.i"
  %i.bb = load ptr, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1126, !noalias !1121, !nonnull !4, !noundef !4 ; 4 uses
  %i.bc = load ptr, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1126, !noalias !1121, !nonnull !4, !noundef !4
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.n:                                             ; preds = %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.thread19.i.i"
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #42
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.i, !noalias !1110

.noexc7.i.i:                                      ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  store i8 1, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1118, !noalias !1121
  br label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6a335774b5adb2dbE.exit.i.i"

bb.p:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.be, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1126, !noalias !1121
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1129, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.az, %i.bg
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %i.m, align 8, !alias.scope !1118, !noalias !1121, !noundef !4
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.m, align 8, !alias.scope !1118, !noalias !1121
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i64 1, ptr %i.k, align 8, !alias.scope !1118, !noalias !1121
  store i64 %i.bg, ptr %i.o, align 8, !alias.scope !1118, !noalias !1121
  store ptr %i.bb, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1118, !noalias !1121
  br label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6a335774b5adb2dbE.exit.i.i"

"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6a335774b5adb2dbE.exit.i.i": ; preds = %bb.r, %bb.o
  store ptr %i.c, ptr %.sroa.5.i, align 8, !alias.scope !1101, !noalias !1130
  br label %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i"

.loopexit.i:                                      ; preds = %bb.l, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.bj = load i64, ptr %i.c, align 8, !noalias !1109, !noundef !4
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.c, align 8, !noalias !1109
  br label %.body

"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i": ; preds = %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6a335774b5adb2dbE.exit.i.i", %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i", %bb.k, %bb.i, %.thread.i.i, %bb.e, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i"
  %.sroa.013.0.i = phi i64 [ undef, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i" ], [ undef, %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i" ], [ %i.az, %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6a335774b5adb2dbE.exit.i.i" ], [ undef, %bb.e ], [ undef, %bb.i ], [ undef, %bb.k ], [ undef, %.thread.i.i ]
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.5.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i" ], [ %.sroa.5.i, %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i" ], [ %.sroa.14.i, %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6a335774b5adb2dbE.exit.i.i" ], [ %.sroa.5.i, %bb.e ], [ %.sroa.5.i, %bb.i ], [ %.sroa.5.i, %bb.k ], [ %.sroa.5.i, %.thread.i.i ]
  %.sroa.0.0.i22.sink.i.i = phi ptr [ null, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i" ], [ null, %"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$4step17h93978ca1b68c717cE.exit.i.i" ], [ %.sroa.0.0.i22.i.i, %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h6a335774b5adb2dbE.exit.i.i" ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.k ], [ null, %.thread.i.i ]
  store ptr %.sroa.0.0.i22.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1101, !noalias !1130
  %i.bl = load i64, ptr %i.c, align 8, !noalias !1109, !noundef !4
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.c, align 8, !noalias !1109
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load ptr, ptr %.sroa.5.i, align 8, !noalias !1131, !noundef !4 ; 27 uses
  %.not.i = icmp eq ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, null
  br i1 %.not.i, label %bb.be, label %bb.t

bb.t:                                             ; preds = %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i"
  %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.i, align 8, !noalias !1131 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 8 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 80 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 72 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 104 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 64 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 48 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 16 ; 4 uses
  %.not.peel.i.i.i = icmp eq ptr %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i, null
  br i1 %.not.peel.i.i.i, label %bb.u, label %.thread.peel.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1132, !noundef !4
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i", label %.loopexit81.i.i.i, !prof !125

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i": ; preds = %bb.u
  store i64 -1, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1132
  %i.bz = load i64, ptr %i.bo, align 8, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.ca = icmp ult i64 %i.w, %i.bz
  br i1 %i.ca, label %.loopexit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i"
  %i.cb = load i64, ptr %i.bp, align 8, !alias.scope !1139, !noalias !1142, !noundef !4 ; 2 uses
  %i.cc = icmp ult i64 %i.w, %i.cb
  br i1 %i.cc, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = icmp eq i64 %i.w, %i.cb
  br i1 %i.cd, label %bb.y, label %.thread.i.peel.i.i.i

.thread.i.peel.i.i.i:                             ; preds = %bb.w
  %i.ce = load i8, ptr %i.bq, align 8, !range !317, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %.loopexit.thread.i.i.i, label %bb.x

bb.x:                                             ; preds = %.thread.i.peel.i.i.i
  %i.cg = invoke noundef align 8 dereferenceable_or_null(40) ptr @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$14step_buffering17h637c877dc76f1f84E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bn, i64 poison)
          to label %bb.ae unwind label %.loopexit.split-lp.i.i.i, !noalias !1142

bb.y:                                             ; preds = %bb.w
  %i.ch = load i64, ptr %i.br, align 8, !alias.scope !1139, !noalias !1142, !noundef !4 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 288230376151711744
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %i.bs, align 8, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.ck = sub i64 %i.w, %i.cj
  %i.cl = icmp ugt i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = load i8, ptr %i.bq, align 8, !range !317, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.loopexit.thread.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.co = load ptr, ptr %i.bt, align 8, !alias.scope !1143, !noalias !1142, !align !60, !noundef !4 ; 2 uses
  store ptr null, ptr %i.bt, align 8, !alias.scope !1143, !noalias !1142
  %.not.i.i.peel.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.peel.i.i.i, label %bb.ab, label %.thread9.peel.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.bu, align 8, !alias.scope !1146, !noalias !1142, !nonnull !4, !noundef !4 ; 5 uses
  %i.cq = load ptr, ptr %i.bv, align 8, !alias.scope !1146, !noalias !1142, !nonnull !4, !noundef !4
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %.loopexit83.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store ptr %i.cs, ptr %i.bu, align 8, !alias.scope !1146, !noalias !1142
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !1149, !noundef !4 ; 2 uses
  %i.cv = load i64, ptr %i.bn, align 8, !range !598, !alias.scope !1143, !noalias !1142, !noundef !4
  %i.cw = load i64, ptr %i.bw, align 8, !alias.scope !1143, !noalias !1142
  %i.cx = trunc nuw i64 %i.cv to i1
  %i.cy = icmp ne i64 %i.cw, %i.cu
  %or.cond.i.i.peel.i.i.i = select i1 %i.cx, i1 %i.cy, i1 false
  store i64 1, ptr %i.bn, align 8, !alias.scope !1143, !noalias !1142
  store i64 %i.cu, ptr %i.bw, align 8, !alias.scope !1143, !noalias !1142
  br i1 %or.cond.i.i.peel.i.i.i, label %.loopexit84.i.i.i, label %.thread9.peel.i.i.i

.thread9.peel.i.i.i:                              ; preds = %bb.ac, %bb.aa
  %.sroa.0.0.i.i.ph.peel.i.i.i = phi ptr [ %i.co, %bb.aa ], [ %i.cp, %bb.ac ]
  store i64 0, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142
  br label %.thread.peel.i.i.i

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.cz = invoke noundef align 8 dereferenceable_or_null(40) ptr @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17he13c89b8df7a505bE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bn, i64 noundef %i.w)
          to label %bb.ae unwind label %.loopexit.split-lp.i.i.i, !noalias !1142

bb.ae:                                            ; preds = %bb.ad, %bb.x
  %.sroa.0.0.i.i.peel.i.i.i = phi ptr [ %i.cz, %bb.ad ], [ %i.cg, %bb.x ] ; 2 uses
  %i.da = load i64, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142, !noundef !4
  %i.db = add i64 %i.da, 1                        ; 2 uses
  store i64 %i.db, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142
  %.not8.peel.i.i.i = icmp eq ptr %.sroa.0.0.i.i.peel.i.i.i, null
  br i1 %.not8.peel.i.i.i, label %.loopexit.i.i.i, label %.thread.peel.i.i.i

.thread.peel.i.i.i:                               ; preds = %bb.ae, %.thread9.peel.i.i.i, %bb.t
  %.sroa.02.04.peel.i.i.i = phi ptr [ %.sroa.0.0.i.i.ph.peel.i.i.i, %.thread9.peel.i.i.i ], [ %.sroa.0.0.i.i.peel.i.i.i, %bb.ae ], [ %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i, %bb.t ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.02.04.peel.i.i.i, i64 36
  %i.dd = load i8, ptr %i.dc, align 4, !noalias !1142, !noundef !4 ; 2 uses
  %.not9.peel.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not9.peel.i.i.i, label %.peel.next.i.i.i, label %bb.af

bb.af:                                            ; preds = %.thread.peel.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.04.peel.i.i.i, i64 37
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !range !1150, !noalias !1142
  %i.de = icmp eq i8 %.pre.i.i.i, 3
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.04.peel.i.i.i, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !noalias !1142, !noundef !4
  %.not10.peel.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not10.peel.i.i.i, label %.peel.next.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dh = load i64, ptr %.sroa.02.04.peel.i.i.i, align 8, !noalias !1142, !noundef !4
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.04.peel.i.i.i, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !noalias !1142, !noundef !4 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  %i.dm = icmp ne i8 %i.dd, 1
  %or.cond.peel.i.i.i = and i1 %i.dm, %i.dl
  %.11.peel.i.i.i = zext i1 %or.cond.peel.i.i.i to i32
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.ah, %bb.ag, %.thread.peel.i.i.i
  %.sroa.5.1.peel.i.i.i = phi i32 [ undef, %bb.ag ], [ %i.dk, %bb.ah ], [ undef, %.thread.peel.i.i.i ]
  %.sroa.01.1.peel.i.i.i = phi i32 [ 0, %bb.ag ], [ %.11.peel.i.i.i, %bb.ah ], [ 0, %.thread.peel.i.i.i ]
  %.sroa.4.1.peel.i.i.i = phi i64 [ undef, %bb.ag ], [ %i.di, %bb.ah ], [ undef, %.thread.peel.i.i.i ]
  %.sroa.0.1.peel.i.i.i = phi i64 [ 0, %bb.ag ], [ 1, %bb.ah ], [ 0, %.thread.peel.i.i.i ]
  %i.dn = load i64, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1132, !noundef !4
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i", label %.loopexit81.i.i.i, !prof !1151

.loopexit81.i.i.i:                                ; preds = %.peel.next.i.i.i, %bb.u, %.thread.i5.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #42
          to label %.noexc.i.i.i unwind label %bb.at, !noalias !1142

.noexc.i.i.i:                                     ; preds = %.loopexit81.i.i.i
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i": ; preds = %.peel.next.i.i.i, %.thread.i5.i
  %.sroa.0.0.i29.i.i = phi i64 [ %.sroa.0.1.i.i.i, %.thread.i5.i ], [ %.sroa.0.1.peel.i.i.i, %.peel.next.i.i.i ] ; 9 uses
  %.sroa.4.0.i27.i.i = phi i64 [ %.sroa.4.1.i.i.i, %.thread.i5.i ], [ %.sroa.4.1.peel.i.i.i, %.peel.next.i.i.i ] ; 9 uses
  %.sroa.01.0.i25.i.i = phi i32 [ %.sroa.01.1.i.i.i, %.thread.i5.i ], [ %.sroa.01.1.peel.i.i.i, %.peel.next.i.i.i ] ; 9 uses
  %.sroa.5.0.i23.i.i = phi i32 [ %.sroa.5.1.i.i.i, %.thread.i5.i ], [ %.sroa.5.1.peel.i.i.i, %.peel.next.i.i.i ] ; 9 uses
  store i64 -1, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1132
  %i.dp = load i64, ptr %i.bo, align 8, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.dq = icmp ult i64 %i.w, %i.dp
  br i1 %i.dq, label %.loopexit.thread.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i"
  %i.dr = load i64, ptr %i.bp, align 8, !alias.scope !1139, !noalias !1142, !noundef !4 ; 2 uses
  %i.ds = icmp ult i64 %i.w, %i.dr
  br i1 %i.ds, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = icmp eq i64 %i.w, %i.dr
  br i1 %i.dt, label %bb.ak, label %.thread.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.du = load i64, ptr %i.br, align 8, !alias.scope !1139, !noalias !1142, !noundef !4 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 288230376151711744
  call void @llvm.assume(i1 %i.dv)
  %i.dw = load i64, ptr %i.bs, align 8, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.dx = sub i64 %i.w, %i.dw
  %i.dy = icmp ugt i64 %i.du, %i.dx
  br i1 %i.dy, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = load i8, ptr %i.bq, align 8, !range !317, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %.loopexit.thread.i.i.i, label %bb.an

.thread.i.i.i.i:                                  ; preds = %bb.aj
  %i.eb = load i8, ptr %i.bq, align 8, !range !317, !alias.scope !1139, !noalias !1142, !noundef !4
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.loopexit.thread.i.i.i, label %bb.am

bb.am:                                            ; preds = %.thread.i.i.i.i
  %i.ed = invoke noundef align 8 dereferenceable_or_null(40) ptr @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$14step_buffering17h637c877dc76f1f84E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bn, i64 poison)
          to label %bb.as unwind label %.loopexit82.i.i.i, !noalias !1142

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.ee = load ptr, ptr %i.bt, align 8, !alias.scope !1152, !noalias !1142, !align !60, !noundef !4 ; 2 uses
  store ptr null, ptr %i.bt, align 8, !alias.scope !1152, !noalias !1142
  %.not.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %.thread9.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ef = load ptr, ptr %i.bu, align 8, !alias.scope !1154, !noalias !1142, !nonnull !4, !noundef !4 ; 5 uses
  %i.eg = load ptr, ptr %i.bv, align 8, !alias.scope !1154, !noalias !1142, !nonnull !4, !noundef !4
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %.loopexit83.i.i.i, label %bb.ap

.loopexit83.i.i.i:                                ; preds = %bb.ao, %bb.ab
  %.sroa.5.0.lcssa74.i.i.i = phi i32 [ undef, %bb.ab ], [ %.sroa.5.0.i23.i.i, %bb.ao ]
  %.sroa.01.0.lcssa67.i.i.i = phi i32 [ 0, %bb.ab ], [ %.sroa.01.0.i25.i.i, %bb.ao ]
  %.sroa.4.0.lcssa60.i.i.i = phi i64 [ undef, %bb.ab ], [ %.sroa.4.0.i27.i.i, %bb.ao ]
  %.sroa.0.0.lcssa53.i.i.i = phi i64 [ 0, %bb.ab ], [ %.sroa.0.0.i29.i.i, %bb.ao ]
  store i8 1, ptr %i.bq, align 8, !alias.scope !1152, !noalias !1142
  br label %.loopexit.thread.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store ptr %i.ei, ptr %i.bu, align 8, !alias.scope !1154, !noalias !1142
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !1155, !noundef !4 ; 2 uses
  %i.el = load i64, ptr %i.bn, align 8, !range !598, !alias.scope !1152, !noalias !1142, !noundef !4
  %i.em = load i64, ptr %i.bw, align 8, !alias.scope !1152, !noalias !1142
  %i.en = trunc nuw i64 %i.el to i1
  %i.eo = icmp ne i64 %i.em, %i.ek
  %or.cond.i.i.i.i.i = select i1 %i.en, i1 %i.eo, i1 false
  store i64 1, ptr %i.bn, align 8, !alias.scope !1152, !noalias !1142
  store i64 %i.ek, ptr %i.bw, align 8, !alias.scope !1152, !noalias !1142
  br i1 %or.cond.i.i.i.i.i, label %.loopexit84.i.i.i, label %.thread9.i.i.i

.loopexit84.i.i.i:                                ; preds = %bb.ap, %bb.ac
  %.sroa.5.0.lcssa75.i.i.i = phi i32 [ undef, %bb.ac ], [ %.sroa.5.0.i23.i.i, %bb.ap ]
  %.sroa.01.0.lcssa68.i.i.i = phi i32 [ 0, %bb.ac ], [ %.sroa.01.0.i25.i.i, %bb.ap ]
  %.sroa.4.0.lcssa61.i.i.i = phi i64 [ undef, %bb.ac ], [ %.sroa.4.0.i27.i.i, %bb.ap ]
  %.sroa.0.0.lcssa54.i.i.i = phi i64 [ 0, %bb.ac ], [ %.sroa.0.0.i29.i.i, %bb.ap ]
  %.lcssa50.i.i.i = phi ptr [ %i.cp, %bb.ac ], [ %i.ef, %bb.ap ]
  store ptr %.lcssa50.i.i.i, ptr %i.bt, align 8, !alias.scope !1152, !noalias !1142
  store i64 %i.v, ptr %i.bp, align 8, !alias.scope !1152, !noalias !1142
  br label %.loopexit.thread.i.i.i

bb.aq:                                            ; preds = %bb.ak, %bb.ai
  %i.ep = invoke noundef align 8 dereferenceable_or_null(40) ptr @"_ZN9itertools11groupbylazy27GroupInner$LT$K$C$I$C$F$GT$13lookup_buffer17he13c89b8df7a505bE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bn, i64 noundef %i.w)
          to label %bb.as unwind label %.loopexit82.i.i.i, !noalias !1142

.loopexit82.i.i.i:                                ; preds = %bb.aq, %bb.am
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp.i.i.i:                         ; preds = %bb.ad, %bb.x
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit82.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit82.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %i.eq = load i64, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142, !noundef !4
  %i.er = add i64 %i.eq, 1                        ; 2 uses
  store i64 %i.er, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142
  br label %.body.i.i.i

.loopexit.thread.i.i.i:                           ; preds = %.thread.i.i.i.i, %bb.al, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i", %.loopexit84.i.i.i, %.loopexit83.i.i.i, %bb.z, %.thread.i.peel.i.i.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i"
  %.sroa.5.078.i.i.i = phi i32 [ %.sroa.5.0.lcssa74.i.i.i, %.loopexit83.i.i.i ], [ %.sroa.5.0.lcssa75.i.i.i, %.loopexit84.i.i.i ], [ undef, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i" ], [ undef, %.thread.i.peel.i.i.i ], [ undef, %bb.z ], [ %.sroa.5.0.i23.i.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i" ], [ %.sroa.5.0.i23.i.i, %bb.al ], [ %.sroa.5.0.i23.i.i, %.thread.i.i.i.i ]
  %.sroa.01.071.i.i.i = phi i32 [ %.sroa.01.0.lcssa67.i.i.i, %.loopexit83.i.i.i ], [ %.sroa.01.0.lcssa68.i.i.i, %.loopexit84.i.i.i ], [ 0, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i" ], [ 0, %.thread.i.peel.i.i.i ], [ 0, %bb.z ], [ %.sroa.01.0.i25.i.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i" ], [ %.sroa.01.0.i25.i.i, %bb.al ], [ %.sroa.01.0.i25.i.i, %.thread.i.i.i.i ]
  %.sroa.4.064.i.i.i = phi i64 [ %.sroa.4.0.lcssa60.i.i.i, %.loopexit83.i.i.i ], [ %.sroa.4.0.lcssa61.i.i.i, %.loopexit84.i.i.i ], [ undef, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i" ], [ undef, %.thread.i.peel.i.i.i ], [ undef, %bb.z ], [ %.sroa.4.0.i27.i.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i" ], [ %.sroa.4.0.i27.i.i, %bb.al ], [ %.sroa.4.0.i27.i.i, %.thread.i.i.i.i ]
  %.sroa.0.057.i.i.i = phi i64 [ %.sroa.0.0.lcssa53.i.i.i, %.loopexit83.i.i.i ], [ %.sroa.0.0.lcssa54.i.i.i, %.loopexit84.i.i.i ], [ 0, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.peel.i.i.i" ], [ 0, %.thread.i.peel.i.i.i ], [ 0, %bb.z ], [ %.sroa.0.0.i29.i.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i" ], [ %.sroa.0.0.i29.i.i, %bb.al ], [ %.sroa.0.0.i29.i.i, %.thread.i.i.i.i ]
  store i64 0, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142
  br label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i16.i.i.i"

.thread9.i.i.i:                                   ; preds = %bb.ap, %bb.an
  %.sroa.0.0.i.i.ph.i.i.i = phi ptr [ %i.ee, %bb.an ], [ %i.ef, %bb.ap ]
  store i64 0, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142
  br label %.thread.i.i.i

bb.as:                                            ; preds = %bb.aq, %bb.am
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ep, %bb.aq ], [ %i.ed, %bb.am ] ; 2 uses
  %i.es = load i64, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142, !noundef !4
  %i.et = add i64 %i.es, 1                        ; 3 uses
  store i64 %i.et, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1142
  %.not8.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not8.i.i.i, label %.loopexit.i.i.i, label %.thread.i.i.i

bb.at:                                            ; preds = %.loopexit81.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %.pr.i.i.i = load i64, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, align 8, !noalias !1156
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.at, %bb.ar
  %i.ev = phi i64 [ %i.er, %bb.ar ], [ %.pr.i.i.i, %bb.at ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.ar ], [ %i.eu, %bb.at ] ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i.i.i", label %bb.au, !prof !125

bb.au:                                            ; preds = %.body.i.i.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #42
          to label %.noexc15.i.i.i unwind label %bb.bd, !noalias !1142

.noexc15.i.i.i:                                   ; preds = %bb.au
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i.i.i": ; preds = %.body.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 96 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !1142, !noundef !4 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, -1
  %i.fa = icmp ugt i64 %i.w, %i.ey
  %or.cond.i.i.i.i.i.i = or i1 %i.ez, %i.fa
  br i1 %or.cond.i.i.i.i.i.i, label %bb.av, label %.body

bb.av:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i.i.i"
  store i64 %i.w, ptr %i.ex, align 8, !noalias !1142
  br label %.body

.thread.i.i.i:                                    ; preds = %bb.as, %.thread9.i.i.i
  %i.fb = phi i64 [ 0, %.thread9.i.i.i ], [ %i.et, %bb.as ]
  %.sroa.02.04.i.i.i = phi ptr [ %.sroa.0.0.i.i.ph.i.i.i, %.thread9.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.as ] ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 36
  %i.fd = load i8, ptr %i.fc, align 4, !noalias !1142, !noundef !4 ; 2 uses
  %.not9.i.i.i = icmp eq i8 %i.fd, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 37
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !1150, !noalias !1142 ; 2 uses
  br i1 %.not9.i.i.i, label %bb.ay, label %bb.ax

.loopexit.i.i.i:                                  ; preds = %bb.as, %bb.ae
  %.lcssa79.i.i.i = phi i64 [ %i.db, %bb.ae ], [ %i.et, %bb.as ]
  %.sroa.5.0.lcssa76.i.i.i = phi i32 [ undef, %bb.ae ], [ %.sroa.5.0.i23.i.i, %bb.as ]
  %.sroa.01.0.lcssa69.i.i.i = phi i32 [ 0, %bb.ae ], [ %.sroa.01.0.i25.i.i, %bb.as ]
  %.sroa.4.0.lcssa62.i.i.i = phi i64 [ undef, %bb.ae ], [ %.sroa.4.0.i27.i.i, %bb.as ]
  %.sroa.0.0.lcssa55.i.i.i = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i29.i.i, %bb.as ]
  %i.fe = icmp eq i64 %.lcssa79.i.i.i, 0
  br i1 %i.fe, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i16.i.i.i", label %._crit_edge.i.invoke, !prof !1159

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i16.i.i.i": ; preds = %.loopexit.i.i.i, %.loopexit.thread.i.i.i
  %.sroa.0.056100.i.i.i = phi i64 [ %.sroa.0.057.i.i.i, %.loopexit.thread.i.i.i ], [ %.sroa.0.0.lcssa55.i.i.i, %.loopexit.i.i.i ]
  %.sroa.4.06399.i.i.i = phi i64 [ %.sroa.4.064.i.i.i, %.loopexit.thread.i.i.i ], [ %.sroa.4.0.lcssa62.i.i.i, %.loopexit.i.i.i ]
  %.sroa.01.07098.i.i.i = phi i32 [ %.sroa.01.071.i.i.i, %.loopexit.thread.i.i.i ], [ %.sroa.01.0.lcssa69.i.i.i, %.loopexit.i.i.i ]
  %.sroa.5.07797.i.i.i = phi i32 [ %.sroa.5.078.i.i.i, %.loopexit.thread.i.i.i ], [ %.sroa.5.0.lcssa76.i.i.i, %.loopexit.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, i64 96 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !1142, !noundef !4 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, -1
  %i.fi = icmp ugt i64 %i.w, %i.fg
  %or.cond.i.i.i17.i.i.i = or i1 %i.fh, %i.fi
  br i1 %or.cond.i.i.i17.i.i.i, label %bb.aw, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc80766b8c58452afE.exit.i"

bb.aw:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i16.i.i.i"
  store i64 %i.w, ptr %i.ff, align 8, !noalias !1142
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc80766b8c58452afE.exit.i"

bb.ax:                                            ; preds = %.thread.i.i.i
  %i.fj = icmp eq i8 %.pre.i.i, 3
  br i1 %i.fj, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %.thread.i.i.i
  %i.fk = icmp eq i8 %.pre.i.i, 4
  br i1 %i.fk, label %bb.bb, label %.thread.i5.i

bb.az:                                            ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !noalias !1142, !noundef !4
  %.not10.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not10.i.i.i, label %.thread.i5.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.fn = load i64, ptr %.sroa.02.04.i.i.i, align 8, !noalias !1142, !noundef !4
  %i.fo = sdiv i64 %i.fn, 1000
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !noalias !1142, !noundef !4 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  %i.fs = icmp ne i8 %i.fd, 1
  %or.cond.i.i4.i = and i1 %i.fs, %i.fr
  %.11.i.i.i = zext i1 %or.cond.i.i4.i to i32
  br label %.thread.i5.i

bb.bb:                                            ; preds = %bb.ay
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 28
  %i.fu = load i32, ptr %i.ft, align 4, !noalias !1142, !noundef !4
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.bc, label %.thread.i5.i

bb.bc:                                            ; preds = %bb.bb
  br label %.thread.i5.i

.thread.i5.i:                                     ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sroa.5.1.i.i.i = phi i32 [ %.sroa.5.0.i23.i.i, %bb.ay ], [ %i.fq, %bb.ba ], [ undef, %bb.bc ], [ %.sroa.5.0.i23.i.i, %bb.bb ], [ %.sroa.5.0.i23.i.i, %bb.az ]
  %.sroa.01.1.i.i.i = phi i32 [ %.sroa.01.0.i25.i.i, %bb.ay ], [ %.11.i.i.i, %bb.ba ], [ 0, %bb.bc ], [ %.sroa.01.0.i25.i.i, %bb.bb ], [ %.sroa.01.0.i25.i.i, %bb.az ]
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i27.i.i, %bb.ay ], [ %i.fo, %bb.ba ], [ undef, %bb.bc ], [ %.sroa.4.0.i27.i.i, %bb.bb ], [ %.sroa.4.0.i27.i.i, %bb.az ]
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.0.0.i29.i.i, %bb.ay ], [ 1, %bb.ba ], [ 0, %bb.bc ], [ %.sroa.0.0.i29.i.i, %bb.bb ], [ %.sroa.0.0.i29.i.i, %bb.az ]
  %i.fw = icmp eq i64 %i.fb, 0
  br i1 %i.fw, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i", label %.loopexit81.i.i.i, !prof !1058, !llvm.loop !1160

bb.bd:                                            ; preds = %bb.au
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !1142
  unreachable

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc80766b8c58452afE.exit.i": ; preds = %bb.aw, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i16.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1162
  store i64 %.sroa.0.056100.i.i.i, ptr %i.a, align 8, !noalias !1162
  store i64 %.sroa.4.06399.i.i.i, ptr %i.p, align 8, !noalias !1162
  store i32 %.sroa.01.07098.i.i.i, ptr %i.q, align 8, !noalias !1162
  store i32 %.sroa.5.07797.i.i.i, ptr %i.r, align 4, !noalias !1162
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd37925384c7bb2f6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %.sroa.013.0.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc80766b8c58452afE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  %i.fy = load i64, ptr %i.j, align 8, !noalias !1163, !noundef !4 ; 2 uses
  %i.fz = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.fz, ptr %i.j, align 8, !noalias !1163
  %i.ga = load i64, ptr %i.c, align 8, !noalias !1165, !noundef !4
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i", label %._crit_edge.i.invoke, !prof !1058

.loopexit:                                        ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc80766b8c58452afE.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i.i.i", %bb.av
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17he96c448d6f220bfcE.exit.i.i.i.i.i.i" ], [ %lpad.phi.i, %bb.s ], [ %eh.lpad-body.i.i.i, %bb.av ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr226drop_in_place$LT$itertools..groupbylazy..ChunkBy$LT$anki..card..CardId$C$core..slice..iter..Iter$LT$anki..revlog..RevlogEntry$GT$$C$anki..scheduler..fsrs..memory_state..get_last_revlog_info..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd098bd7fd552753bE"(ptr noalias noundef align 8 dereferenceable(120) %i.c) #44
          to label %.body6 unwind label %bb.bh

bb.be:                                            ; preds = %"_ZN106_$LT$itertools..groupbylazy..Groups$LT$K$C$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e634cbead1d58bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h703ceddb35602b7dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i)
          to label %"_ZN4core3ptr256drop_in_place$LT$core..cell..RefCell$LT$itertools..groupbylazy..GroupInner$LT$anki..card..CardId$C$core..slice..iter..Iter$LT$anki..revlog..RevlogEntry$GT$$C$anki..scheduler..fsrs..memory_state..get_last_revlog_info..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb19e4325ea3770bcE.exit.i" unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7981c41d4ce050dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i)
          to label %.body6 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr256drop_in_place$LT$core..cell..RefCell$LT$itertools..groupbylazy..GroupInner$LT$anki..card..CardId$C$core..slice..iter..Iter$LT$anki..revlog..RevlogEntry$GT$$C$anki..scheduler..fsrs..memory_state..get_last_revlog_info..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb19e4325ea3770bcE.exit.i": ; preds = %bb.be
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7981c41d4ce050dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i)
          to label %"_ZN4core3ptr226drop_in_place$LT$itertools..groupbylazy..ChunkBy$LT$anki..card..CardId$C$core..slice..iter..Iter$LT$anki..revlog..RevlogEntry$GT$$C$anki..scheduler..fsrs..memory_state..get_last_revlog_info..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd098bd7fd552753bE.exit" unwind label %bb.a

"_ZN4core3ptr226drop_in_place$LT$itertools..groupbylazy..ChunkBy$LT$anki..card..CardId$C$core..slice..iter..Iter$LT$anki..revlog..RevlogEntry$GT$$C$anki..scheduler..fsrs..memory_state..get_last_revlog_info..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd098bd7fd552753bE.exit": ; preds = %"_ZN4core3ptr256drop_in_place$LT$core..cell..RefCell$LT$itertools..groupbylazy..GroupInner$LT$anki..card..CardId$C$core..slice..iter..Iter$LT$anki..revlog..RevlogEntry$GT$$C$anki..scheduler..fsrs..memory_state..get_last_revlog_info..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb19e4325ea3770bcE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.bh:                                            ; preds = %.body
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZN4anki9scheduler4fsrs12memory_state21get_decay_from_params17hb1f85e9b995f954bE(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 21
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi float [ %i.d, %bb.d ], [ 1.542000e-01, %bb.a ], [ 5.000000e-01, %bb.b ]
  ret float %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load float, ptr %i.c, align 4, !noundef !4
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki9scheduler4fsrs12memory_state26fsrs_item_for_memory_state17hd719ed8ae9c7e057E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(84) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3, float noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.017 = alloca [48 x i8], align 8          ; 3 uses
  %i.b = alloca [12 x i8], align 4                ; 8 uses
  %.sroa.01 = alloca [48 x i8], align 8           ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  %i.d = alloca [56 x i8], align 8                ; 18 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN4anki9scheduler4fsrs6params16reviews_for_fsrs17hd982fb077fd38d2dE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, i64 noundef %3, i1 noundef zeroext false, i64 noundef %5)
  %i.f = load i64, ptr %i.e, align 8, !range !384, !noundef !4
  %.not = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e, !prof !6

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.k, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #42
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = add nsw i64 %i.i, -1                     ; 3 uses
  store i64 %i.l, ptr %i.h, align 8
  %i.m = load i64, ptr %i.g, align 8, !range !78, !noundef !4
  %i.n = icmp samesign ult i64 %i.l, %i.m
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = icmp ult i64 %i.i, 288230376151711745
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
end_hunk_0
