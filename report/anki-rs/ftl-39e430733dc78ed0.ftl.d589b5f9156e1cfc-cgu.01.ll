Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.01?download=true
inline.NumInlined: 849
inline.NumDeleted: 387
begin_hunk_0_@"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd5bbc42788aeabf0E":bb.a
"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h3da6733a228c8a3aE.exit": ; preds = %bb.b, %bb.c
  %i.s = phi i64 [ %i.k, %bb.b ], [ %.pre.i, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1222, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1225
  store ptr %i.j, ptr %i.a, align 8, !noalias !1226
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1226
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1226
  call void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbe06bf2e8847ee65E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h046f596782109389E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1241
  %.val.i = load i64, ptr %1, align 8, !alias.scope !1240, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !1240, !noundef !7 ; 2 uses
  %i.f = sub nuw i64 %.val3.i, %.val.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1241
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h885749719b94abe7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !1241
  %i.g = load i64, ptr %i.c, align 8, !range !10, !noalias !1241, !noundef !7
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !noalias !1241, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %.noexc4.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8c396cc10aeb8b9bE.exit.i.i", !prof !12

.noexc4.i:                                        ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !1241
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.j, i64 %i.l) #20, !noalias !1241
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8c396cc10aeb8b9bE.exit.i.i": ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1241, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1241
  store i64 %i.j, ptr %i.d, align 8, !noalias !1241
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !1241
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !noalias !1241
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx13.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !1243
  store i64 %.val.i, ptr %i.b, align 8, !noalias !1244
  %.sroa.510.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val3.i, ptr %.sroa.510.0..sroa_idx11.i, align 8, !noalias !1244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1245
  store ptr %i.p, ptr %i.a, align 8, !noalias !1246
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1246
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !1246
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc5d2bb6173d344d6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h35a4531922a090afE.exit" unwind label %bb.b, !noalias !1241

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8c396cc10aeb8b9bE.exit.i.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h18a8cea2eb9b1778E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !1241

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19, !noalias !1241
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.q

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h35a4531922a090afE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8c396cc10aeb8b9bE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1241
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h15d4647950609c88E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 16               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 16, !noalias !1253
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %i.i, align 8, !noalias !1253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1253
  call fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbca03a2b6ddced5fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(16) %i.h), !noalias !1253
  %i.j = load i64, ptr %i.f, align 8, !range !11, !noalias !1253, !noundef !7
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1253
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !1253
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1253
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hab226d4bf286acd4E.exit"

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7b8ca78c815788cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit.i" unwind label %bb.j, !noalias !1253

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1253
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h885749719b94abe7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.c, !noalias !1253

.noexc.i:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !range !10, !noalias !1253, !noundef !7
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !11, !noalias !1253, !noundef !7 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %.noexc.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !1253
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.q, i64 %i.s) #20
          to label %.noexc6.i unwind label %bb.c, !noalias !1253

.noexc6.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.r, align 8, !noalias !1253, !nonnull !7, !noundef !7 ; 2 uses
  %i.u = icmp ugt i64 %i.q, 3
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1253
  store i64 %i.q, ptr %i.g, align 8, !noalias !1253
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1253
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1253
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1256
  %i.v = load <2 x ptr>, ptr %i.h, align 16, !noalias !1253
  store <2 x ptr> %i.v, ptr %i.c, align 16, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1257
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbca03a2b6ddced5fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(16) %i.c)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !1253

.noexc7.i:                                        ; preds = %bb.f
  %i.w = load i64, ptr %i.b, align 8, !range !11, !noalias !1257, !noundef !7
  %.not5.i.i.i = icmp eq i64 %i.w, -9223372036854775808
  br i1 %.not5.i.i.i, label %.loopexit9.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc7.i, %.noexc8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1257
  %i.x = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1253, !noundef !7 ; 5 uses
  %i.y = icmp ult i64 %i.x, 384307168202282326
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.g, align 8, !range !13, !alias.scope !1258, !noalias !1253, !noundef !7
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3391ff29f6be33cbE.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3391ff29f6be33cbE.exit.i.i.i": ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1253, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1253
  %i.ad = add nuw nsw i64 %i.x, 1
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1257
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbca03a2b6ddced5fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(16) %i.c)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !1253

