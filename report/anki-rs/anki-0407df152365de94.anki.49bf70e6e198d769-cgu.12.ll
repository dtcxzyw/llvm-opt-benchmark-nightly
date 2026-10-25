Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.12?download=true
inline.NumInlined: 7127
inline.NumDeleted: 3581
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZN61_$LT$T$u20$as$u20$password_hash..traits..PasswordVerifier$GT$15verify_password17h88597794cbc7fe16E":bb.a
  %.sroa.18.8..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.18.8.copyload38 = load i64, ptr %.sroa.18.8..sroa_idx37, align 8, !noalias !9921
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.be = load i64, ptr %i.h, align 8, !noalias !9918, !noundef !14
  %i.bf = load i32, ptr %i.y, align 8, !noalias !9918, !noundef !14
  call void @"_ZN6pbkdf26simple118_$LT$impl$u20$core..convert..TryFrom$LT$pbkdf2..simple..Params$GT$$u20$for$u20$password_hash..params..ParamsString$GT$8try_from17h38bfb41e82fa44c3E"(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a, i64 noundef %i.be, i32 noundef %i.bf), !noalias !9920
  %i.bg = load i8, ptr %i.a, align 8, !range !25, !noalias !9918, !noundef !14
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.11.8.copyload33 = load ptr, ptr %i.bi, align 8, !noalias !9921
  %.sroa.18.8..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.18.8.copyload36 = load i64, ptr %.sroa.18.8..sroa_idx35, align 8, !noalias !9921
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.h, %bb.l
  %.sroa.11.2.ph.ph = phi ptr [ %.sroa.11.8.copyload33, %bb.l ], [ %.sroa.11.8.copyload34, %bb.j ], [ %.sroa.046.0.copyload.i, %bb.h ]
  %.sroa.18.2.ph.ph = phi i64 [ %.sroa.18.8.copyload36, %bb.l ], [ %.sroa.18.8.copyload38, %bb.j ], [ %.sroa.547.0.copyload.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9918
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.g, %bb.e, %.sink.split.i.i
  %.sroa.11.2.ph = phi ptr [ null, %bb.g ], [ inttoptr (i64 12 to ptr), %.sink.split.i.i ], [ null, %bb.e ], [ %.sroa.11.2.ph.ph, %.sink.split ]
  %.sroa.18.2.ph = phi i64 [ undef, %bb.g ], [ undef, %.sink.split.i.i ], [ undef, %bb.e ], [ %.sroa.18.2.ph.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %.sroa.11.2.ph, ptr %0, align 8
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.18.2.ph, ptr %.sroa.249.0..sroa_idx, align 8
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %..i = select i1 %i.ar, ptr @6, ptr @5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.314.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(128) %i.bk, i64 128, i1 false)
  %.sroa.24.168.copyload = load i8, ptr %i.bj, align 1, !noalias !9921 ; 2 uses
  %.sroa.26.168..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(65) %.sroa.26.168..sroa_idx, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 0, ptr %i.j, align 8
  %.sroa.213.sroa.2.0..sroa.213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %..i, ptr %.sroa.213.sroa.2.0..sroa.213.0..sroa_idx.sroa_idx, align 8
  %.sroa.213.sroa.3.0..sroa.213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 13, ptr %.sroa.213.sroa.3.0..sroa.213.0..sroa_idx.sroa_idx, align 8
  %.sroa.314.sroa.2.0..sroa.314.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store ptr %i.m, ptr %.sroa.314.sroa.2.0..sroa.314.0..sroa_idx.sroa_idx, align 8
  %.sroa.314.sroa.3.0..sroa.314.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store i64 %i.x, ptr %.sroa.314.sroa.3.0..sroa.314.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 2 uses
  store i8 %.sroa.24.168.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.not32 = icmp eq i8 %.sroa.24.168.copyload, 3
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = call noundef zeroext i1 @"_ZN70_$LT$password_hash..output..Output$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf8947678fbfbc98eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(66) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(66) %.sroa.4.0..sroa_idx)
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

bb.q:                                             ; preds = %bb.o
  store i8 13, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q, %bb.b
  ret void

bb.s:                                             ; preds = %bb.m, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e3d5d60f25e74b8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !15, !noundef !14
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03dc3af1588be040E.exit.i", !prof !21

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.h, i64 %i.j) #37
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.b
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03dc3af1588be040E.exit.i": ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.l = icmp ule i64 %2, %i.h
  call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9930)
  call void @llvm.experimental.noalias.scope.decl(metadata !9931)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03dc3af1588be040E.exit.i"
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !9931, !nonnull !14, !noundef !14
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !9931, !noundef !14 ; 4 uses
  %i.t = mul i64 %.val15.i, 24
  br label %bb.c

