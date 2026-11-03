Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.12?download=true
inline.NumInlined: 7127
inline.NumDeleted: 3581
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0ceaf380e240144dE":bb.a

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h760ec0586a8f669dE.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8af4d6be40d1372E.exit_crit_edge.i.i", %bb.c
  %i.ad = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8af4d6be40d1372E.exit_crit_edge.i.i" ], [ %i.r, %bb.c ]
  %i.ae = phi i64 [ %.pre.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8af4d6be40d1372E.exit_crit_edge.i.i" ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1271
  store ptr %i.u, ptr %i.a, align 8, !noalias !1272
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1272
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !1272
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1318fcf07a544b68E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h760ec0586a8f669dE.exit.i"
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.g ], [ %lpad.thr_comm.i.i, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..Note$GT$$GT$17h7d33d9e13c7cded0E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #35
          to label %"_ZN4core3ptr217drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notes..Note$GT$$C$$LT$anki_proto..notes..Note$u20$as$u20$core..convert..Into$LT$anki..notes..Note$GT$$GT$..into$GT$$GT$17hf2e10d9d54e7d50aE.exit" unwind label %bb.i

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h760ec0586a8f669dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr217drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notes..Note$GT$$C$$LT$anki_proto..notes..Note$u20$as$u20$core..convert..Into$LT$anki..notes..Note$GT$$GT$..into$GT$$GT$17hf2e10d9d54e7d50aE.exit": ; preds = %bb.j, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ah, %bb.j ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8378d13b35c5af4E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr217drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notes..Note$GT$$C$$LT$anki_proto..notes..Note$u20$as$u20$core..convert..Into$LT$anki..notes..Note$GT$$GT$..into$GT$$GT$17hf2e10d9d54e7d50aE.exit" unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0d0dba0e46365f1eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.h = load i64, ptr %i.b, align 8, !range !15, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17ha9a9363bd261818cE.exit.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #37
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17ha9a9363bd261818cE.exit.i": ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1279
  store ptr %i.q, ptr %i.a, align 8, !noalias !1280
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1280
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !1280
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha9eb16f8c9b7bfa9E"(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17ha9a9363bd261818cE.exit.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h4122196ad32e793fE.exit" unwind label %bb.e

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17ha9a9363bd261818cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h4122196ad32e793fE.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0e4b29a385692511E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 144                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.h = load i64, ptr %i.b, align 8, !range !15, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1267c0aeee1acd76E.exit.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #37
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1267c0aeee1acd76E.exit.i": ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1287
  store ptr %i.q, ptr %i.a, align 8, !noalias !1288
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1288
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !1288
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc17feb771190f5d7E"(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1267c0aeee1acd76E.exit.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h5bb5415a6537f83fE.exit" unwind label %bb.e

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1267c0aeee1acd76E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h5bb5415a6537f83fE.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h17fae2534f42163bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !1325, !noundef !14
  %.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1326, !nonnull !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i.i.i, label %.thread19, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.a
  %.promoted.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1326
  br label %.split.i.i

.thread19:                                        ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit"

.split.i.i:                                       ; preds = %bb.b, %.split.preheader.i.i
  %i.j = phi ptr [ %i.l, %bb.b ], [ %.promoted.i.i, %.split.preheader.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !1329
  %i.m = load i16, ptr %i.j, align 2, !range !1330, !noalias !1329, !noundef !14
  %i.n = trunc nuw i16 %i.m to i1
  br i1 %i.n, label %bb.d, label %.split.i.i

bb.c:                                             ; preds = %.split.i.i
  store i64 0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h306663b1a2c1c883E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  br label %"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit"

"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit": ; preds = %bb.c, %.thread19, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h117db779bb31975fE.exit"
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.r = load i16, ptr %i.q, align 2, !noalias !1329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !range !15, !noundef !14
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !20, !noundef !14 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %.noexc
  %i.x = load i64, ptr %i.w, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.v, i64 %i.x) #37
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.z = icmp ugt i64 %i.v, 3
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i16 %i.r, ptr %i.y, align 2
  store i64 %i.v, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !1335, !noundef !14
  %.not.i.i.i12.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i12.i.i, label %.thread10.i.i, label %.split.preheader.i.i.lr.ph.i.i

.split.preheader.i.i.lr.ph.i.i:                   ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1336, !nonnull !14
  %.promoted.i.i.i.pre.i = load ptr, ptr %i.aa, align 8, !alias.scope !1337
  br label %.split.preheader.i.i.i.i

.split.preheader.i.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h43387c1982ff744dE.exit.i.i", %.split.preheader.i.i.lr.ph.i.i
  %i.ae = phi i64 [ %i.ar, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h43387c1982ff744dE.exit.i.i" ], [ 1, %.split.preheader.i.i.lr.ph.i.i ] ; 5 uses
  %.promoted.i.i.i.i = phi ptr [ %i.ah, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h43387c1982ff744dE.exit.i.i" ], [ %.promoted.i.i.i.pre.i, %.split.preheader.i.i.lr.ph.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  br label %.split.i.i.i.i

.thread10.i.i:                                    ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h117db779bb31975fE.exit"

.split.i.i.i.i:                                   ; preds = %bb.g, %.split.preheader.i.i.i.i
  %i.af = phi ptr [ %i.ah, %bb.g ], [ %.promoted.i.i.i.i, %.split.preheader.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.split.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  store ptr %i.ah, ptr %i.aa, align 8, !alias.scope !1342
  %i.ai = load i16, ptr %i.af, align 2, !range !1330, !noalias !1342, !noundef !14
  %i.aj = trunc nuw i16 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %.split.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !noalias !1342
  %i.am = icmp samesign ult i64 %i.ae, 4611686018427387904
  call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %i.c, align 8, !range !22, !alias.scope !1343, !noundef !14
  %i.ao = icmp eq i64 %i.ae, %i.an
  br i1 %i.ao, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h43387c1982ff744dE.exit.i.i"

bb.i:                                             ; preds = %.split.i.i.i.i
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h306663b1a2c1c883E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h117db779bb31975fE.exit" unwind label %bb.m

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h43387c1982ff744dE.exit.i.i": ; preds = %bb.k, %bb.h
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1343, !nonnull !14, !noundef !14
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ae
  store i16 %i.al, ptr %i.aq, align 2, !noalias !1336
  %i.ar = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.ar, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1343
  br label %.split.preheader.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h306663b1a2c1c883E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ae, i64 noundef 1, i64 noundef 2, i64 noundef 2)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h43387c1982ff744dE.exit.i.i" unwind label %bb.j, !noalias !1336

bb.l:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.as, %bb.j ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit11" unwind label %bb.n

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h117db779bb31975fE.exit": ; preds = %.thread10.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit"

bb.n:                                             ; preds = %bb.p, %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit11": ; preds = %bb.o, %bb.p, %.body
  %.pn14 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aw, %bb.p ], [ %i.aw, %bb.o ]
  resume { ptr, i32 } %.pn14

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !1344, !noundef !14
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit11", label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h306663b1a2c1c883E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %"_ZN4core3ptr137drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$u16$GT$$GT$$GT$$GT$17h06603127ee5d64e1E.exit11" unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h1aa625c113a8d1ebE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.j = load i64, ptr %i.c, align 8, !range !15, !noundef !14
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !20, !noundef !14 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h46c9108361b0fd01E.exit.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.m, i64 %i.o) #37
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h46c9108361b0fd01E.exit.i": ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.m, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  store ptr %.val, ptr %i.b, align 8, !noalias !1355
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val3, ptr %.sroa.58.0..sroa_idx9, align 8, !noalias !1355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1356
  store ptr %i.s, ptr %i.a, align 8, !noalias !1357
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1357
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !1357
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he25cf5c9c68feaa8E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h46c9108361b0fd01E.exit.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit" unwind label %bb.e

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h46c9108361b0fd01E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h1e56accfa403a24dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 144                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
  %i.h = load i64, ptr %i.b, align 8, !range !15, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h62838d436b1c1572E.exit.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #37
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h62838d436b1c1572E.exit.i": ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1364
  store ptr %i.q, ptr %i.a, align 8, !noalias !1365
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1365
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !1365
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b6c3693cdfd706dE"(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h62838d436b1c1572E.exit.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65a258c8d4362d46E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$17h53a80dc1148e6cf2E.exit" unwind label %bb.e

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h62838d436b1c1572E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$17h53a80dc1148e6cf2E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h1f8a1f9ea16f2871E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !14, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14
  %i.h = ptrtoint ptr %.val3 to i64
  %i.i = ptrtoint ptr %.val to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 144                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 8, i64 noundef 160)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.l = load i64, ptr %i.c, align 8, !range !15, !noundef !14
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !20, !noundef !14 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c, !prof !21
end_hunk_0