.noexc8.i:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3391ff29f6be33cbE.exit.i.i.i"
  %i.ae = load i64, ptr %i.b, align 8, !range !11, !noalias !1257, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not.i.i.i, label %.loopexit9.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7b8ca78c815788cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.i, !noalias !1253

bb.h:                                             ; preds = %.lr.ph.i.i.i
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h51c2fea382f35a9eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.x, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3391ff29f6be33cbE.exit.i.i.i" unwind label %bb.g, !noalias !1253

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19, !noalias !1253
  unreachable

.loopexit.i:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3391ff29f6be33cbE.exit.i.i.i"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hca35f8ea3fc77352E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #18
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit.i" unwind label %bb.j, !noalias !1253

.loopexit9.i:                                     ; preds = %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hab226d4bf286acd4E.exit"

bb.j:                                             ; preds = %.body.i, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19, !noalias !1253
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit.i": ; preds = %.body.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %.pn.i

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hab226d4bf286acd4E.exit": ; preds = %bb.b, %.loopexit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h17464b01f4d42d5fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1267
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1267
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h885749719b94abe7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !1267
  %i.h = load i64, ptr %i.b, align 8, !range !10, !noalias !1267, !noundef !7
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !11, !noalias !1267, !noundef !7 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbde62be31f6a4ae8E.exit.i.i", !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1267
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #20, !noalias !1267
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbde62be31f6a4ae8E.exit.i.i": ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1267, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1267
  store i64 %i.k, ptr %i.c, align 8, !noalias !1267
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1267
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !1267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1268
  store ptr %i.q, ptr %i.a, align 8, !noalias !1269
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1269
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !1269
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he45f61e21adc2160E"(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9ffe067fc0eb4277E.exit" unwind label %bb.c, !noalias !1267

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbde62be31f6a4ae8E.exit.i.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hca35f8ea3fc77352E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.e unwind label %bb.d, !noalias !1267

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19, !noalias !1267
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9ffe067fc0eb4277E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbde62be31f6a4ae8E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1267
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h52928fbc85ac26b0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1339
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haf4b1aa9eaba1f23E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b, !noalias !1337

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !11, !noalias !1339, !noundef !7
  %.not.i = icmp eq i64 %i.k, -9223372036854775808
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1339
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hdc7e3a0285ead6ddE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g, !noalias !1337

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1337
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !alias.scope !1337
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !alias.scope !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1339
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1347, !nonnull !7, !noundef !7
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1348
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h37fea61f7396fc61E.exit"

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n), !noalias !1337
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h37fea61f7396fc61E.exit"

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7b8ca78c815788cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.y unwind label %bb.x, !noalias !1337

bb.h:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.f, align 8, !noalias !1339, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1339
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.s, i64 1)
  %.sroa.0.0.i.i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.t, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1339
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h885749719b94abe7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.g, !noalias !1337

.noexc.i:                                         ; preds = %bb.h
  %i.u = load i64, ptr %i.d, align 8, !range !10, !noalias !1339, !noundef !7
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !11, !noalias !1339, !noundef !7 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %.noexc.i
  %i.z = load i64, ptr %i.y, align 8, !noalias !1339
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.x, i64 %i.z) #20
          to label %.noexc5.i unwind label %bb.g, !noalias !1337

.noexc5.i:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc.i
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !1339, !nonnull !7, !noundef !7 ; 2 uses
  %i.ab = icmp ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1337
  store i64 %i.x, ptr %i.i, align 8, !noalias !1339
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1339
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !1337
end_hunk_0