._crit_edge.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03dc3af1588be040E.exit.i"
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge.thread.i

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.032.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.ab, %bb.f ] ; 4 uses
  %.sroa.03.031.i = phi i64 [ 1, %.lr.ph.i ], [ %i.aa, %bb.f ]
  %storemerge30.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9932
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val15.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc16.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !9931

.noexc16.i:                                       ; preds = %bb.c
  %i.u = load i64, ptr %i.a, align 8, !range !15, !noalias !9932, !noundef !14
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = load i64, ptr %i.r, align 8, !range !20, !noalias !9932, !noundef !14 ; 3 uses
  br i1 %i.v, label %bb.d, label %bb.f, !prof !21

bb.d:                                             ; preds = %.noexc16.i
  %i.x = load i64, ptr %i.s, align 8, !noalias !9932
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.w, i64 %i.x) #37
          to label %.noexc17.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !9931

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !9930
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he194c4ee4c8c4c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17hf22e013c3d57224cE.exit" unwind label %bb.h

._crit_edge.thread.i:                             ; preds = %bb.f, %._crit_edge.i
  %.sroa.0.0.lcssa45.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.ab, %bb.f ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa45.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !9930
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17hf22e013c3d57224cE.exit"

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge30.i, ptr %i.n, align 8, !alias.scope !9930
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he194c4ee4c8c4c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %.noexc16.i
  %i.y = load ptr, ptr %i.s, align 8, !noalias !9932, !nonnull !14, !noundef !14 ; 2 uses
  %i.z = icmp ule i64 %.val15.i, %i.w
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9932
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull readonly align 8 %.val14.i, i64 %i.t, i1 false), !noalias !9933
  %i.aa = add nuw i64 %.sroa.03.031.i, 1          ; 2 uses
  store i64 %i.w, ptr %.sroa.0.032.i, align 8, !noalias !9931
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9931
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 16
  store i64 %.val15.i, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9931
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 24 ; 2 uses
  %i.ac = add nuw i64 %storemerge30.i, 1
  %exitcond.not.i = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.c

bb.g:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$$GT$17h5d94b96d6d8d2f01E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #35
          to label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$17h368fe6a778db9e18E.exit" unwind label %bb.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17hf22e013c3d57224cE.exit": ; preds = %._crit_edge.thread.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$17h368fe6a778db9e18E.exit": ; preds = %bb.j, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %.pn8

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he194c4ee4c8c4c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$17h368fe6a778db9e18E.exit" unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1dc83abd959837b0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h15163b50c2301051E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d51493990cc9d50E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17heaab3afe32e8aebeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7bd02335ad19ad5eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17habeb53707e5b47a6E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f6cee95f0341d2cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9df2c5c76f717f39E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b2418be9b5e452aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h44f9b1175d76eb2eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9174efed57b15f74E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17habcb23f6ebd7122eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9882134031279e5eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha18a0ec50ade21b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4ac8ee19cc940dfE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h40cb7ff3506171f5E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hdc37772e88cd0ebcE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h923de4e5cf0cf5acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN65_$LT$anki..search..parser..Node$u20$as$u20$core..clone..Clone$GT$5clone17h7d605029dc983984E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 21 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 54 uses
  %i.m = load i64, ptr %1, align 8, !range !58, !noundef !14 ; 5 uses
  %i.n = add nsw i64 %i.m, 9223372036854775782
  %i.o = icmp ugt i64 %i.m, -9223372036854775783
  %i.p = select i1 %i.o, i64 %i.n, i64 4
  switch i64 %i.p, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 4, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775782, ptr %0, align 8
  br label %bb.bl

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775781, ptr %0, align 8
  br label %bb.bl

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9951)
  %i.r = tail call noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb18fa237a9570807E"(), !noalias !9951, !inline_history !9936 ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !9951, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9952
  invoke fastcc void @"_ZN65_$LT$anki..search..parser..Node$u20$as$u20$core..clone..Clone$GT$5clone17h7d605029dc983984E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0815290762e4922E.exit" unwind label %bb.f, !inline_history !9939

