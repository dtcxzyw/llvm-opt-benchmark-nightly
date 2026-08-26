Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki_proto_gen-668eb0d2cd07af04.anki_proto_gen.7d06285d9a9fd32f-cgu.4?download=true
inline.NumInlined: 190
inline.NumDeleted: 116
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1b1882abd8acf7efE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3
  store ptr %i.e, ptr %i.d, align 8, !noalias !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !11, !noalias !12, !nonnull !13, !noundef !13
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !11, !noalias !12
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = phi ptr [ %i.j, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 10 uses
  %i.i = icmp eq ptr %i.h, %i.g
  br i1 %i.i, label %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread", label %bb.c

"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !alias.scope !11, !noalias !12
  store ptr %i.h, ptr %i.c, align 8, !noalias !9
  %i.k = call noundef zeroext i1 @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hf0bca1085f457d85E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !6
  br i1 %i.k, label %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit", label %bb.b

"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.l, align 8, !nonnull !13, !align !14, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !15, !noalias !18, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !20, !noundef !13 ; 2 uses
  %i.q = icmp ult i64 %i.p, 115292150460684698
  call void @llvm.assume(i1 %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.h), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !27, !alias.scope !28, !noalias !26, !noundef !13
  %.not.i.i = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.h unwind label %bb.g, !noalias !26

bb.f:                                             ; preds = %bb.h, %bb.d
  %.sroa.0.0.i.i2 = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.h ], [ -9223372036854775808, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !28, !noalias !26, !nonnull !13, !noundef !13 ; 2 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !26
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %"_ZN14anki_proto_gen12get_services28_$u7b$$u7b$closure$u7d$$u7d$17h3d6247e38ef1ec23E.exit"

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e93028e3fb38e41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit.i.i" unwind label %bb.j, !noalias !26

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !24
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  br label %bb.f

bb.i:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !26
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit.i.i": ; preds = %bb.g
  resume { ptr, i32 } %i.x

"_ZN14anki_proto_gen12get_services28_$u7b$$u7b$closure$u7d$$u7d$17h3d6247e38ef1ec23E.exit": ; preds = %bb.f
  %i.z = add i64 %i.p, %i.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !28, !noalias !26, !noundef !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !28, !noalias !26, !noundef !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ad, ptr %.sroa.83.0..sroa_idx, align 8
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.z, ptr %.sroa.94.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread", %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit"
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZN14anki_proto_gen12get_services28_$u7b$$u7b$closure$u7d$$u7d$17h3d6247e38ef1ec23E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0ae21125f0b1c28bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i13 = alloca [16 x i8], align 8    ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %2 = alloca [80 x i8], align 8                  ; 11 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 8 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1b1882abd8acf7efE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.l, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.n = load i64, ptr %i.l, align 8, !range !27, !noundef !13
  %.not = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %.noexc7.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki_proto_gen..Method$GT$17h997787e74c37fdcaE"(ptr noalias noundef align 8 dereferenceable(80) %i.k) #18
          to label %bb.ad unwind label %bb.ac

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hc3e1b4af017a7c46E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.r = load i64, ptr %i.i, align 8, !range !29, !noundef !13
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !27, !noundef !13 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.v, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.u, i64 %i.w) #19
          to label %.noexc6 unwind label %bb.d

.noexc6:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.y = icmp ugt i64 %i.u, 3
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  store i64 %i.u, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46
  store ptr %i.z, ptr %i.d, align 8, !noalias !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !50, !noalias !51, !nonnull !13, !noundef !13
  %.promoted.i.i.i14 = load ptr, ptr %i.j, align 8, !alias.scope !50, !noalias !51
  br label %bb.h

bb.h:                                             ; preds = %.noexc31, %bb.g
  %i.ac = phi ptr [ %i.ae, %.noexc31 ], [ %.promoted.i.i.i14, %bb.g ] ; 10 uses
  %i.ad = icmp eq ptr %i.ac, %i.ab
  br i1 %i.ad, label %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread.i30", label %bb.i