common.resume1:                                   ; preds = %bb.l, %bb.f, %.body.i, %bb.be
  %common.resume1.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.t, %bb.f ], [ %i.du, %bb.be ], [ %lpad.loopexit.i, %bb.l ]
  resume { ptr, i32 } %common.resume1.op

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 72, i64 noundef 8) #26, !noalias !9951
  br label %common.resume1

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0815290762e4922E.exit": ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !9952
end_hunk_0
begin_hunk_1_@"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h88d2ecddd3d1836aE":bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %.noexc7.i
  %i.aa = load i64, ptr %i.z, align 8, !noalias !13176
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.y, i64 %i.aa) #37
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13175

.noexc8.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc7.i
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !13176, !nonnull !14, !noundef !14 ; 3 uses
  %i.ac = icmp ugt i64 %i.y, 3
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13176
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false), !noalias !13175
  store i64 %i.p, ptr %i.ab, align 8, !noalias !13175
  store i64 %i.y, ptr %i.g, align 8, !noalias !13176
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13176
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !noalias !13175
  call void @llvm.experimental.noalias.scope.decl(metadata !13180)
  call void @llvm.experimental.noalias.scope.decl(metadata !13181)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec2cd331c9b20726E.exit.i.i.i", %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13182
  store ptr %i.ad, ptr %i.b, align 8, !noalias !13183
  %i.ae = invoke { i16, i16 } @"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h40de3706962c3caeE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13175 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.af = extractvalue { i16, i16 } %i.ae, 0      ; 2 uses
  %i.ag = trunc i16 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17haeb3518cade328e9E.exit.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i, %.noexc5.i.i.i
  %i.ah = phi i16 [ %i.an, %.noexc5.i.i.i ], [ %i.af, %.noexc.i.i.i ]
  %i.ai = phi { i16, i16 } [ %i.am, %.noexc5.i.i.i ], [ %i.ae, %.noexc.i.i.i ]
  %i.aj = trunc i16 %i.ah to i1
  %i.ak = extractvalue { i16, i16 } %i.ai, 1
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %i.aj, i16 %i.ak, i16 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13184
  invoke void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h0da6b7122efa9af1E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i16 noundef %.sroa.3.0.i.i.i.i.i.i.i)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13175

.noexc4.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !range !19, !noalias !13184, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.al, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13184
  %i.am = invoke { i16, i16 } @"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h40de3706962c3caeE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13175 ; 2 uses

.noexc5.i.i.i:                                    ; preds = %bb.g
  %i.an = extractvalue { i16, i16 } %i.am, 0      ; 2 uses
  %i.ao = trunc i16 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17haeb3518cade328e9E.exit.i.i"

bb.h:                                             ; preds = %.noexc4.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !13185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13182
  %i.ap = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13186, !noalias !13176, !noundef !14 ; 5 uses
  %i.aq = icmp ult i64 %i.ap, 288230376151711744
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load i64, ptr %i.g, align 8, !range !22, !alias.scope !13186, !noalias !13176, !noundef !14
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec2cd331c9b20726E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec2cd331c9b20726E.exit.i.i.i": ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13186, !noalias !13176, !nonnull !14, !noundef !14
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.ap ; 2 uses
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, i64 24, i1 false), !noalias !13175
  store i64 %i.al, ptr %i.au, align 8, !noalias !13175
  %i.av = add nuw nsw i64 %i.ap, 1
  store i64 %i.av, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13186, !noalias !13176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i, %bb.i, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heff1a6cf6ebe3da9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.body.i unwind label %bb.j, !noalias !13175

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ap, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec2cd331c9b20726E.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13175

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13175
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17haeb3518cade328e9E.exit.i.i": ; preds = %.noexc.i.i.i, %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13182
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heff1a6cf6ebe3da9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h6e1d3809aa9acf53E.exit.i" unwind label %bb.k, !noalias !13175

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17haeb3518cade328e9E.exit.i.i"
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd669d10cbd2db33aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr253drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..set..IntoIter$LT$u16$GT$$C$anki..notetype..cardgen..CardGenContext$LT$$RF$anki..notetype..Notetype$GT$..new_cards_required_cloze..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha1bf5bc22b97e07dE.exit.i" unwind label %bb.l, !noalias !13175

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h6e1d3809aa9acf53E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17haeb3518cade328e9E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !13187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13176
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h5b8cde8786a601afE.exit"

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13175
  unreachable

"_ZN4core3ptr253drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..set..IntoIter$LT$u16$GT$$C$anki..notetype..cardgen..CardGenContext$LT$$RF$anki..notetype..Notetype$GT$..new_cards_required_cloze..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha1bf5bc22b97e07dE.exit.i": ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i
  %.pn21.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn21.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %.lr.ph.i.i.i.i, %bb.d, %bb.c, %bb.a
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heff1a6cf6ebe3da9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %"_ZN4core3ptr253drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..set..IntoIter$LT$u16$GT$$C$anki..notetype..cardgen..CardGenContext$LT$$RF$anki..notetype..Notetype$GT$..new_cards_required_cloze..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha1bf5bc22b97e07dE.exit.i" unwind label %bb.l, !noalias !13175

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h5b8cde8786a601afE.exit": ; preds = %.loopexit30.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h6e1d3809aa9acf53E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h8ba18c6be9c235b7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13201
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 120), !noalias !13201
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noalias !13201, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !20, !noalias !13201, !noundef !14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !13201
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #37, !noalias !13201
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !13201, !nonnull !14, !noundef !14 ; 6 uses
  %i.i = icmp ule i64 %1, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13201
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i"
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.j = icmp ult i64 %1, 4
  br i1 %i.j, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %1, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %i.k = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  store i64 -9223372036854775807, ptr %i.l, align 8, !noalias !13202
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i64 -9223372036854775807, ptr %i.n, align 8, !noalias !13202
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  store i64 -9223372036854775807, ptr %i.p, align 8, !noalias !13202
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !13202
  %i.s = add nuw i64 %i.k, 4                      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit.loopexit.unr-lcssa", label %.preheader

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit.loopexit.unr-lcssa": ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit", label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit.loopexit.unr-lcssa", %.preheader.preheader
  %.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %i.t = phi i64 [ %i.v, %.preheader.epil ], [ %.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.t
  store i64 -9223372036854775807, ptr %i.u, align 8, !noalias !13202
  %i.v = add nuw i64 %i.t, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit", label %.preheader.epil, !llvm.loop !13200

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit": ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d5c493df6b99d82E.exit.loopexit.unr-lcssa", %.preheader.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i"
  store i64 %i.e, ptr %0, align 8, !alias.scope !13201
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13201
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13201
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h8c4833388b11c8a0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13214)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13215
  %i.f = invoke { i64, i64 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35f3621fce10ae90E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.r, !noalias !13214 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13215
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb745ca561c0956e6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.r, !noalias !13214

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !13214
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !13214
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !13214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13215
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !13214
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hce2ac8b6e97c3d01E.exit"

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !noalias !13215, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13215
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13215
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %bb.r, !noalias !13214

.noexc.i:                                         ; preds = %bb.e
  %i.o = load i64, ptr %i.b, align 8, !range !15, !noalias !13215, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !20, !noalias !13215, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %.noexc.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !13215
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.r, i64 %i.t) #37
          to label %.noexc7.i unwind label %bb.r, !noalias !13214