"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread.i30": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46
  br label %.noexc7.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  store ptr %i.ae, ptr %i.j, align 8, !alias.scope !50, !noalias !51
  store ptr %i.ac, ptr %i.c, align 8, !noalias !48
  %i.af = invoke noundef zeroext i1 @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hf0bca1085f457d85E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc31:                                         ; preds = %bb.i
  br i1 %i.af, label %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i15", label %bb.h

"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i15": ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46
  %.not.i16 = icmp eq ptr %i.ac, null
  br i1 %.not.i16, label %.noexc7.thread, label %bb.j

bb.j:                                             ; preds = %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i15"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.val.i17 = load ptr, ptr %i.ag, align 8, !alias.scope !37, !noalias !52, !nonnull !13, !align !14, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !53, !noalias !56, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i17, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !58, !noundef !13 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 115292150460684698
  call void @llvm.assume(i1 %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ac)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i13)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !27, !alias.scope !64, !noalias !65, !noundef !13
  %.not.i.i.i18 = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not.i.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.n unwind label %bb.m, !noalias !65

bb.l:                                             ; preds = %bb.n, %.noexc32
  %.sroa.0.0.i.i2.i22 = phi i64 [ %.sroa.0.0.copyload.i.i.i20, %bb.n ], [ -9223372036854775808, %.noexc32 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !64, !noalias !65, !nonnull !13, !noundef !13 ; 2 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !65
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %.noexc7

bb.m:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e93028e3fb38e41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.p, !noalias !65

bb.n:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i20 = load i64, ptr %i.a, align 8, !noalias !62
  %.sroa.5.0..sroa_idx.i.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i21, i64 16, i1 false), !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62
  br label %bb.l

bb.o:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !65
  unreachable