.noexc7.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %i.s, align 8, !noalias !13215, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13215
  store i64 %i.h, ptr %i.u, align 8, !noalias !13214
  store i64 %i.r, ptr %i.e, align 8, !noalias !13215
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13215
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !13214
  call void @llvm.experimental.noalias.scope.decl(metadata !13216)
  call void @llvm.experimental.noalias.scope.decl(metadata !13217)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc07d1596bc7e9130E.exit.i.i.i", %bb.g
  %i.w = invoke { i64, i64 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35f3621fce10ae90E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.l, !noalias !13214 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  %i.z = trunc nuw i64 %i.x to i1
  br i1 %i.z, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h84428c57f3b8c5dcE.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13218, !noalias !13215, !noundef !14 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 1152921504606846976
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.e, align 8, !range !22, !alias.scope !13218, !noalias !13215, !noundef !14
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc07d1596bc7e9130E.exit.i.i.i"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13219
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb745ca561c0956e6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.l, !noalias !13214

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc07d1596bc7e9130E.exit.i.i.i": ; preds = %bb.n, %bb.m, %bb.j
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13218, !noalias !13215, !nonnull !14, !noundef !14
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  store i64 %i.y, ptr %i.af, align 8, !noalias !13214
  %i.ag = add nuw nsw i64 %i.aa, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13218, !noalias !13215
  br label %bb.h

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %.body.i unwind label %bb.o, !noalias !13214

bb.m:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !noalias !13219, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13219
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1) ; 2 uses
  %i.al = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13220, !noalias !13215, !noundef !14 ; 2 uses
  %i.am = load i64, ptr %i.e, align 8, !range !22, !alias.scope !13220, !noalias !13215, !noundef !14
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ugt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc07d1596bc7e9130E.exit.i.i.i", !prof !21

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.al, i64 noundef range(i64 1, 0) %i.ak, i64 noundef 8, i64 noundef 8)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc07d1596bc7e9130E.exit.i.i.i" unwind label %bb.l, !noalias !13214

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13214
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h84428c57f3b8c5dcE.exit.i.i": ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h95dd0d96cf982695E.exit.i" unwind label %bb.p, !noalias !13214

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h84428c57f3b8c5dcE.exit.i.i"
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %i.ah, %bb.l ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda2b47b306232246E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr330drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..sync..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..objects_pending_sync$LT$anki..decks..DeckId$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17ha455997296d86084E.exit.i" unwind label %bb.q, !noalias !13214

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h95dd0d96cf982695E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h84428c57f3b8c5dcE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13215
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hce2ac8b6e97c3d01E.exit"

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13214
  unreachable

"_ZN4core3ptr330drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..sync..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..objects_pending_sync$LT$anki..decks..DeckId$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17ha455997296d86084E.exit.i": ; preds = %bb.r, %.body.i
  %.pn13.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.at, %bb.r ]
  resume { ptr, i32 } %.pn13.i

bb.r:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %i.at = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hc60c7edb6c695ef9E":bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !13811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13812
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !13811
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0d5671fed6fe45b4E.exit"

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !noalias !13812, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13812
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13812
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %bb.r, !noalias !13811

.noexc.i:                                         ; preds = %bb.e
  %i.o = load i64, ptr %i.b, align 8, !range !15, !noalias !13812, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !20, !noalias !13812, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %.noexc.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !13812
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.r, i64 %i.t) #37
          to label %.noexc7.i unwind label %bb.r, !noalias !13811

.noexc7.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %i.s, align 8, !noalias !13812, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13812
  store i64 %i.h, ptr %i.u, align 8, !noalias !13811
  store i64 %i.r, ptr %i.e, align 8, !noalias !13812
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13812
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !13811
  call void @llvm.experimental.noalias.scope.decl(metadata !13813)
  call void @llvm.experimental.noalias.scope.decl(metadata !13814)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0cd7466873f446acE.exit.i.i.i", %bb.g
  %i.w = invoke { i64, i64 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6cee7fa69a64edeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.l, !noalias !13811 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  %i.z = trunc nuw i64 %i.x to i1
  br i1 %i.z, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h1545e9a5cc958ff7E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13815, !noalias !13812, !noundef !14 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 1152921504606846976
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.e, align 8, !range !22, !alias.scope !13815, !noalias !13812, !noundef !14
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0cd7466873f446acE.exit.i.i.i"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13816
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha2c2d4cd3bdf9c95E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.l, !noalias !13811

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0cd7466873f446acE.exit.i.i.i": ; preds = %bb.n, %bb.m, %bb.j
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13815, !noalias !13812, !nonnull !14, !noundef !14
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  store i64 %i.y, ptr %i.af, align 8, !noalias !13811
  %i.ag = add nuw nsw i64 %i.aa, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13815, !noalias !13812
  br label %bb.h

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %.body.i unwind label %bb.o, !noalias !13811

bb.m:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !noalias !13816, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13816
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1) ; 2 uses
  %i.al = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13817, !noalias !13812, !noundef !14 ; 2 uses
  %i.am = load i64, ptr %i.e, align 8, !range !22, !alias.scope !13817, !noalias !13812, !noundef !14
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ugt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0cd7466873f446acE.exit.i.i.i", !prof !21

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.al, i64 noundef range(i64 1, 0) %i.ak, i64 noundef 8, i64 noundef 8)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0cd7466873f446acE.exit.i.i.i" unwind label %bb.l, !noalias !13811

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13811
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h1545e9a5cc958ff7E.exit.i.i": ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2b69b4591c47fa3eE.exit.i" unwind label %bb.p, !noalias !13811

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h1545e9a5cc958ff7E.exit.i.i"
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %i.ah, %bb.l ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a789c83cac8fae0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr307drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..notetype..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_all_notetype_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h02f7cf91b219e757E.exit.i" unwind label %bb.q, !noalias !13811

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2b69b4591c47fa3eE.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h1545e9a5cc958ff7E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13812
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0d5671fed6fe45b4E.exit"

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13811
  unreachable

"_ZN4core3ptr307drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..notetype..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_all_notetype_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h02f7cf91b219e757E.exit.i": ; preds = %bb.r, %.body.i
  %.pn13.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.at, %bb.r ]
  resume { ptr, i32 } %.pn13.i