.noexc7:                                          ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !64, !noalias !65, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !alias.scope !64, !noalias !65, !noundef !13
  %.sroa.036.0.copyload40 = load i64, ptr %i.b, align 8, !noalias !37 ; 2 uses
  %.sroa.10.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx43, i64 16, i1 false), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i13, i64 16, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  %.not5.i.i = icmp eq i64 %.sroa.036.0.copyload40, -9223372036854775808
  br i1 %.not5.i.i, label %.noexc7.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc7
  %i.ay = add i64 %i.ak, %i.ai
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.1044.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.2059.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.10.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc8
  %.sroa.16.0.a = phi i32 [ %i.ca, %.noexc8 ], [ %i.av, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %i.bt, %.noexc8 ], [ %i.ap, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.1044.0 = phi i64 [ %.sroa.0.0.i.i2.i, %.noexc8 ], [ %.sroa.0.0.i.i2.i22, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.036.0 = phi i64 [ %.sroa.036.0.copyload39, %.noexc8 ], [ %.sroa.036.0.copyload40, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.1854.0 = phi i32 [ %i.cc, %.noexc8 ], [ %i.ax, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.2059.0 = phi i64 [ %i.by, %.noexc8 ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !66
  store i64 %.sroa.036.0, ptr %2, align 8, !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false), !noalias !66
  store i64 %.sroa.1044.0, ptr %.sroa.1044.0..sroa_idx, align 8, !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false), !noalias !66
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !66
  store i32 %.sroa.16.0.a, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !66
  store i32 %.sroa.1854.0, ptr %.sroa.1854.0..sroa_idx, align 8, !noalias !66
  store i64 %.sroa.2059.0, ptr %.sroa.2059.0..sroa_idx, align 8, !noalias !66
  %i.az = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !69, !noalias !70, !noundef !13 ; 5 uses
  %i.ba = icmp ult i64 %i.az, 115292150460684698
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.m, align 8, !range !71, !alias.scope !69, !noalias !70, !noundef !13
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10d4be5ab628d141E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10d4be5ab628d141E.exit.i.i": ; preds = %bb.aa, %.lr.ph.i.i
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !69, !noalias !70, !nonnull !13, !noundef !13
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.bd, i64 %i.az ; 8 uses
  store i64 %.sroa.036.0, ptr %i.be, align 8
  %.sroa.10.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx41, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  %.sroa.1044.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %.sroa.1044.0, ptr %.sroa.1044.0..sroa_idx45, align 8
  %.sroa.12.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx47, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  %.sroa.14.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx48, align 8
  %.sroa.16.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store i32 %.sroa.16.0.a, ptr %.sroa.16.0..sroa_idx50, align 8
  %.sroa.1854.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i32 %.sroa.1854.0, ptr %.sroa.1854.0..sroa_idx55, align 8
  %.sroa.2059.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store i64 %.sroa.2059.0, ptr %.sroa.2059.0..sroa_idx60, align 8
  %i.bf = add nuw nsw i64 %i.az, 1
  store i64 %i.bf, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !69, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !81
  store ptr %i.z, ptr %i.h, align 8, !noalias !83
  %i.bg = load ptr, ptr %i.aa, align 8, !alias.scope !85, !noalias !86, !nonnull !13, !noundef !13
  %.promoted.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !85, !noalias !86
  br label %bb.q

bb.q:                                             ; preds = %.noexc9, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10d4be5ab628d141E.exit.i.i"
  %i.bh = phi ptr [ %i.bj, %.noexc9 ], [ %.promoted.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10d4be5ab628d141E.exit.i.i" ] ; 10 uses
  %i.bi = icmp eq ptr %i.bh, %i.bg
  br i1 %i.bi, label %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread.i", label %bb.r

"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread.i": ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !81
  br label %.noexc7.thread

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 80 ; 2 uses
  store ptr %i.bj, ptr %i.j, align 8, !alias.scope !85, !noalias !86
  store ptr %i.bh, ptr %i.g, align 8, !noalias !83
  %i.bk = invoke noundef zeroext i1 @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hf0bca1085f457d85E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.r
  br i1 %i.bk, label %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i", label %bb.q

"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i": ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !81
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %.noexc7.thread, label %bb.s

bb.s:                                             ; preds = %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i"
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !72, !noalias !87, !nonnull !13, !align !14, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !88, !noalias !91, !noundef !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !93, !noundef !13 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 115292150460684698
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bh)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit

.noexc10:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !27, !alias.scope !99, !noalias !100, !noundef !13
  %.not.i.i.i = icmp eq i64 %i.br, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.noexc10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !97
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %bb.w unwind label %bb.v, !noalias !100

bb.u:                                             ; preds = %bb.w, %.noexc10
  %.sroa.0.0.i.i2.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.w ], [ -9223372036854775808, %.noexc10 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !99, !noalias !100, !nonnull !13, !noundef !13 ; 2 uses
  %i.bu = atomicrmw add ptr %i.bt, i64 1 monotonic, align 8, !noalias !100
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %.noexc8

bb.v:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e93028e3fb38e41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.y, !noalias !100

bb.w:                                             ; preds = %bb.t
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !97
  br label %bb.u

bb.x:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !100
  unreachable

.noexc8:                                          ; preds = %bb.u
  %i.by = add i64 %i.bo, %i.bm
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !alias.scope !99, !noalias !100, !noundef !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !99, !noalias !100, !noundef !13
  %.sroa.036.0.copyload39 = load i64, ptr %i.f, align 8, !noalias !72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx42, i64 16, i1 false), !noalias !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !97
  %.not.i.i = icmp eq i64 %.sroa.036.0.copyload39, -9223372036854775808
  br i1 %.not.i.i, label %.noexc7.thread, label %.lr.ph.i.i

bb.z:                                             ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki_proto_gen..Method$GT$17h997787e74c37fdcaE"(ptr noalias noundef align 8 dereferenceable(80) %2) #18
          to label %.body unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17habe0152bd3701267E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.az, i64 noundef 1, i64 noundef 8, i64 noundef 80)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h10d4be5ab628d141E.exit.i.i" unwind label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.s
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.i
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.v, %bb.m, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %i.bw, %bb.v ], [ %i.as, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit79, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$anki_proto_gen..Method$GT$$GT$17h555b10a4e1ddb0d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #18
          to label %bb.ad unwind label %bb.ac

.noexc7.thread:                                   ; preds = %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i", %.noexc8, %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread.i", %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.thread.i30", %"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h570e2e8fcc101521E.exit.i15", %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.c

bb.ac:                                            ; preds = %.body, %bb.d
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.ad:                                            ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h86216717830d3d34E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i32, ptr %i.e, align 8, !alias.scope !101, !noalias !104, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val3 = load i32, ptr %i.f, align 4, !alias.scope !104, !noalias !101, !noundef !13 ; 2 uses
  %narrow.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.val3, i32 %.val)
  %.sink1.i.i.i = zext i32 %narrow.i.i.i to i64   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hc3e1b4af017a7c46E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sink1.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
  %i.g = load i64, ptr %i.c, align 8, !range !29, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !27, !noundef !13 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4a8e8a5f7c86fa79E.exit.i", !prof !30

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.j, i64 %i.l) #19
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4a8e8a5f7c86fa79E.exit.i": ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = icmp uge i64 %i.j, %.sink1.i.i.i
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %.sroa.05.0.copyload = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106
  store i64 %.sroa.05.0.copyload, ptr %i.b, align 8, !noalias !113
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.val, ptr %.sroa.4.0..sroa_idx7, align 8, !noalias !113
  %.sroa.59.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.val3, ptr %.sroa.59.0..sroa_idx10, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  store ptr %i.p, ptr %i.a, align 8, !noalias !118
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !118
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !118
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hcef2faae8cee3819E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4a8e8a5f7c86fa79E.exit.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$anki_proto_gen..Method$GT$$GT$17h555b10a4e1ddb0d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #18
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4a8e8a5f7c86fa79E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki_proto_gen..Method$GT$17h997787e74c37fdcaE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e93028e3fb38e41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !27, !alias.scope !119, !noundef !13
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e93028e3fb38e41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit" unwind label %bb.h

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !27, !alias.scope !122, !noundef !13
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit3", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e93028e3fb38e41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit3" unwind label %bb.f

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit": ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !140, !nonnull !13, !noundef !13
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !140
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %"_ZN4core3ptr64drop_in_place$LT$prost_reflect..descriptor..MethodDescriptor$GT$17h91b15078147f442bE.exit"

bb.e:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h13a6b453b34613ffE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr64drop_in_place$LT$prost_reflect..descriptor..MethodDescriptor$GT$17h91b15078147f442bE.exit" unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit3": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit", %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !156, !nonnull !13, !noundef !13
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !156
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %"_ZN4core3ptr64drop_in_place$LT$prost_reflect..descriptor..MethodDescriptor$GT$17h91b15078147f442bE.exit5"

bb.g:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit3"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h13a6b453b34613ffE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %"_ZN4core3ptr64drop_in_place$LT$prost_reflect..descriptor..MethodDescriptor$GT$17h91b15078147f442bE.exit5"

"_ZN4core3ptr64drop_in_place$LT$prost_reflect..descriptor..MethodDescriptor$GT$17h91b15078147f442bE.exit5": ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit3", %bb.g
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN4core3ptr64drop_in_place$LT$prost_reflect..descriptor..MethodDescriptor$GT$17h91b15078147f442bE.exit": ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4a11ac8a82ab6ca7E.exit", %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$anki_proto_gen..BackendService$GT$17h6a35ece6dbef5763E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e93028e3fb38e41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$anki_proto_gen..Method$GT$$GT$17h555b10a4e1ddb0d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #18
          to label %.body unwind label %bb.q

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f1d0ef0bb97cb5aE.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !163, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !163, !noundef !13 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7685d9561a9458d4E.exit.i", label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7685d9561a9458d4E.exit.i", label %.lr.ph
end_hunk_0