bb.r:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %"_ZN4core3ptr307drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..notetype..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..get_all_notetype_ids..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h02f7cf91b219e757E.exit.i" unwind label %bb.q, !noalias !13811

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0d5671fed6fe45b4E.exit": ; preds = %bb.d, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2b69b4591c47fa3eE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hc71ad0bc5faba6ecE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13832)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13832
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 120), !noalias !13832
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noalias !13832, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !20, !noalias !13832, !noundef !14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !13832
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #37, !noalias !13832
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !13832, !nonnull !14, !noundef !14 ; 6 uses
  %i.i = icmp ule i64 %1, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13832
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i"
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.j = icmp ult i64 %1, 4
  br i1 %i.j, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %1, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %i.k = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  store i64 -9223372036854775807, ptr %i.l, align 8, !noalias !13833
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i64 -9223372036854775807, ptr %i.n, align 8, !noalias !13833
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  store i64 -9223372036854775807, ptr %i.p, align 8, !noalias !13833
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !13833
  %i.s = add nuw i64 %i.k, 4                      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit.loopexit.unr-lcssa", label %.preheader

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit.loopexit.unr-lcssa": ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit", label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit.loopexit.unr-lcssa", %.preheader.preheader
  %.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %i.t = phi i64 [ %i.v, %.preheader.epil ], [ %.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.t
  store i64 -9223372036854775807, ptr %i.u, align 8, !noalias !13833
  %i.v = add nuw i64 %i.t, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit", label %.preheader.epil, !llvm.loop !13831

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit": ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6cfff2137225d90cE.exit.loopexit.unr-lcssa", %.preheader.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14637b894a32084cE.exit.i.i.i"
  store i64 %i.e, ptr %0, align 8, !alias.scope !13832
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13832
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13832
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hca2083a881762b85E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13846
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habbea8021afefc63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.s, !noalias !13845

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.i = load i8, ptr %i.h, align 1, !range !32, !noalias !13846, !noundef !14
  %.not.i = icmp eq i8 %i.i, 6
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13846
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2551a766e899de59E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.s, !noalias !13845

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !13845
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !13845
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !13845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13846
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !13845
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h09c1eec43e8fc7c8E.exit"

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !noalias !13846, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13846
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13846
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc.i unwind label %bb.s, !noalias !13845

.noexc.i:                                         ; preds = %bb.e
  %i.o = load i64, ptr %i.c, align 8, !range !15, !noalias !13846, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !20, !noalias !13846, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %.noexc.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !13846
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.r, i64 %i.t) #37
          to label %.noexc5.i unwind label %bb.s, !noalias !13845

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %i.s, align 8, !noalias !13846, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !13845
  store i64 %i.r, ptr %i.g, align 8, !noalias !13846
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13846
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !13845
  call void @llvm.experimental.noalias.scope.decl(metadata !13847)
  call void @llvm.experimental.noalias.scope.decl(metadata !13848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13849
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0da24a82959ab358E.exit.i.i.i", %bb.g
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habbea8021afefc63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.l, !noalias !13845

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %i.w, align 1, !range !32, !noalias !13850, !noundef !14
  %.not.i.i.i = icmp eq i8 %i.x, 6
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc74ac3a6561c380eE.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13851, !noalias !13846, !noundef !14 ; 4 uses
  %i.z = icmp ult i64 %i.y, 230584300921369396
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.g, align 8, !range !22, !alias.scope !13851, !noalias !13846, !noundef !14
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0da24a82959ab358E.exit.i.i.i"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13850
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2551a766e899de59E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.l, !noalias !13845

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0da24a82959ab358E.exit.i.i.i": ; preds = %bb.n, %bb.m, %bb.j
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13851, !noalias !13846, !nonnull !14, !noundef !14
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !13845
  %i.ae = add nuw nsw i64 %i.y, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13851, !noalias !13846
  br label %bb.h

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %.body.i unwind label %bb.o, !noalias !13845

bb.m:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.a, align 8, !noalias !13850, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13850
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13852, !noalias !13846, !noundef !14 ; 2 uses
  %i.ak = load i64, ptr %i.g, align 8, !range !22, !alias.scope !13852, !noalias !13846, !noundef !14
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0da24a82959ab358E.exit.i.i.i", !prof !21

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aj, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 8, i64 noundef 40)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0da24a82959ab358E.exit.i.i.i" unwind label %bb.l, !noalias !13845

bb.o:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13845
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc74ac3a6561c380eE.exit.i.i": ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.q unwind label %bb.p, !noalias !13845

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc74ac3a6561c380eE.exit.i.i"
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.af, %bb.l ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2656731625c11b30E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr220drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..revlog..row_to_revlog_entry$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h7cb76b17d82e60e6E.exit.i" unwind label %bb.r, !noalias !13845

bb.q:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc74ac3a6561c380eE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !13853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13846
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h09c1eec43e8fc7c8E.exit"

bb.r:                                             ; preds = %bb.s, %.body.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !13845
  unreachable

"_ZN4core3ptr220drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..revlog..row_to_revlog_entry$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h7cb76b17d82e60e6E.exit.i": ; preds = %bb.s, %.body.i
end_hunk_2
