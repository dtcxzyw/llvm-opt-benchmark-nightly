Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7b647ac9cf118ab3E":bb.a
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.sm, align 8
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit": ; preds = %bb.hv, %bb.ht, %bb.hu, %bb.hy, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.ho, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  ret void

.body:                                            ; preds = %.body.i.i, %bb.gz, %bb.hl
  %eh.lpad-body = phi { ptr, i32 } [ %i.sk, %bb.hl ], [ %.pn.i.i, %.body.i.i ], [ %.pn.i.i, %bb.gz ]
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$core..result..Result$LT$u32$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17h1a51c975e85af8c6E"(ptr %.sroa.0.0, ptr %.sroa.6.0) #44
          to label %common.resume unwind label %bb.hs

bb.hp:                                            ; preds = %bb.hn, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7341af5fad8fe93cE.exit.i"
  %i.sn = phi ptr [ @1991, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7341af5fad8fe93cE.exit.i" ], [ %.sroa.10.i.sroa.0.2, %bb.hn ] ; 7 uses
  %i.so = phi ptr [ %i.si, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7341af5fad8fe93cE.exit.i" ], [ %.sroa.7.2.i, %bb.hn ] ; 7 uses
  %.sroa.047.0 = phi i64 [ 2, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7341af5fad8fe93cE.exit.i" ], [ %.sroa.0.2.i, %bb.hn ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.5)
  store ptr %.sroa.0.0, ptr %i.bm, align 8
  %.sroa.6.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx46, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  store i64 %.sroa.047.0, ptr %i.sp, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.so, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.sn, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1240) %.sroa.9, i64 1240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.not40 = icmp eq ptr %.sroa.0.0, null
  %i.sq = ptrtoint ptr %.sroa.6.0 to i64
  %i.sr = trunc i64 %i.sq to i32
  br i1 %.not40, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.ss = icmp eq i64 %.sroa.047.0, 2
  br i1 %i.ss, label %bb.ht, label %bb.hu

bb.hr:                                            ; preds = %bb.hp
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 3, ptr %.sroa.810.0..sroa_idx, align 8
  %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0, ptr %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx.sroa_idx, align 8
  %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.6.0, ptr %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx.sroa_idx, align 8
  %i.st = icmp eq i64 %.sroa.047.0, 2
  br i1 %i.st, label %bb.hw, label %bb.hv

bb.hs:                                            ; preds = %.body
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

bb.ht:                                            ; preds = %bb.hq
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.6.0..sroa_idx8, align 8
  %.sroa.810.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 3, ptr %.sroa.810.0..sroa_idx11, align 8
  %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.so, ptr %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx11.sroa_idx, align 8
  %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.sn, ptr %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx11.sroa_idx, align 8
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.hu:                                            ; preds = %bb.hq
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1264) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1264) %i.sp, i64 1264, i1 false)
  store i32 %i.sr, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1268) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(1268) %.sroa.4, i64 1268, i1 false)
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.hv:                                            ; preds = %bb.hr
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$meilisearch_types..batches..Batch$GT$17h43d4b40f0b003e81E"(ptr noalias noundef align 8 dereferenceable(1264) %i.sp)
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.hw:                                            ; preds = %bb.hr
  %i.sv = load ptr, ptr %i.sn, align 8, !invariant.load !23 ; 2 uses
  %.not.i45 = icmp eq ptr %i.sv, null
  br i1 %.not.i45, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.so) ]
  invoke void %i.sv(ptr noundef nonnull %i.so)
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sx = load i64, ptr %i.sw, align 8, !range !22, !invariant.load !23 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sz = load i64, ptr %i.sy, align 8, !range !56, !invariant.load !23 ; 2 uses
  %i.ta = icmp ult i64 %i.sz, -9223372036854775807
  call void @llvm.assume(i1 %i.ta)
  %i.tb = icmp eq i64 %i.sx, 0
  br i1 %i.tb, label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.hy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.so) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.so, i64 noundef %i.sx, i64 noundef range(i64 1, -9223372036854775807) %i.sz) #45
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.hz:                                            ; preds = %bb.hx
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.te = load i64, ptr %i.td, align 8, !range !22, !invariant.load !23 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.tg = load i64, ptr %i.tf, align 8, !range !56, !invariant.load !23 ; 2 uses
  %i.th = icmp ult i64 %i.tg, -9223372036854775807
  call void @llvm.assume(i1 %i.th)
  %i.ti = icmp eq i64 %i.te, 0
  br i1 %i.ti, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.hz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.so, i64 noundef %i.te, i64 noundef range(i64 1, -9223372036854775807) %i.tg) #45
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce1d18e695fb1e2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !31, !noundef !23
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4heed6cursor8RoCursor12move_on_next17hd8f15388f5c5c9d6E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 8
  call void @_ZN4heed6cursor8RoCursor13move_on_first17hd2e6b37cf3ea6ed0E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i64, ptr %i.b, align 8, !range !42, !noundef !23
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.h, align 8, !noundef !23 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !23, !align !33, !noundef !23 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN65_$LT$heed_types..str..Str$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17he42bd77d3b770d2fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.l)
  %.not47 = icmp eq i64 %i.p, 16
  br i1 %.not47, label %"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit", label %"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit.thread"

"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit": ; preds = %bb.f, %.thread, %bb.h, %bb.i, %bb.j, %bb.e
  %.sink = phi i64 [ 1, %.thread ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.e ], [ 0, %bb.f ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit": ; preds = %bb.g
  %.sroa.642.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %.sroa.642.1.copyload = load ptr, ptr %.sroa.642.1..sroa_idx, align 1, !alias.scope !2227
  %.sroa.843.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %.sroa.843.1.copyload = load i8, ptr %.sroa.843.1..sroa_idx, align 1, !alias.scope !2227
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.q, label %bb.i, label %bb.h

"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit.thread": ; preds = %bb.g
  %.sroa.0.0.copyload53 = load i64, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload55 = load ptr, ptr %.sroa.4.0..sroa_idx54, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload57 = load i64, ptr %.sroa.6.0..sroa_idx56, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = trunc nuw i64 %.sroa.0.0.copyload53 to i1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.810.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx.sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx.sroa_idx79 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.r, label %bb.j, label %.thread

.thread:                                          ; preds = %"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit.thread"
  store ptr null, ptr %2, align 8
  store i32 3, ptr %.sroa.810.0..sroa_idx77, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx.sroa_idx78, align 8
  store ptr @2419, ptr %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx.sroa_idx79, align 8
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.h:                                             ; preds = %"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit"
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.54.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.n, i64 7, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.s, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store ptr %.sroa.642.1.copyload, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx, align 1
  %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sroa.843.1.copyload, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx, align 1
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.i:                                             ; preds = %"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit"
  %i.t = inttoptr i64 %.sroa.6.0.copyload to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.u, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 3, ptr %.sroa.810.0..sroa_idx, align 8
  %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.4.0.copyload, ptr %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx.sroa_idx, align 8
  %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.t, ptr %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"

bb.j:                                             ; preds = %"_ZN77_$LT$meilitool..uuid_codec..UuidCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h18d4af1ee19e020eE.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload55) ]
  %i.v = inttoptr i64 %.sroa.6.0.copyload57 to ptr
  store ptr null, ptr %2, align 8
  store i32 3, ptr %.sroa.810.0..sroa_idx77, align 8
  store ptr %.sroa.4.0.copyload55, ptr %.sroa.810.sroa.10.0..sroa.810.0..sroa_idx.sroa_idx78, align 8
  store ptr %i.v, ptr %.sroa.810.sroa.12.0..sroa.810.0..sroa_idx.sroa_idx79, align 8
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h3f1b2bb04412e784E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !range !37, !noundef !23
  switch i8 %i.b, label %bb.b [
    i8 22, label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h0195ed00f62ea744E.exit"
    i8 18, label %bb.e
    i8 21, label %bb.c
  ], !prof !58

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h0195ed00f62ea744E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2230, !noundef !23 ; 2 uses
  %i.f = icmp ult i64 %i.e, 144115188075855872
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.h = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h0195ed00f62ea744E.exit"

bb.e:                                             ; preds = %bb.a, %bb.c
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17he3b7c63f856cd5deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h0195ed00f62ea744E.exit"

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h0195ed00f62ea744E.exit": ; preds = %bb.a, %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.c, %bb.b ], [ %i.h, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17hd1ed77451ec30101E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i8, ptr %1, align 8, !range !30, !noundef !23
  switch i8 %i.b, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.f
    i8 14, label %bb.i
    i8 15, label %bb.j
  ], !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h3590f739fe689af3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !23 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h3963c961198518cdE.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !2255
  %i.k = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 1) #45, !noalias !2255 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h3963c961198518cdE.exit"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2598) #46, !noalias !2256
  unreachable

"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h3963c961198518cdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.d
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.f, i64 %i.h, i1 false), !noalias !2257
  store i64 %i.h, ptr %0, align 8, !alias.scope !2254
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2254
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !2254
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !23, !align !33, !noundef !23
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !23 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.f
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h3420d9ca2b458515E.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !2260
  %i.s = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 9) 1) #45, !noalias !2260 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h3420d9ca2b458515E.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2598) #46, !noalias !2261
  unreachable

_ZN10serde_core2de7Visitor18visit_borrowed_str17h3420d9ca2b458515E.exit: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %bb.g
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.n, i64 %i.p, i1 false), !noalias !2262
  store i64 %i.p, ptr %0, align 8, !alias.scope !2263
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !2263
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !2263
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !23, !noundef !23
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !23
  tail call fastcc void @"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h947c1b97af677beaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.v, i64 noundef %i.x)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !23, !align !33, !noundef !23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !23
  tail call fastcc void @"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h947c1b97af677beaE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h3963c961198518cdE.exit", %_ZN10serde_core2de7Visitor18visit_borrowed_str17h3420d9ca2b458515E.exit, %bb.i, %bb.j, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hd0b0d819d7c311b2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = load i8, ptr %1, align 8, !range !30, !noundef !23
  switch i8 %i.m, label %bb.b [
    i8 20, label %bb.c
    i8 21, label %bb.v
  ], !prof !44

bb.b:                                             ; preds = %bb.a
  %i.n = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h3590f739fe689af3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_ZN5serde7private2de7content21visit_content_map_ref17hfccece4041ea38e7E.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !23, !noundef !23 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !23 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  %.idx.i = shl nuw nsw i64 %i.s, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2362
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2363
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbf9de9074496734cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !2364
  %i.w = load i64, ptr %i.j, align 8, !range !29, !noalias !2363, !noundef !23 ; 7 uses
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2365 ; 7 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZN3std4path4Path4join17ha61672c3fe72fa7fE:bb.a
  %.val1 = load i64, ptr %i.b, align 8, !noundef !23
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23393)
  %.val.i.i = load i64, ptr %3, align 8, !alias.scope !23394 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !23394
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23396)
  %.val.i.i2 = load i64, ptr %3, align 8, !alias.scope !23397 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i2, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit4", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !23397
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit4"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit4": ; preds = %bb.d, %bb.e
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3std4sync6poison4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h998e78201da0221fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !35, !noundef !23 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !31, !noundef !23
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17hb376b3c330862d0dE.exit", !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std4sync9lazy_lock14panic_poisoned17h75c251aab0eeacc1E() #46
  unreachable

"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17hb376b3c330862d0dE.exit": ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !23, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !inline_history !23398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @957) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbd542d324aa40437E"() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !31, !noalias !23409, !noundef !23
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i", !prof !24

._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = load i64, ptr %i.a, align 8, !noalias !23410 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !23410
  %i.e = insertvalue { i64, i64 } poison, i64 %.pre.i, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.pre1.i, 1
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i": ; preds = %bb.a
  %i.g = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !23411 ; 3 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !23411
  store i8 1, ptr %i.b, align 8, !noalias !23411
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i", %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i
  %i.k = phi i64 [ %.pre.i, %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i ], [ %i.h, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i" ]
  %.merged = phi { i64, i64 } [ %i.f, %._ZN4core3ops8function6FnOnce9call_once17h6ae074c9f1045747E.exit_crit_edge.i ], [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i" ]
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.a, align 8, !noalias !23410
  ret { i64, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std6thread6scoped5scope17h48f9750427d87a73E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 12 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke noundef nonnull ptr @_ZN3std6thread7current18current_or_unnamed17hfd395f22545be61cE()
          to label %bb.b unwind label %.thread12  ; 2 uses

.thread12:                                        ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.thread8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !23444
  %i.j = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !23444 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.g, !prof !43

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !23445
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %.thread8

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread8 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.sroa.5.0..sroa_idx, i64 80, i1 false)
  %i.p = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.p, ptr %i.a, align 16
  %i.q = invoke fastcc noundef ptr @"_ZN9meilitool7upgrade5v1_1226rebuild_field_distribution28_$u7b$$u7b$closure$u7d$$u7d$17h951b58eaf5afbd24E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.a, ptr nonnull %i.j)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.s)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #47
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23446
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.q, ptr %i.v, align 8
  store ptr null, ptr %i.d, align 8
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.j
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.w = extractvalue { ptr, ptr } %i.t, 0        ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.x, ptr %i.y, align 8
  br label %.preheader

.thread20:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.z = icmp eq ptr %.pre, null
  br i1 %i.z, label %bb.u, label %.thread27

bb.l:                                             ; preds = %.preheader, %bb.n
  %i.aa = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.d, align 8, !noundef !23 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  invoke void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
          to label %bb.l unwind label %.thread20

bb.o:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !23, !align !35, !noundef !23
  invoke void @_ZN3std5panic13resume_unwind17h2d709c6114152f03E(ptr noundef nonnull align 1 %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai) #46
          to label %bb.t unwind label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load atomic i8, ptr %i.ak monotonic, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.q, label %bb.s, !prof !24

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ap = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !23447
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %"_ZN4core3ptr47drop_in_place$LT$std..thread..scoped..Scope$GT$17hcdb834ded7a9b650E.exit"

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbfbb7d711b1d7fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %"_ZN4core3ptr47drop_in_place$LT$std..thread..scoped..Scope$GT$17hcdb834ded7a9b650E.exit"

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @963, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.au, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3019) #46
          to label %bb.t unwind label %.thread31

.thread31:                                        ; preds = %bb.s
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

"_ZN4core3ptr47drop_in_place$LT$std..thread..scoped..Scope$GT$17hcdb834ded7a9b650E.exit": ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.ao

bb.t:                                             ; preds = %bb.s, %bb.o
  unreachable

bb.u:                                             ; preds = %.thread31, %.thread20
  %lpad.phi26 = phi { ptr, i32 } [ %lpad.loopexit, %.thread20 ], [ %lpad.loopexit.split-lp32, %.thread31 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !23448, !noundef !23
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hf449d51980abb73cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit" unwind label %bb.x

bb.w:                                             ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit"

bb.x:                                             ; preds = %bb.y, %bb.v, %.thread27, %.thread8
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit": ; preds = %bb.w, %bb.u, %bb.v, %.thread27
  %lpad.phi24 = phi { ptr, i32 } [ %lpad.phi26, %bb.u ], [ %lpad.phi26, %bb.v ], [ %lpad.loopexit, %.thread27 ], [ %lpad.loopexit.split-lp, %bb.w ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23449)
  call void @llvm.experimental.noalias.scope.decl(metadata !23450)
  call void @llvm.experimental.noalias.scope.decl(metadata !23451)
  %i.az = load ptr, ptr %i.e, align 8, !alias.scope !23452, !nonnull !23, !noundef !23
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !23452
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.y, label %.thread

bb.y:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbfbb7d711b1d7fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.thread unwind label %bb.x

.thread27:                                        ; preds = %.thread20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val17 = load ptr, ptr %i.bc, align 8, !nonnull !23, !align !35, !noundef !23
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hfc5cfc3b7e8a5405E"(ptr nonnull %.pre, ptr nonnull %.val17) #44
          to label %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit" unwind label %bb.x

.thread:                                          ; preds = %bb.y, %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit", %.thread8
  %.pn7 = phi { ptr, i32 } [ %lpad.phi24, %bb.y ], [ %eh.lpad-body11, %.thread8 ], [ %lpad.phi24, %"_ZN4core3ptr73drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$17hb9669cc86fab2a16E.exit" ]
  resume { ptr, i32 } %.pn7

.thread8:                                         ; preds = %bb.d, %bb.e, %.thread12
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.g, %.thread12 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$meilitool..upgrade..v1_12..rebuild_field_distribution..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd0f1e3e5d68e57a8E"(ptr noalias noundef align 8 dereferenceable(96) %0) #44
          to label %.thread unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN3tar7builder16Builder$LT$W$GT$6finish17ha23864bcae93e7dfE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !range !31, !noundef !23
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN3std2io5Write9write_all17hcf329d865592c0d0E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 4
  %i.e = load i64, ptr %0, align 8, !range !29, !noundef !23
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %bb.l, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.sroa.0.042.i = phi ptr [ @972, %bb.c ], [ %.sroa.0.116.i, %bb.k ] ; 3 uses
  %.sroa.5.041.i = phi i64 [ 1024, %bb.c ], [ %.sroa.5.114.i, %bb.k ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23456
  %i.g = tail call { i64, ptr } @"_ZN72_$LT$flate2..gz..write..GzEncoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h682df2dbb5a39a8bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i, i64 noundef %.sroa.5.041.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 11 uses
  store i64 %i.h, ptr %i.a, align 8, !noalias !23456
  store ptr %i.i, ptr %i.f, align 8, !noalias !23456
  %i.j = trunc nuw i64 %i.h to i1
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.j
    i64 0, label %.split36.i
    i64 1, label %.split35.i
  ], !prof !27

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.i, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ult i64 %.sroa.5.041.i, %i.k
  br i1 %i.n, label %.noexc.i, label %bb.i, !prof !26

.noexc.i:                                         ; preds = %bb.g
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.k, i64 noundef %.sroa.5.041.i, i64 noundef %.sroa.5.041.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @940) #46
  unreachable

bb.h:                                             ; preds = %bb.j, %.split35.i, %.split36.i, %.split.i, %bb.f
  %.sroa.05.1.i = phi ptr [ @939, %bb.f ], [ %i.i, %.split36.i ], [ %i.i, %.split35.i ], [ %i.i, %.split.i ], [ %i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23456
  br label %_ZN3std2io5Write9write_all17hcf329d865592c0d0E.exit

bb.i:                                             ; preds = %bb.g
  %i.o = sub nuw nsw i64 %.sroa.5.041.i, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 %i.k
  br label %bb.k
end_hunk_1
begin_hunk_2_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ace59c3f5e2a7e0E":bb.a
  br i1 %i.j, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d0693d362502953E.exit", label %.lr.ph.i.i.i

"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d0693d362502953E.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23504
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d60f45d00066ebbE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !33, !noundef !23
  %.val = load i8, ptr %i.a, align 1, !range !57, !noundef !23 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d60f45d00066ebbE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d60f45d00066ebbE.3081", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f25f5ec510d7183E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23514
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23515
  %.idx.i.i = mul nuw nsw i64 %.val1, 24
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.g = icmp eq i64 %.val1, 0
  br i1 %i.g, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h914ae4170f3b1e22E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23516
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !23516
  %i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1013) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23516
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h914ae4170f3b1e22E.exit", label %.lr.ph.i.i.i

"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h914ae4170f3b1e22E.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23514
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1004d577ac47bd81E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23
  %.val = load ptr, ptr %i.b, align 8, !nonnull !23, !align !35, !noundef !23 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23522
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store ptr %i.d, ptr %i.a, align 8, !noalias !23522
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2355, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2356, i64 noundef 3, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2352, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2357, i64 noundef 14, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2353, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2358, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2354)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23522
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h12946834111768cdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23
  %.val = load ptr, ptr %i.i, align 8, !nonnull !23, !align !35, !noundef !23 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23528)
  %i.j = load i64, ptr %.val, align 8, !range !96, !alias.scope !23528, !noalias !23529, !noundef !23 ; 3 uses
  %i.k = icmp ne i64 %i.j, -9223372036854775798
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i64 %i.j, 9223372036854775803
  %i.m = icmp ugt i64 %i.j, -9223372036854775804
  %i.n = select i1 %i.m, i64 %i.l, i64 5
  switch i64 %i.n, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23530
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 80
  store ptr %i.p, ptr %i.h, align 8, !noalias !23530
  %i.q = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1332, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull readonly align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @636, i64 noundef 5, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23530
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 80
  store ptr %i.s, ptr %i.g, align 8, !noalias !23530
  %i.t = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1334, i64 noundef 21, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull readonly align 1 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @636, i64 noundef 5, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23530
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %i.u, ptr %i.f, align 8, !noalias !23530
  %i.v = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1335, i64 noundef 27, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23530
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %i.w, ptr %i.e, align 8, !noalias !23530
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1336, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23530
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %i.y, ptr %i.d, align 8, !noalias !23530
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1337, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23530
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 144
  store ptr %i.ab, ptr %i.c, align 8, !noalias !23530
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1338, i64 noundef 23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull readonly align 8 dereferenceable(216) %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @525, i64 noundef 3, ptr noundef nonnull readonly align 1 %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1339, i64 noundef 3, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23530
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 80
  store ptr %i.ae, ptr %i.b, align 8, !noalias !23530
  %i.af = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1340, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull readonly align 1 %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @636, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

bb.j:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23530
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 80
  store ptr %i.ah, ptr %i.a, align 8, !noalias !23530
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1341, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 11, ptr noundef nonnull readonly align 1 %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @636, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @997)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23530
  br label %"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit"

"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda5f7fe17f5f9bd9E.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.in.i.i = phi i1 [ %i.q, %bb.c ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h12f96e966a637434E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !23 ; 2 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.i = icmp samesign eq i64 %.val1, 0
  br i1 %i.i, label %"_ZN76_$LT$rustls..msgs..base..PayloadU16$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d2351be5ca6183eE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i.i": ; preds = %bb.a
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i.i": ; preds = %bb.c, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i.i"
  %.sroa.0.09.i.i = phi ptr [ %.val, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i.i" ], [ %i.k, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.09.i.i, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hb17afc92072fe9c7E", ptr %.sroa.45.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23533
  store ptr @217, ptr %i.a, align 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  store ptr @994, ptr %.sroa.10.0..sroa_idx.i.i, align 8
  store i64 1, ptr %.sroa.11.0..sroa_idx.i.i, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !23533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23533
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN76_$LT$rustls..msgs..base..PayloadU16$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d2351be5ca6183eE.exit"

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %"_ZN76_$LT$rustls..msgs..base..PayloadU16$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d2351be5ca6183eE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i.i"

"_ZN76_$LT$rustls..msgs..base..PayloadU16$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d2351be5ca6183eE.exit": ; preds = %bb.c, %bb.a, %bb.b
  %.not7.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not7.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h132d67b46d20a1f3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23537
  store ptr %i.b, ptr %i.a, align 8, !noalias !23537
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1447, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2161, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1008)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23537
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h15440e4e913efe29E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23
  %.val = load ptr, ptr %i.b, align 8, !nonnull !23, !align !35, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23543
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %i.c, ptr %i.a, align 8, !noalias !23543
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1724, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @256, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1211, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2554, i64 noundef 14, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1502)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23543
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h15f283ee934ae26cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !23, !align !35, !noundef !23 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23547)
  %i.j = load i64, ptr %i.i, align 8, !range !68, !alias.scope !23547, !noundef !23 ; 3 uses
  %i.k = icmp ne i64 %i.j, -9223372036854775792
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.j, -9223372036854775808
  %i.m = icmp slt i64 %i.j, 0
  %i.n = select i1 %i.m, i64 %i.l, i64 16
  switch i64 %i.n, label %bb.b [
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
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1893, i64 noundef 11), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.d:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1894, i64 noundef 7), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23548
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.r, ptr %i.h, align 8, !noalias !23548
  %i.s = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1897, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @238, i64 noundef 4, ptr noundef nonnull readonly align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1895, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1898, i64 noundef 9, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1896)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23548
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.f:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1899, i64 noundef 11), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23548
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.v, ptr %i.g, align 8, !noalias !23548
  %i.w = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1900, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @238, i64 noundef 4, ptr noundef nonnull readonly align 1 %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1895, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1901, i64 noundef 10, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1896)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23548
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.h:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1902, i64 noundef 7), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.i:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1903, i64 noundef 26), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.j:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1904, i64 noundef 13), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.k:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1905, i64 noundef 23), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.l:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1906, i64 noundef 21), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.m:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23548
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ad, ptr %i.f, align 8, !noalias !23548
  %i.ae = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1907, i64 noundef 28, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @238, i64 noundef 4, ptr noundef nonnull readonly align 1 %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1895, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1908, i64 noundef 11, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1896)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23548
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.n:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1909, i64 noundef 12), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.o:                                             ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1910, i64 noundef 29), !noalias !23547
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.p:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23548
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.ai, ptr %i.e, align 8, !noalias !23548
  %i.aj = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1913, i64 noundef 36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1914, i64 noundef 22, ptr noundef nonnull readonly align 1 %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1911, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1915, i64 noundef 20, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23548
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

bb.q:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23548
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.al, ptr %i.d, align 8, !noalias !23548
  %i.am = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1916, i64 noundef 48, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1914, i64 noundef 22, ptr noundef nonnull readonly align 1 %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1911, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1917, i64 noundef 23, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1666)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23548
  br label %"_ZN68_$LT$rustls..error..CertificateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc07c6ab858b3487E.exit"

end_hunk_2
begin_hunk_3_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h43dde139eb27e2bdE":bb.a
  %.sroa.7.031 = phi ptr [ %.sroa.524.0.copyload.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h80494d58e460fbd1E.exit.thread32" ], [ %.val.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h80494d58e460fbd1E.exit" ], [ %.sroa.0.0.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17ha9272f77cf82acf4E.exit.i" ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %.sroa.14.030 = phi i64 [ %i.aj, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h80494d58e460fbd1E.exit.thread32" ], [ %i.ah, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h80494d58e460fbd1E.exit" ], [ %.sroa.8.0.i.i.i59, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17ha9272f77cf82acf4E.exit.i" ], [ %.sroa.8.0.i.i.i59, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.031) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.7.031, i64 276
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.14.030
  %i.an = zext i1 %2 to i8
  store i8 %i.an, ptr %i.am, align 1
  br label %bb.bd

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h80494d58e460fbd1E.exit.thread32"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !38517
  %i.ao = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !38517 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #46
          to label %.noexc.i unwind label %bb.bb, !noalias !38517

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.ao, align 8, !noalias !38517
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 274
  store ptr %i.ao, ptr %0, align 8, !noalias !38517
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8, !noalias !38517
  store i16 1, ptr %i.aq, align 2, !noalias !38518
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.as, align 8, !noalias !38519
  %.sroa.518.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.518.0..sroa_idx19.i, align 8, !noalias !38519
  %.sroa.6.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx21.i, align 8, !noalias !38519
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 276
  %i.au = zext i1 %2 to i8
  store i8 %i.au, ptr %i.at, align 4, !noalias !38518
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit"

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h80494d58e460fbd1E.exit"
  %.sink63.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sink63.i.sroa.gep121.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sink62.i.sroa.gep123.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38520
  %i.av = icmp ugt i16 %i.l, 10
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !38521
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.ax, align 8, !noalias !38521
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.aw, label %.invoke.i.i.i, label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38522)
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.m
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.4.0.i.ph.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not, label %bb.n, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i: ; preds = %bb.m
  store i64 %.sroa.037.0.copyload.i, ptr %i.az, align 8, !alias.scope !38523, !noalias !38524
  %.sroa.934.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx37.i.i, align 8, !alias.scope !38523, !noalias !38524
  %.sroa.1143.0..sroa_idx46.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx46.i.i, align 8, !alias.scope !38523, !noalias !38524
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.ba = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.ba
  %i.bc = sub nuw nsw i64 %i.m, %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.az, i64 %i.bd, i1 false), !alias.scope !38525, !noalias !38526
  store i64 %.sroa.037.0.copyload.i, ptr %i.az, align 8, !alias.scope !38523, !noalias !38524
  %.sroa.934.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx35.i.i, align 8, !alias.scope !38523, !noalias !38524
  %.sroa.1143.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx44.i.i, align 8, !alias.scope !38523, !noalias !38524
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 276 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.4.0.i.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 1 %i.bf, i64 %i.bc, i1 false), !alias.scope !38527, !noalias !38526
  br label %.thread.i.i

bb.o:                                             ; preds = %bb.l
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.p [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.q
  ]

.invoke.i.i.i:                                    ; preds = %bb.o, %bb.l
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.o ], [ 4, %bb.l ]
  store i64 %.sink.i.i.i, ptr %i.ay, align 8, !noalias !38521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38521
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hce16021b6f362754E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !38521

bb.p:                                             ; preds = %bb.o
  store i64 6, ptr %i.ay, align 8, !noalias !38521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38521
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hce16021b6f362754E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.u, !noalias !38521

bb.q:                                             ; preds = %bb.o
  store i64 5, ptr %i.ay, align 8, !noalias !38521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38521
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hce16021b6f362754E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !38521

bb.r:                                             ; preds = %bb.p
  %i.bh = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.invoke.i.i.i
  %.sink63.i.sroa.phi.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink63.i.sroa.gep121.i.i, %bb.q ], [ %.sink63.i.sroa.gep121.i.i, %bb.r ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i ], [ 0, %bb.q ], [ %i.bh, %bb.r ] ; 6 uses
  %i.bi = load ptr, ptr %.sink63.i.sroa.phi.i.i, align 8, !noalias !38521, !nonnull !23, !noundef !23 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 274 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !38528, !noundef !23 ; 2 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38529)
  %.not.i41.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.bl
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.10.0.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i, label %bb.t, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i: ; preds = %bb.s
  store i64 %.sroa.037.0.copyload.i, ptr %i.bn, align 8, !alias.scope !38530, !noalias !38531
  %.sroa.934.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx39.i.i, align 8, !alias.scope !38530, !noalias !38531
  %.sroa.1143.0..sroa_idx48.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx48.i.i, align 8, !alias.scope !38530, !noalias !38531
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bo = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = sub nuw nsw i64 %i.bl, %.sroa.10.0.i.i.i ; 2 uses
  %i.br = mul nuw nsw i64 %i.bq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %i.bn, i64 %i.br, i1 false), !alias.scope !38532, !noalias !38528
  store i64 %.sroa.037.0.copyload.i, ptr %i.bn, align 8, !alias.scope !38530, !noalias !38531
  %.sroa.934.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx41.i.i, align 8, !alias.scope !38530, !noalias !38531
  %.sroa.1143.0..sroa_idx50.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx50.i.i, align 8, !alias.scope !38530, !noalias !38531
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 276 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.10.0.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %i.bt, i64 %i.bq, i1 false), !alias.scope !38533, !noalias !38528
  br label %bb.w

.thread.i.i:                                      ; preds = %bb.n, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 276
  %i.bw = add nuw nsw i16 %i.l, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.4.0.i.ph.i.i
  %i.by = zext i1 %2 to i8
  store i8 %i.by, ptr %i.bx, align 1, !alias.scope !38527, !noalias !38526
  store i16 %i.bw, ptr %i.ag, align 2, !noalias !38526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38520
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit"

bb.u:                                             ; preds = %bb.q, %bb.p, %.invoke.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = icmp eq i64 %.sroa.037.0.copyload.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.sroa.037.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38534
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

bb.w:                                             ; preds = %bb.t, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 276
  %i.cc = add i16 %i.bk, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.10.0.i.i.i
  %i.ce = zext i1 %2 to i8
  store i8 %i.ce, ptr %i.cd, align 1, !alias.scope !38533, !noalias !38528
  store i16 %i.cc, ptr %i.bj, align 2, !noalias !38528
  %.sroa.019.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !38535 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !38535 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38535 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38535 ; 2 uses
  %.sroa.722.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i, align 8, !noalias !38535 ; 3 uses
  %.sroa.823.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i, align 8, !noalias !38535
  %.sroa.924.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep121.i.i, align 8, !noalias !38535 ; 3 uses
  %.sroa.1025.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep123.i.i, align 8, !noalias !38535 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38520
  %.not.i.i = icmp eq i64 %.sroa.019.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.722.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.924.0.copyload.i.i) ]
  %i.cf = load ptr, ptr %.sroa.722.0.copyload.i.i, align 8, !noalias !38536, !noundef !23 ; 2 uses
  %.not.i197.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i197.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.859.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.862.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.965.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.1171.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.ai

._crit_edge.i.i:                                  ; preds = %bb.az, %bb.x
  %.sroa.20.0.lcssa.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i, %bb.x ], [ %.sroa.1171.0.copyload73.i.i, %bb.az ]
  %.sroa.16.0.lcssa.i.i = phi ptr [ %.sroa.924.0.copyload.i.i, %bb.x ], [ %.sroa.1068.0.i.i, %bb.az ] ; 3 uses
  %.sroa.913.0.lcssa.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i, %bb.x ], [ %.sroa.859.sroa.7.0.i.i, %bb.az ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.x ], [ %.sroa.859.sroa.6.0.i.i, %bb.az ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.x ], [ %.sroa.859.sroa.0.0.i.i, %bb.az ] ; 5 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.019.0.copyload.i.i, %bb.x ], [ %.sroa.056.0.i.i, %bb.az ] ; 5 uses
  %i.cj = load ptr, ptr %0, align 8, !noalias !38537, !noundef !23 ; 4 uses
  %.not.i19.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i19.i.i, label %bb.y, label %bb.aa, !prof !26

bb.y:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1364) #46
          to label %bb.z unwind label %bb.ag, !noalias !38537

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38538)
  %i.ck = load i64, ptr %i.f, align 8, !alias.scope !38538, !noalias !38537, !noundef !23 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !38539
  %i.cl = tail call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !38539 ; 12 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ab, label %bb.ad, !prof !26

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #46
          to label %.noexc.i.i.i.i unwind label %bb.ac, !noalias !38539

.noexc.i.i.i.i:                                   ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.aa
  store ptr null, ptr %i.cl, align 8, !noalias !38539
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 274 ; 2 uses
  store i16 0, ptr %i.co, align 2, !noalias !38539
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 288
  store ptr %i.cj, ptr %i.cp, align 8, !noalias !38539
  %i.cq = add i64 %i.ck, 1
  store ptr %i.cl, ptr %i.cj, align 8, !noalias !38540
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  store i16 0, ptr %i.cr, align 8, !noalias !38541
  store ptr %i.cl, ptr %0, align 8, !alias.scope !38538, !noalias !38537
  store i64 %i.cq, ptr %i.f, align 8, !alias.scope !38538, !noalias !38537
  %i.cs = icmp eq i64 %.sroa.20.0.lcssa.i.i, %i.ck
  br i1 %i.cs, label %bb.ba, label %.invoke.i.i.i.i, !prof !24

.invoke.i.i.i.i:                                  ; preds = %bb.ad
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1366, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #46
          to label %.cont.i.i.i.i unwind label %bb.ae, !noalias !38542

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ae:                                            ; preds = %.invoke.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38543
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

bb.ag:                                            ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38544
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

bb.ai:                                            ; preds = %bb.az, %.lr.ph.i.i
  %i.cx = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.jt, %bb.az ] ; 13 uses
  %.sroa.03.0205.i.i = phi i64 [ %.sroa.019.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.056.0.i.i, %bb.az ] ; 8 uses
  %.sroa.8.0204.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.859.sroa.0.0.i.i, %bb.az ] ; 8 uses
  %.sroa.9.0203.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.859.sroa.6.0.i.i, %bb.az ] ; 6 uses
  %.sroa.913.0202.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.859.sroa.7.0.i.i, %bb.az ] ; 6 uses
  %.sroa.1016.0201.i.i = phi ptr [ %.sroa.722.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.862.0.i.i, %bb.az ]
  %.sroa.13.0200.i.i = phi i64 [ %.sroa.823.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.965.0.i.i, %bb.az ] ; 2 uses
  %.sroa.16.0199.i.i = phi ptr [ %.sroa.924.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1068.0.i.i, %bb.az ] ; 3 uses
  %.sroa.20.0198.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1171.0.copyload73.i.i, %bb.az ]
  %i.cy = add i64 %.sroa.13.0200.i.i, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.1016.0201.i.i, i64 272
  %i.da = load i16, ptr %i.cz, align 8, !noalias !38536 ; 5 uses
  %i.db = zext i16 %i.da to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38520
  %i.dc = icmp eq i64 %.sroa.20.0198.i.i, %.sroa.13.0200.i.i
  br i1 %i.dc, label %bb.ak, label %bb.aj, !prof !24

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1372, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1373) #46
          to label %bb.al unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !38545

bb.ak:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 274
  %i.de = load i16, ptr %i.dd, align 2, !noalias !38545, !noundef !23 ; 4 uses
  %i.df = icmp ult i16 %i.de, 11
  br i1 %i.df, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.dg = icmp ult i16 %i.da, 5
  store ptr %i.cx, ptr %i.b, align 8, !noalias !38545
  store i64 %i.cy, ptr %i.cg, align 8, !noalias !38545
  br i1 %i.dg, label %.invoke.i29.i.i, label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 274
  %i.di = zext nneg i16 %i.de to i64              ; 4 uses
  %i.dj = add nuw nsw i16 %i.de, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38546)
  %i.dl = add nuw nsw i64 %i.db, 1                ; 7 uses
  %.not.i.i31.not.i.i = icmp ult i16 %i.da, %i.de
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.db ; 7 uses
  br i1 %.not.i.i31.not.i.i, label %bb.ao, label %_ZN5alloc11collections5btree4node12slice_insert17h19b108db26e22679E.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h19b108db26e22679E.exit.i.i.i.i: ; preds = %bb.an
  store i64 %.sroa.03.0205.i.i, ptr %i.dm, align 8, !alias.scope !38547, !noalias !38548
  %.sroa.1180.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx89.i.i, align 8, !alias.scope !38547, !noalias !38548
  %.sroa.14.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx99.i.i, align 8, !alias.scope !38547, !noalias !38548
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 276
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.db
  store i8 %.sroa.913.0202.i.i, ptr %i.do, align 1, !alias.scope !38549, !noalias !38550
  br label %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dl
  %i.dq = sub nuw nsw i64 %i.di, %i.db            ; 3 uses
  %i.dr = mul nuw nsw i64 %i.dq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.dm, i64 %i.dr, i1 false), !alias.scope !38551, !noalias !38550
  store i64 %.sroa.03.0205.i.i, ptr %i.dm, align 8, !alias.scope !38547, !noalias !38548
  %.sroa.1180.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx87.i.i, align 8, !alias.scope !38547, !noalias !38548
  %.sroa.14.0..sroa_idx97.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx97.i.i, align 8, !alias.scope !38547, !noalias !38548
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 276 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.db ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.dt, i64 %i.dq, i1 false), !alias.scope !38549, !noalias !38550
  store i8 %.sroa.913.0202.i.i, ptr %i.dt, align 1, !alias.scope !38549, !noalias !38550
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 288 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dl
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.db
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = shl nuw nsw i64 %i.dq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dw, i64 %i.dz, i1 false), !alias.scope !38552, !noalias !38550
  br label %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i.i.i.i: ; preds = %bb.ao, %_ZN5alloc11collections5btree4node12slice_insert17h19b108db26e22679E.exit.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 288 ; 6 uses
  %i.eb = add nuw nsw i64 %i.di, 2                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dl
  store ptr %.sroa.16.0199.i.i, ptr %i.ec, align 8, !alias.scope !38552, !noalias !38550
  store i16 %i.dj, ptr %i.dh, align 2, !noalias !38550
  %i.ed = icmp samesign ult i64 %i.dl, %i.eb
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.preheader, label %.thread142.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i.i.i.i
  %i.ee = add nuw nsw i64 %i.di, 1
  %i.ef = sub nsw i64 %i.ee, %i.db
  %i.eg = sub nsw i64 %i.di, %i.db
  %xtraiter125 = and i64 %i.ef, 3                 ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dl, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
end_hunk_3
begin_hunk_4_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h43dde139eb27e2bdE":bb.a
  store ptr %i.fj, ptr %i.gu, align 8, !noalias !38561
  %i.gv = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 272
  store i16 %i.gv, ptr %i.gw, align 8, !noalias !38561
  %i.gx = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gs
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !38560, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fj, ptr %i.gz, align 8, !noalias !38561
  %i.ha = trunc nuw nsw i64 %i.gs to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 272
  store i16 %i.ha, ptr %i.hb, align 8, !noalias !38561
  %i.hc = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gx
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !38560, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fj, ptr %i.he, align 8, !noalias !38561
  %i.hf = trunc nuw nsw i64 %i.gx to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 272
  store i16 %i.hf, ptr %i.hg, align 8, !noalias !38561
  %i.hh = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 4 ; 2 uses
  %i.hi = icmp ult i64 %.sroa.0.06.i.i44.i.i.i, 9
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hc
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !38560, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fj, ptr %i.hk, align 8, !noalias !38561
  %i.hl = trunc nuw nsw i64 %i.hc to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 272
  store i16 %i.hl, ptr %i.hm, align 8, !noalias !38561
  %exitcond.not.i.i45.i.i.i.3 = icmp eq i64 %i.hh, %i.gf
  br i1 %exitcond.not.i.i45.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i", label %.lr.ph.i.i43.i.i.i

bb.au:                                            ; preds = %bb.aw, %bb.ar
  %.sroa.10.1.i.i.i = phi i64 [ %i.jr, %bb.aw ], [ 0, %bb.ar ] ; 9 uses
  %i.hn = load ptr, ptr %i.ci, align 8, !noalias !38545, !nonnull !23, !noundef !23 ; 12 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 274 ; 2 uses
  %i.hp = load i16, ptr %i.ho, align 2, !noalias !38562, !noundef !23 ; 2 uses
  %i.hq = zext i16 %i.hp to i64                   ; 5 uses
  %i.hr = add i16 %i.hp, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.ht = add nuw nsw i64 %.sroa.10.1.i.i.i, 1    ; 7 uses
  %.not.i48.not.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i, %i.hq
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %.sroa.10.1.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i, label %bb.av, label %_ZN5alloc11collections5btree4node12slice_insert17h19b108db26e22679E.exit.i49.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h19b108db26e22679E.exit.i49.i.i.i: ; preds = %bb.au
  store i64 %.sroa.03.0205.i.i, ptr %i.hu, align 8, !noalias !38556
  %.sroa.1180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx.i.i, align 8, !noalias !38556
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !38556
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 276
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.10.1.i.i.i
  store i8 %.sroa.913.0202.i.i, ptr %i.hw, align 1, !alias.scope !38563, !noalias !38562
  br label %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i50.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ht
  %i.hy = sub nuw nsw i64 %i.hq, %.sroa.10.1.i.i.i ; 3 uses
  %i.hz = mul nuw nsw i64 %i.hy, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %i.hu, i64 %i.hz, i1 false), !alias.scope !38564, !noalias !38562
  store i64 %.sroa.03.0205.i.i, ptr %i.hu, align 8, !noalias !38556
  %.sroa.1180.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx81.i.i, align 8, !noalias !38556
  %.sroa.14.0..sroa_idx91.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx91.i.i, align 8, !noalias !38556
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 276 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.10.1.i.i.i ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ht
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull align 1 %i.ib, i64 %i.hy, i1 false), !alias.scope !38563, !noalias !38562
  store i8 %.sroa.913.0202.i.i, ptr %i.ib, align 1, !alias.scope !38563, !noalias !38562
  %i.id = getelementptr inbounds nuw i8, ptr %i.hn, i64 288 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ht
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.sroa.10.1.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = shl nuw nsw i64 %i.hy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %i.ie, i64 %i.ih, i1 false), !alias.scope !38565, !noalias !38562
  br label %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i50.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i50.i.i.i: ; preds = %bb.av, %_ZN5alloc11collections5btree4node12slice_insert17h19b108db26e22679E.exit.i49.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hn, i64 288 ; 6 uses
  %i.ij = add nuw nsw i64 %i.hq, 2                ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ht
  store ptr %.sroa.16.0199.i.i, ptr %i.ik, align 8, !alias.scope !38565, !noalias !38562
  store i16 %i.hr, ptr %i.ho, align 2, !noalias !38562
  %i.il = icmp samesign ult i64 %i.ht, %i.ij
  br i1 %i.il, label %.lr.ph.i.i51.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i"

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i50.i.i.i
  %i.im = add nuw nsw i64 %i.hq, 1
  %i.in = sub nsw i64 %i.im, %.sroa.10.1.i.i.i
  %i.io = sub nsw i64 %i.hq, %.sroa.10.1.i.i.i
  %xtraiter = and i64 %i.in, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.prol

.lr.ph.i.i51.i.i.i.prol:                          ; preds = %.lr.ph.i.i51.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.prol = phi i64 [ %i.ip, %.lr.ph.i.i51.i.i.i.prol ], [ %i.ht, %.lr.ph.i.i51.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.preheader ]
  %i.ip = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.prol, 1 ; 2 uses
  %i.iq = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.0.06.i.i52.i.i.i.prol
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !38566, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hn, ptr %i.is, align 8, !noalias !38567
  %i.it = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.prol to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 272
  store i16 %i.it, ptr %i.iu, align 8, !noalias !38567
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.prol, !llvm.loop !38497

.lr.ph.i.i51.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i51.i.i.i.prol, %.lr.ph.i.i51.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph.i.i51.i.i.i.preheader ], [ %i.ip, %.lr.ph.i.i51.i.i.i.prol ]
  %i.iv = icmp ult i64 %i.io, 3
  br i1 %i.iv, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i", label %.lr.ph.i.i51.i.i.i

.lr.ph.i.i51.i.i.i:                               ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i
  %.sroa.0.06.i.i52.i.i.i = phi i64 [ %i.jl, %.lr.ph.i.i51.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ] ; 7 uses
  %i.iw = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.0.06.i.i52.i.i.i
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !38566, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hn, ptr %i.iy, align 8, !noalias !38567
  %i.iz = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i to i16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 272
  store i16 %i.iz, ptr %i.ja, align 8, !noalias !38567
  %i.jb = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 2 ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.iw
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !38566, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hn, ptr %i.jd, align 8, !noalias !38567
  %i.je = trunc nuw nsw i64 %i.iw to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 272
  store i16 %i.je, ptr %i.jf, align 8, !noalias !38567
  %i.jg = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jb
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !38566, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hn, ptr %i.ji, align 8, !noalias !38567
  %i.jj = trunc nuw nsw i64 %i.jb to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 272
  store i16 %i.jj, ptr %i.jk, align 8, !noalias !38567
  %i.jl = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 4 ; 2 uses
  %i.jm = icmp ult i64 %.sroa.0.06.i.i52.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jg
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !38566, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hn, ptr %i.jo, align 8, !noalias !38567
  %i.jp = trunc nuw nsw i64 %i.jg to i16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 272
  store i16 %i.jp, ptr %i.jq, align 8, !noalias !38567
  %exitcond.not.i.i53.i.i.i.3 = icmp eq i64 %i.jl, %i.ij
  br i1 %exitcond.not.i.i53.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i", label %.lr.ph.i.i51.i.i.i

bb.aw:                                            ; preds = %bb.aq
  %i.jr = add nsw i64 %i.db, -7
  br label %bb.au

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i50.i.i.i
  %.sroa.859.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.859.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.859.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.862.0.copyload.i.i = load ptr, ptr %.sroa.862.0..sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.965.0.copyload.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i, align 8, !noalias !38568
  br label %bb.ay

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i42.i.i.i
  %.sroa.859.sroa.0.0.copyload118.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.859.sroa.6.0.copyload119.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.859.sroa.7.0.copyload120.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.965.0.copyload67.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i, align 8, !noalias !38568
  %.sroa.1068.0.copyload70.i.i = load ptr, ptr %i.ci, align 8, !noalias !38568
  br label %bb.ay

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i, %bb.aq, %bb.ar, %bb.aj
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = icmp eq i64 %.sroa.03.0205.i.i, 0
  br i1 %i.js, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0204.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0204.i.i, i64 noundef %.sroa.03.0205.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38569
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

.thread142.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hb5aa24528e9c210eE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38520
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit"

bb.ay:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i"
  %.sroa.1068.0.i.i = phi ptr [ %i.hn, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i" ], [ %.sroa.1068.0.copyload70.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i" ] ; 3 uses
  %.sroa.965.0.i.i = phi i64 [ %.sroa.965.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i" ], [ %.sroa.965.0.copyload67.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i" ]
  %.sroa.862.0.i.i = phi ptr [ %.sroa.862.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i" ], [ %i.fj, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i" ] ; 3 uses
  %.sroa.859.sroa.0.0.i.i = phi ptr [ %.sroa.859.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i" ], [ %.sroa.859.sroa.0.0.copyload118.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.6.0.i.i = phi i64 [ %.sroa.859.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i" ], [ %.sroa.859.sroa.6.0.copyload119.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.7.0.i.i = phi i8 [ %.sroa.859.sroa.7.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit55.i.i.i" ], [ %.sroa.859.sroa.7.0.copyload120.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb0a798571839d970E.exit47.i.i.i" ] ; 2 uses
  %.sroa.056.0.i.i = load i64, ptr %i.a, align 8, !noalias !38568 ; 3 uses
  %.sroa.1171.0.copyload73.i.i = load i64, ptr %.sroa.1171.0..sroa_idx.i.i, align 8, !noalias !38568 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38520
  %.not16.i.i = icmp eq i64 %.sroa.056.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.862.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1068.0.i.i) ]
  %i.jt = load ptr, ptr %.sroa.862.0.i.i, align 8, !noalias !38536, !noundef !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.ai

bb.ba:                                            ; preds = %bb.ad
  store i16 1, ptr %i.co, align 2, !noalias !38542
  %i.ju = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.03.0.lcssa.i.i, ptr %i.ju, align 8, !noalias !38537
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.sroa.8.0.lcssa.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !38537
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !38537
  %i.jv = getelementptr inbounds nuw i8, ptr %i.cl, i64 276
  store i8 %.sroa.913.0.lcssa.i.i, ptr %i.jv, align 4, !noalias !38542
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cl, i64 296
  store ptr %.sroa.16.0.lcssa.i.i, ptr %i.jw, align 8, !noalias !38542
  store ptr %i.cl, ptr %.sroa.16.0.lcssa.i.i, align 8, !noalias !38570
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i, i64 272
  store i16 1, ptr %i.jx, align 8, !noalias !38570
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i": ; preds = %bb.bc, %bb.bb, %bb.ax, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.v, %bb.u
  %.pn30.i = phi { ptr, i32 } [ %i.jy, %bb.bc ], [ %i.jy, %bb.bb ], [ %lpad.loopexit.split-lp63, %bb.ax ], [ %i.ct, %bb.af ], [ %i.ct, %bb.ae ], [ %i.bz, %bb.u ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.bz, %bb.v ], [ %i.cv, %bb.ag ], [ %i.cv, %bb.ah ]
  resume { ptr, i32 } %.pn30.i

bb.bb:                                            ; preds = %bb.i
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.jz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38571
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit": ; preds = %bb.ay, %bb.j, %.thread.i.i, %bb.w, %.thread142.i.i, %bb.ba
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !38517, !noundef !23
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !noalias !38517
  br label %bb.bd

bb.bd:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h80494d58e460fbd1E.exit.thread", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h321f863e017a84dbE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h564821c3947cd430E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38689)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !38688, !noundef !23 ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread29", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !38688, !noundef !23 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !38689 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12.i = load i64, ptr %i.i, align 8, !alias.scope !38689 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ae, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.ad, %bb.f ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 274
  %i.l = load i16, ptr %i.k, align 2, !noalias !38690, !noundef !23 ; 4 uses
  %i.m = zext i16 %i.l to i64                     ; 5 uses
  %.idx = mul nuw nsw i64 %i.m, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.o = icmp eq i16 %i.l, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i53, i64 24 ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.8.0.i.i.i52, 1
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.03.0.i.i.i53 = phi ptr [ %i.p, %bb.d ], [ %i.j, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i52 = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.03.0.i.i.i53, i64 8
  %.val8.i.i.i = load ptr, ptr %i.s, align 8, !noalias !38690, !nonnull !23, !noundef !23
  %i.t = getelementptr i8, ptr %.sroa.03.0.i.i.i53, i64 16
  %.val9.i.i.i = load i64, ptr %i.t, align 8, !noalias !38690, !noundef !23 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val9.i.i.i)
  %i.u = sub i64 %.val12.i, %.val9.i.i.i
  %i.v = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !38691, !noalias !38690 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.x, i64 %i.u, i64 %i.w
  %i.y = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.y, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h30cb6d649c53a4e3E.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.sroa.8.0.i.i.i52, %.lr.ph ] ; 11 uses
  %i.z = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.z, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 280
  %i.ab = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.4.0.i.ph.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !38692, !nonnull !23, !noundef !23
  %i.ae = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h30cb6d649c53a4e3E.exit.i": ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38694)
  %.val.i.i13.i = load i64, ptr %1, align 8, !alias.scope !38695 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.af, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h30cb6d649c53a4e3E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38696
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit": ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 274
  %.sroa.037.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !38689 ; 5 uses
  %i.ah = icmp eq i64 %.sroa.037.0.copyload.i, -9223372036854775808
  br i1 %i.ah, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread", label %bb.k

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread29": ; preds = %bb.a
  %.sroa.022.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !38689 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !38689 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !38689
  %i.ai = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %i.ai, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread29"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !38697
  %i.aj = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !38697 ; 7 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 280) #46
          to label %.noexc.i unwind label %bb.aw, !noalias !38697

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.aj, align 8, !noalias !38697
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 274
  store ptr %i.aj, ptr %0, align 8, !noalias !38697
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.am, align 8, !noalias !38697
  store i16 1, ptr %i.al, align 2, !noalias !38698
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.an, align 8, !noalias !38699
  %.sroa.518.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.518.0..sroa_idx19.i, align 8, !noalias !38699
  %.sroa.6.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx21.i, align 8, !noalias !38699
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit"

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit"
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sink62.i.sroa.gep98.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %.sink61.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink61.i.sroa.gep100.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38700
  %i.ao = icmp ugt i16 %i.l, 10
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !38701
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.aq, align 8, !noalias !38701
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.ap, label %.invoke.i.i.i, label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38702)
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.m
  br i1 %.not.i.i.i.i.not, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = sub nuw nsw i64 %i.m, %.sroa.4.0.i.ph.i.i
  %i.av = mul nuw nsw i64 %i.au, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.as, i64 %i.av, i1 false), !alias.scope !38703, !noalias !38704
  br label %.thread.i.i

bb.o:                                             ; preds = %bb.l
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.p [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.q
  ]

.invoke.i.i.i:                                    ; preds = %bb.o, %bb.l
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.o ], [ 4, %bb.l ]
  store i64 %.sink.i.i.i, ptr %i.ar, align 8, !noalias !38701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38701
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h70a790a7da36baf5E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !38701

bb.p:                                             ; preds = %bb.o
  store i64 6, ptr %i.ar, align 8, !noalias !38701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38701
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h70a790a7da36baf5E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.u, !noalias !38701

bb.q:                                             ; preds = %bb.o
  store i64 5, ptr %i.ar, align 8, !noalias !38701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38701
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h70a790a7da36baf5E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !38701

bb.r:                                             ; preds = %bb.p
  %i.aw = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.invoke.i.i.i
  %.sink62.i.sroa.phi.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink62.i.sroa.gep98.i.i, %bb.q ], [ %.sink62.i.sroa.gep98.i.i, %bb.r ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i ], [ 0, %bb.q ], [ %i.aw, %bb.r ] ; 4 uses
  %i.ax = load ptr, ptr %.sink62.i.sroa.phi.i.i, align 8, !noalias !38701, !nonnull !23, !noundef !23 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 274 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !noalias !38705, !noundef !23 ; 2 uses
  %i.ba = zext i16 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38706)
  %.not.i41.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.ba
  br i1 %.not.i41.not.i.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.10.0.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = sub nuw nsw i64 %i.ba, %.sroa.10.0.i.i.i
  %i.bf = mul nuw nsw i64 %i.be, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.bc, i64 %i.bf, i1 false), !alias.scope !38707, !noalias !38705
  br label %bb.w

.thread.i.i:                                      ; preds = %bb.n, %bb.m
  %i.bg = add nuw nsw i16 %i.l, 1
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  store i64 %.sroa.037.0.copyload.i, ptr %i.bh, align 8, !alias.scope !38708, !noalias !38709
  %.sroa.730.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.val.i, ptr %.sroa.730.0..sroa_idx31.i.i, align 8, !alias.scope !38708, !noalias !38709
  %.sroa.935.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.val12.i, ptr %.sroa.935.0..sroa_idx36.i.i, align 8, !alias.scope !38708, !noalias !38709
  store i16 %i.bg, ptr %i.ag, align 2, !noalias !38704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38700
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit"

bb.u:                                             ; preds = %bb.q, %bb.p, %.invoke.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = icmp eq i64 %.sroa.037.0.copyload.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.sroa.037.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38710
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.bk = add i16 %i.az, 1
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.10.0.i.i.i ; 3 uses
  store i64 %.sroa.037.0.copyload.i, ptr %i.bl, align 8, !alias.scope !38711, !noalias !38712
  %.sroa.730.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.val.i, ptr %.sroa.730.0..sroa_idx33.i.i, align 8, !alias.scope !38711, !noalias !38712
  %.sroa.935.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.val12.i, ptr %.sroa.935.0..sroa_idx38.i.i, align 8, !alias.scope !38711, !noalias !38712
  store i16 %i.bk, ptr %i.ay, align 2, !noalias !38705
  %.sroa.016.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !38713 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !38713 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38713 ; 2 uses
  %.sroa.719.0.copyload.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i, align 8, !noalias !38713 ; 3 uses
  %.sroa.820.0.copyload.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i, align 8, !noalias !38713
  %.sroa.921.0.copyload.i.i = load ptr, ptr %.sink62.i.sroa.gep98.i.i, align 8, !noalias !38713 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sink61.i.sroa.gep100.i.i, align 8, !noalias !38713 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38700
  %.not.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.719.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.921.0.copyload.i.i) ]
  %i.bm = load ptr, ptr %.sroa.719.0.copyload.i.i, align 8, !noalias !38714, !noundef !23 ; 2 uses
  %.not.i168.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i168.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.847.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.850.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.953.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.1159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.ad

._crit_edge.i.i:                                  ; preds = %bb.au, %bb.x
  %.sroa.19.0.lcssa.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %bb.x ], [ %.sroa.1159.0.copyload61.i.i, %bb.au ]
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.921.0.copyload.i.i, %bb.x ], [ %.sroa.1056.0.i.i, %bb.au ] ; 3 uses
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.x ], [ %.sroa.847.sroa.6.0.i.i, %bb.au ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.x ], [ %.sroa.847.sroa.0.0.i.i, %bb.au ] ; 3 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.016.0.copyload.i.i, %bb.x ], [ %.sroa.044.0.i.i, %bb.au ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38715)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !38716
  %i.bq = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !38716 ; 11 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.y, label %bb.aa, !prof !26

bb.y:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 376) #46
          to label %.noexc.i.i.i.i unwind label %bb.z, !noalias !38716

.noexc.i.i.i.i:                                   ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  store ptr null, ptr %i.bq, align 8, !noalias !38716
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 274 ; 2 uses
  store i16 0, ptr %i.bt, align 2, !noalias !38716
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  store ptr %i.e, ptr %i.bu, align 8, !noalias !38716
  %i.bv = add i64 %i.g, 1
  store ptr %i.bq, ptr %i.e, align 8, !noalias !38717
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  store i16 0, ptr %i.bw, align 8, !noalias !38718
  store ptr %i.bq, ptr %0, align 8, !alias.scope !38715, !noalias !38719
  store i64 %i.bv, ptr %i.f, align 8, !alias.scope !38715, !noalias !38719
  %i.bx = icmp eq i64 %.sroa.19.0.lcssa.i.i, %i.g
  br i1 %i.bx, label %bb.av, label %.invoke.i.i.i.i, !prof !24

.invoke.i.i.i.i:                                  ; preds = %bb.aa
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1366, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #46
          to label %.cont.i.i.i.i unwind label %bb.ab, !noalias !38720

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %.invoke.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.bz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38721
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

bb.ad:                                            ; preds = %bb.au, %.lr.ph.i.i
  %i.ca = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.ih, %bb.au ] ; 11 uses
  %.sroa.03.0175.i.i = phi i64 [ %.sroa.016.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.044.0.i.i, %bb.au ] ; 8 uses
  %.sroa.8.0174.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.847.sroa.0.0.i.i, %bb.au ] ; 8 uses
  %.sroa.9.0173.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.847.sroa.6.0.i.i, %bb.au ] ; 6 uses
  %.sroa.913.0172.i.i = phi ptr [ %.sroa.719.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.850.0.i.i, %bb.au ]
  %.sroa.12.0171.i.i = phi i64 [ %.sroa.820.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.953.0.i.i, %bb.au ] ; 2 uses
  %.sroa.15.0170.i.i = phi ptr [ %.sroa.921.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1056.0.i.i, %bb.au ] ; 3 uses
  %.sroa.19.0169.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1159.0.copyload61.i.i, %bb.au ]
  %i.cb = add i64 %.sroa.12.0171.i.i, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.913.0172.i.i, i64 272
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !38714 ; 5 uses
  %i.ce = zext i16 %i.cd to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38700
  %i.cf = icmp eq i64 %.sroa.19.0169.i.i, %.sroa.12.0171.i.i
  br i1 %i.cf, label %bb.af, label %bb.ae, !prof !24

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1372, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1373) #46
          to label %bb.ag unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !38722

bb.af:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 274
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !38722, !noundef !23 ; 4 uses
  %i.ci = icmp ult i16 %i.ch, 11
  br i1 %i.ci, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cj = icmp ult i16 %i.cd, 5
  store ptr %i.ca, ptr %i.b, align 8, !noalias !38722
  store i64 %i.cb, ptr %i.bn, align 8, !noalias !38722
  br i1 %i.cj, label %.invoke.i29.i.i, label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 274
  %i.cl = zext nneg i16 %i.ch to i64              ; 4 uses
  %i.cm = add nuw nsw i16 %i.ch, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38723)
  %i.co = add nuw nsw i64 %i.ce, 1                ; 6 uses
  %.not.i.i31.not.i.i = icmp ult i16 %i.cd, %i.ch
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ce ; 7 uses
  br i1 %.not.i.i31.not.i.i, label %bb.aj, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i: ; preds = %bb.ai
  store i64 %.sroa.03.0175.i.i, ptr %i.cp, align 8, !alias.scope !38724, !noalias !38725
  %.sroa.1067.0..sroa_idx74.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx74.i.i, align 8, !alias.scope !38724, !noalias !38725
  %.sroa.13.0..sroa_idx82.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx82.i.i, align 8, !alias.scope !38724, !noalias !38725
  br label %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.co
  %i.cr = sub nuw nsw i64 %i.cl, %i.ce            ; 2 uses
  %i.cs = mul nuw nsw i64 %i.cr, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false), !alias.scope !38726, !noalias !38727
  store i64 %.sroa.03.0175.i.i, ptr %i.cp, align 8, !alias.scope !38724, !noalias !38725
  %.sroa.1067.0..sroa_idx74238.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx74238.i.i, align 8, !alias.scope !38724, !noalias !38725
  %.sroa.13.0..sroa_idx82239.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx82239.i.i, align 8, !alias.scope !38724, !noalias !38725
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 280 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.co
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ce
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 8 %i.cu, i64 %i.cx, i1 false), !alias.scope !38728, !noalias !38727
  br label %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i.i.i.i: ; preds = %bb.aj, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 280 ; 6 uses
  %i.cz = add nuw nsw i64 %i.cl, 2                ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.co
  store ptr %.sroa.15.0170.i.i, ptr %i.da, align 8, !alias.scope !38728, !noalias !38727
  store i16 %i.cm, ptr %i.ck, align 2, !noalias !38727
  %i.db = icmp samesign ult i64 %i.co, %i.cz
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.preheader, label %.thread118.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i.i.i.i
  %i.dc = add nuw nsw i64 %i.cl, 1
  %i.dd = sub nsw i64 %i.dc, %i.ce
  %i.de = sub nsw i64 %i.cl, %i.ce
  %xtraiter111 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.prol ], [ %i.co, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.df = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !38729, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ca, ptr %i.di, align 8, !noalias !38730
  %i.dj = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 272
  store i16 %i.dj, ptr %i.dk, align 8, !noalias !38730
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !38653

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i.prol ]
  %i.dl = icmp ult i64 %i.de, 3
  br i1 %i.dl, label %.thread118.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.dm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.sroa.0.06.i.i.i.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !38729, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ca, ptr %i.do, align 8, !noalias !38730
  %i.dp = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 272
  store i16 %i.dp, ptr %i.dq, align 8, !noalias !38730
  %i.dr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dm
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !38729, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ca, ptr %i.dt, align 8, !noalias !38730
  %i.du = trunc nuw nsw i64 %i.dm to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 272
  store i16 %i.du, ptr %i.dv, align 8, !noalias !38730
end_hunk_4
begin_hunk_5_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h564821c3947cd430E":bb.a

.lr.ph.i.i41.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i41.i.i.i.prol, %.lr.ph.i.i41.i.i.i.preheader
  %.sroa.0.06.i.i42.i.i.i.unr = phi i64 [ %i.en, %.lr.ph.i.i41.i.i.i.preheader ], [ %i.fe, %.lr.ph.i.i41.i.i.i.prol ]
  %i.fk = icmp ult i64 %i.fd, 3
  br i1 %i.fk, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i", label %.lr.ph.i.i41.i.i.i

.lr.ph.i.i41.i.i.i:                               ; preds = %.lr.ph.i.i41.i.i.i.prol.loopexit, %.lr.ph.i.i41.i.i.i
  %.sroa.0.06.i.i42.i.i.i = phi i64 [ %i.ga, %.lr.ph.i.i41.i.i.i ], [ %.sroa.0.06.i.i42.i.i.i.unr, %.lr.ph.i.i41.i.i.i.prol.loopexit ] ; 7 uses
  %i.fl = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i42.i.i.i
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !38735, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eh, ptr %i.fn, align 8, !noalias !38736
  %i.fo = trunc nuw nsw i64 %.sroa.0.06.i.i42.i.i.i to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 272
  store i16 %i.fo, ptr %i.fp, align 8, !noalias !38736
  %i.fq = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fl
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !38735, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eh, ptr %i.fs, align 8, !noalias !38736
  %i.ft = trunc nuw nsw i64 %i.fl to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 272
  store i16 %i.ft, ptr %i.fu, align 8, !noalias !38736
  %i.fv = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 3 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fq
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !38735, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eh, ptr %i.fx, align 8, !noalias !38736
  %i.fy = trunc nuw nsw i64 %i.fq to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 272
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !38736
  %i.ga = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 4 ; 2 uses
  %i.gb = icmp ult i64 %.sroa.0.06.i.i42.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fv
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !38735, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eh, ptr %i.gd, align 8, !noalias !38736
  %i.ge = trunc nuw nsw i64 %i.fv to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 272
  store i16 %i.ge, ptr %i.gf, align 8, !noalias !38736
  %exitcond.not.i.i43.i.i.i.3 = icmp eq i64 %i.ga, %i.ey
  br i1 %exitcond.not.i.i43.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i", label %.lr.ph.i.i41.i.i.i

bb.ap:                                            ; preds = %bb.ar, %bb.am
  %.sroa.10.1.i.i.i = phi i64 [ %i.if, %bb.ar ], [ 0, %bb.am ] ; 7 uses
  %i.gg = load ptr, ptr %i.bp, align 8, !noalias !38722, !nonnull !23, !noundef !23 ; 10 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 274 ; 2 uses
  %i.gi = load i16, ptr %i.gh, align 2, !noalias !38737, !noundef !23 ; 2 uses
  %i.gj = zext i16 %i.gi to i64                   ; 5 uses
  %i.gk = add i16 %i.gi, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gm = add nuw nsw i64 %.sroa.10.1.i.i.i, 1    ; 6 uses
  %.not.i45.not.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i, %i.gj
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %.sroa.10.1.i.i.i ; 7 uses
  br i1 %.not.i45.not.i.i.i, label %bb.aq, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i46.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i46.i.i.i: ; preds = %bb.ap
  store i64 %.sroa.03.0175.i.i, ptr %i.gn, align 8, !noalias !38732
  %.sroa.1067.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx.i.i, align 8, !noalias !38732
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !38732
  br label %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i47.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gm
  %i.gp = sub nuw nsw i64 %i.gj, %.sroa.10.1.i.i.i ; 2 uses
  %i.gq = mul nuw nsw i64 %i.gp, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.go, ptr nonnull align 8 %i.gn, i64 %i.gq, i1 false), !alias.scope !38738, !noalias !38737
  store i64 %.sroa.03.0175.i.i, ptr %i.gn, align 8, !noalias !38732
  %.sroa.1067.0..sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx68.i.i, align 8, !noalias !38732
  %.sroa.13.0..sroa_idx76.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx76.i.i, align 8, !noalias !38732
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 280 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gm
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.sroa.10.1.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = shl nuw nsw i64 %i.gp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull align 8 %i.gs, i64 %i.gv, i1 false), !alias.scope !38739, !noalias !38737
  br label %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i47.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i47.i.i.i: ; preds = %bb.aq, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i46.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 280 ; 6 uses
  %i.gx = add nuw nsw i64 %i.gj, 2                ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gm
  store ptr %.sroa.15.0170.i.i, ptr %i.gy, align 8, !alias.scope !38739, !noalias !38737
  store i16 %i.gk, ptr %i.gh, align 2, !noalias !38737
  %i.gz = icmp samesign ult i64 %i.gm, %i.gx
  br i1 %i.gz, label %.lr.ph.i.i48.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i"

.lr.ph.i.i48.i.i.i.preheader:                     ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i47.i.i.i
  %i.ha = add nuw nsw i64 %i.gj, 1
  %i.hb = sub nsw i64 %i.ha, %.sroa.10.1.i.i.i
  %i.hc = sub nsw i64 %i.gj, %.sroa.10.1.i.i.i
  %xtraiter = and i64 %i.hb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i48.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.prol

.lr.ph.i.i48.i.i.i.prol:                          ; preds = %.lr.ph.i.i48.i.i.i.preheader, %.lr.ph.i.i48.i.i.i.prol
  %.sroa.0.06.i.i49.i.i.i.prol = phi i64 [ %i.hd, %.lr.ph.i.i48.i.i.i.prol ], [ %i.gm, %.lr.ph.i.i48.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i48.i.i.i.prol ], [ 0, %.lr.ph.i.i48.i.i.i.preheader ]
  %i.hd = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.prol, 1 ; 2 uses
  %i.he = icmp samesign ult i64 %.sroa.0.06.i.i49.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.sroa.0.06.i.i49.i.i.i.prol
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !38740, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.gg, ptr %i.hg, align 8, !noalias !38741
  %i.hh = trunc nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.prol to i16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 272
  store i16 %i.hh, ptr %i.hi, align 8, !noalias !38741
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i48.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.prol, !llvm.loop !38677

.lr.ph.i.i48.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i48.i.i.i.prol, %.lr.ph.i.i48.i.i.i.preheader
  %.sroa.0.06.i.i49.i.i.i.unr = phi i64 [ %i.gm, %.lr.ph.i.i48.i.i.i.preheader ], [ %i.hd, %.lr.ph.i.i48.i.i.i.prol ]
  %i.hj = icmp ult i64 %i.hc, 3
  br i1 %i.hj, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i", label %.lr.ph.i.i48.i.i.i

.lr.ph.i.i48.i.i.i:                               ; preds = %.lr.ph.i.i48.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i
  %.sroa.0.06.i.i49.i.i.i = phi i64 [ %i.hz, %.lr.ph.i.i48.i.i.i ], [ %.sroa.0.06.i.i49.i.i.i.unr, %.lr.ph.i.i48.i.i.i.prol.loopexit ] ; 7 uses
  %i.hk = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.sroa.0.06.i.i49.i.i.i
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !38740, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.gg, ptr %i.hm, align 8, !noalias !38741
  %i.hn = trunc nuw nsw i64 %.sroa.0.06.i.i49.i.i.i to i16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 272
  store i16 %i.hn, ptr %i.ho, align 8, !noalias !38741
  %i.hp = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 2 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hk
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !38740, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.gg, ptr %i.hr, align 8, !noalias !38741
  %i.hs = trunc nuw nsw i64 %i.hk to i16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 272
  store i16 %i.hs, ptr %i.ht, align 8, !noalias !38741
  %i.hu = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hp
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !38740, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.gg, ptr %i.hw, align 8, !noalias !38741
  %i.hx = trunc nuw nsw i64 %i.hp to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 272
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !38741
  %i.hz = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 4 ; 2 uses
  %i.ia = icmp ult i64 %.sroa.0.06.i.i49.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hu
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !38740, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.gg, ptr %i.ic, align 8, !noalias !38741
  %i.id = trunc nuw nsw i64 %i.hu to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 272
  store i16 %i.id, ptr %i.ie, align 8, !noalias !38741
  %exitcond.not.i.i50.i.i.i.3 = icmp eq i64 %i.hz, %i.gx
  br i1 %exitcond.not.i.i50.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i", label %.lr.ph.i.i48.i.i.i

bb.ar:                                            ; preds = %bb.al
  %i.if = add nsw i64 %i.ce, -7
  br label %bb.ap

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i": ; preds = %.lr.ph.i.i48.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i47.i.i.i
  %.sroa.847.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.847.0..sroa_idx.i.i, align 8, !noalias !38742
  %.sroa.847.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38742
  %.sroa.850.0.copyload.i.i = load ptr, ptr %.sroa.850.0..sroa_idx.i.i, align 8, !noalias !38742
  %.sroa.953.0.copyload.i.i = load i64, ptr %.sroa.953.0..sroa_idx.i.i, align 8, !noalias !38742
  br label %bb.at

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i.prol.loopexit, %.lr.ph.i.i41.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i40.i.i.i
  %.sroa.847.sroa.0.0.copyload96.i.i = load ptr, ptr %.sroa.847.0..sroa_idx.i.i, align 8, !noalias !38742
  %.sroa.847.sroa.6.0.copyload97.i.i = load i64, ptr %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38742
  %.sroa.953.0.copyload55.i.i = load i64, ptr %.sroa.953.0..sroa_idx.i.i, align 8, !noalias !38742
  %.sroa.1056.0.copyload58.i.i = load ptr, ptr %i.bp, align 8, !noalias !38742
  br label %bb.at

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i, %bb.al, %bb.am, %bb.ae
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = icmp eq i64 %.sroa.03.0175.i.i, 0
  br i1 %i.ig, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0174.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0174.i.i, i64 noundef %.sroa.03.0175.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38743
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

.thread118.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h5002d8976e9987eaE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38700
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit"

bb.at:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i"
  %.sroa.1056.0.i.i = phi ptr [ %i.gg, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i" ], [ %.sroa.1056.0.copyload58.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i" ] ; 3 uses
  %.sroa.953.0.i.i = phi i64 [ %.sroa.953.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i" ], [ %.sroa.953.0.copyload55.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i" ]
  %.sroa.850.0.i.i = phi ptr [ %.sroa.850.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i" ], [ %i.eh, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i" ] ; 3 uses
  %.sroa.847.sroa.0.0.i.i = phi ptr [ %.sroa.847.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i" ], [ %.sroa.847.sroa.0.0.copyload96.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i" ] ; 2 uses
  %.sroa.847.sroa.6.0.i.i = phi i64 [ %.sroa.847.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit51.i.i.i" ], [ %.sroa.847.sroa.6.0.copyload97.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17ha3627244dbfbf8d1E.exit44.i.i.i" ] ; 2 uses
  %.sroa.044.0.i.i = load i64, ptr %i.a, align 8, !noalias !38742 ; 3 uses
  %.sroa.1159.0.copyload61.i.i = load i64, ptr %.sroa.1159.0..sroa_idx.i.i, align 8, !noalias !38742 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38700
  %.not16.i.i = icmp eq i64 %.sroa.044.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit", label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.850.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1056.0.i.i) ]
  %i.ih = load ptr, ptr %.sroa.850.0.i.i, align 8, !noalias !38714, !noundef !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.ad

bb.av:                                            ; preds = %bb.aa
  store i16 1, ptr %i.bt, align 2, !noalias !38720
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %.sroa.03.0.lcssa.i.i, ptr %i.ii, align 8, !noalias !38719
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %.sroa.8.0.lcssa.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !38719
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !38719
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bq, i64 288
  store ptr %.sroa.15.0.lcssa.i.i, ptr %i.ij, align 8, !noalias !38720
  store ptr %i.bq, ptr %.sroa.15.0.lcssa.i.i, align 8, !noalias !38744
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa.i.i, i64 272
  store i16 1, ptr %i.ik, align 8, !noalias !38744
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i": ; preds = %bb.ax, %bb.aw, %bb.as, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ac, %bb.ab, %bb.v, %bb.u
  %.pn30.i = phi { ptr, i32 } [ %i.il, %bb.ax ], [ %i.il, %bb.aw ], [ %lpad.loopexit.split-lp56, %bb.as ], [ %i.by, %bb.ac ], [ %i.by, %bb.ab ], [ %i.bi, %bb.u ], [ %lpad.loopexit.split-lp56, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.bi, %bb.v ]
  resume { ptr, i32 } %.pn30.i

bb.aw:                                            ; preds = %bb.i
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.im, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38745
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit14.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit": ; preds = %bb.at, %bb.j, %.thread.i.i, %bb.w, %.thread118.i.i, %bb.av
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !noalias !38697, !noundef !23
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.in, align 8, !noalias !38697
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread": ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4ccd19a5f371013E.exit.thread29", %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h30cb6d649c53a4e3E.exit.i", %bb.g, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he3dc8a8380cde4b3E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h747f2b4a1f1c5e13E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 16 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 15 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [128 x i8], align 8               ; 10 uses
  %.sroa.842.sroa.7.i.i = alloca [72 x i8], align 8 ; 6 uses
  %.sroa.7.sroa.6.i.i = alloca [72 x i8], align 8 ; 5 uses
  %.sroa.16.i.i = alloca [72 x i8], align 8       ; 15 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38896)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !38895, !noundef !23 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit.thread32", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !38895, !noundef !23
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !38896 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val12.i = load i64, ptr %i.n, align 8, !alias.scope !38896 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.l, %bb.b ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.ai, %bb.f ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1066
  %i.q = load i16, ptr %i.p, align 2, !noalias !38897, !noundef !23 ; 4 uses
  %i.r = zext i16 %i.q to i64                     ; 5 uses
  %.idx = mul nuw nsw i64 %i.r, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.t = icmp eq i16 %i.q, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i309, i64 24 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.8.0.i.i.i308, 1
  %i.w = icmp eq ptr %i.u, %i.s
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.03.0.i.i.i309 = phi ptr [ %i.u, %bb.d ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i308 = phi i64 [ %i.v, %bb.d ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.x = getelementptr i8, ptr %.sroa.03.0.i.i.i309, i64 8
  %.val7.i.i.i = load ptr, ptr %i.x, align 8, !noalias !38897, !nonnull !23, !noundef !23
  %i.y = getelementptr i8, ptr %.sroa.03.0.i.i.i309, i64 16
  %.val8.i.i.i = load i64, ptr %i.y, align 8, !noalias !38897, !noundef !23 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val8.i.i.i)
  %i.z = sub i64 %.val12.i, %.val8.i.i.i
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !38898, !noalias !38897 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ac, i64 %i.z, i64 %i.ab
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.ad, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h3924a1892cc3eae0E.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %.sroa.8.0.i.i.i308, %.lr.ph ] ; 13 uses
  %i.ae = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ae, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1072
  %i.ag = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.4.0.i.ph.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !38899, !nonnull !23, !noundef !23
  %i.aj = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h3924a1892cc3eae0E.exit.i": ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38901)
  %.val.i.i13.i = load i64, ptr %2, align 8, !alias.scope !38902 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.ak, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h3924a1892cc3eae0E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !38903
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit": ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1066
  %.sroa.037.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !38896 ; 5 uses
  %i.am = ptrtoint ptr %1 to i64
  %i.an = icmp eq i64 %.sroa.037.0.copyload.i, -9223372036854775808
  br i1 %i.an, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit.thread", label %bb.k

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit.thread32": ; preds = %bb.a
  %.sroa.022.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !38896 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !38896 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !38896
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %i.ap, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit.thread32"
  %.sroa.0.0.copyload380 = load i64, ptr %3, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !38904
  %i.aq = tail call noalias noundef align 8 dereferenceable_or_null(1072) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1072, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !38904 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1072) #46
          to label %.noexc.i unwind label %bb.bw, !noalias !38904

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.aq, align 8, !noalias !38904
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1066
  store ptr %i.aq, ptr %1, align 8, !noalias !38904
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.at, align 8, !noalias !38904
  store i16 1, ptr %i.as, align 2, !noalias !38905
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.au, align 8, !noalias !38906
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.5.0..sroa_idx24.i, align 8, !noalias !38906
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx26.i, align 8, !noalias !38906
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  br label %bb.bz

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h70d6b9592652c895E.exit"
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.6.i.i)
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %.sink62.i.sroa.gep92.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  %.sink61.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sink61.i.sroa.gep94.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
end_hunk_5
begin_hunk_6_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hd0b09be2ce81c0a4E":bb.a
.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.am, align 8, !noalias !39366
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 538
  store ptr %i.am, ptr %1, align 8, !noalias !39366
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ap, align 8, !noalias !39366
  store i16 1, ptr %i.ao, align 2, !noalias !39367
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.aq, align 8, !noalias !39368
  %.sroa.526.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.526.0..sroa_idx27.i, align 8, !noalias !39368
  %.sroa.6.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx29.i, align 8, !noalias !39368
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  store i64 %.sroa.018.0.copyload52, ptr %i.ar, align 8, !noalias !39369
  %.sroa.533.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.am, i64 280
  store ptr %.sroa.6.0.copyload54, ptr %.sroa.533.0..sroa_idx34.i, align 8, !noalias !39369
  %.sroa.636.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.am, i64 288
  store i64 %.sroa.9.0.copyload56, ptr %.sroa.636.0..sroa_idx37.i, align 8, !noalias !39369
  br label %.loopexit

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit"
  %.sroa.018.0.copyload = load i64, ptr %3, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sink65.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sink65.i.sroa.gep179.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %.sink64.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sink64.i.sroa.gep181.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39370
  %i.as = icmp ugt i16 %i.m, 10
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !39371
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.au, align 8, !noalias !39371
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.at, label %.invoke.i.i.i, label %bb.p

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39372)
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.n
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.sroa.4.0.i.ph.i.i ; 4 uses
  br i1 %.not.i.i.i.i.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39373)
  br label %.thread.i.i

bb.o:                                             ; preds = %bb.m
  %i.ax = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.ax
  %i.az = sub nuw nsw i64 %i.n, %.sroa.4.0.i.ph.i.i
  %i.ba = mul nuw nsw i64 %i.az, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.aw, i64 %i.ba, i1 false), !alias.scope !39374, !noalias !39375
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 272 ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.4.0.i.ph.i.i
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.bc, i64 %i.ba, i1 false), !alias.scope !39376, !noalias !39375
  br label %.thread.i.i

bb.p:                                             ; preds = %bb.l
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.q [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.r
  ]

.invoke.i.i.i:                                    ; preds = %bb.p, %bb.l
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.p ], [ 4, %bb.l ]
  store i64 %.sink.i.i.i, ptr %i.av, align 8, !noalias !39371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39371
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h88050dc45de63770E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.t unwind label %bb.w, !noalias !39371

bb.q:                                             ; preds = %bb.p
  store i64 6, ptr %i.av, align 8, !noalias !39371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39371
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h88050dc45de63770E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.w, !noalias !39371

bb.r:                                             ; preds = %bb.p
  store i64 5, ptr %i.av, align 8, !noalias !39371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39371
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h88050dc45de63770E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.t unwind label %bb.w, !noalias !39371

bb.s:                                             ; preds = %bb.q
  %i.be = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.invoke.i.i.i
  %.sink65.i.sroa.phi.i.i = phi ptr [ %.sink65.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink65.i.sroa.gep179.i.i, %bb.r ], [ %.sink65.i.sroa.gep179.i.i, %bb.s ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i ], [ 0, %bb.r ], [ %i.be, %bb.s ] ; 6 uses
  %i.bf = load ptr, ptr %.sink65.i.sroa.phi.i.i, align 8, !noalias !39371, !nonnull !23, !noundef !23 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 538 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !39377, !noundef !23 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39378)
  %.not.i40.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.10.0.i.i.i ; 4 uses
  br i1 %.not.i40.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39379)
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.bl = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.10.0.i.i.i
  %i.bo = mul nuw nsw i64 %i.bn, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !39380, !noalias !39377
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 272 ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.10.0.i.i.i
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bq, i64 %i.bo, i1 false), !alias.scope !39381, !noalias !39377
  br label %bb.aa

.thread.i.i:                                      ; preds = %bb.o, %bb.n
  store i64 %.sroa.037.0.copyload.i, ptr %i.aw, align 8, !alias.scope !39382, !noalias !39383
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.val.i, ptr %i.bs, align 8, !alias.scope !39382, !noalias !39383
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.val12.i, ptr %i.bt, align 8, !alias.scope !39382, !noalias !39383
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 272
  %i.bv = add nuw nsw i16 %i.m, 1
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  store i64 %.sroa.018.0.copyload, ptr %i.bw, align 8, !alias.scope !39384, !noalias !39375
  %.sroa.6184.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6184.0..sroa_idx.i.i, align 8, !alias.scope !39384, !noalias !39375
  %.sroa.8185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.8185.0..sroa_idx.i.i, align 8, !alias.scope !39384, !noalias !39375
  store i16 %i.bv, ptr %i.ah, align 2, !noalias !39375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39370
  br label %.loopexit

bb.w:                                             ; preds = %bb.r, %bb.q, %.invoke.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = icmp eq i64 %.sroa.018.0.copyload, 0
  br i1 %i.by, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.018.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39385
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bz = icmp eq i64 %.sroa.037.0.copyload.i, 0
  br i1 %i.bz, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.sroa.037.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39386
  br label %.body

bb.aa:                                            ; preds = %bb.v, %bb.u
  store i64 %.sroa.037.0.copyload.i, ptr %i.bk, align 8, !alias.scope !39387, !noalias !39388
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.val.i, ptr %i.ca, align 8, !alias.scope !39387, !noalias !39388
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.val12.i, ptr %i.cb, align 8, !alias.scope !39387, !noalias !39388
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  %i.cd = add i16 %i.bh, 1
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.sroa.10.0.i.i.i ; 3 uses
  store i64 %.sroa.018.0.copyload, ptr %i.ce, align 8, !alias.scope !39389, !noalias !39377
  %.sroa.6187.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6187.0..sroa_idx.i.i, align 8, !alias.scope !39389, !noalias !39377
  %.sroa.8188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.8188.0..sroa_idx.i.i, align 8, !alias.scope !39389, !noalias !39377
  store i16 %i.cd, ptr %i.bg, align 2, !noalias !39377
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !39390 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !39390 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39390 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39390 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39390 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39390 ; 2 uses
  %.sroa.726.0.copyload.i.i = load ptr, ptr %.sink65.i.sroa.gep.i.i, align 8, !noalias !39390 ; 3 uses
  %.sroa.827.0.copyload.i.i = load i64, ptr %.sink64.i.sroa.gep.i.i, align 8, !noalias !39390
  %.sroa.928.0.copyload.i.i = load ptr, ptr %.sink65.i.sroa.gep179.i.i, align 8, !noalias !39390 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sink64.i.sroa.gep181.i.i, align 8, !noalias !39390 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39370
  %.not.i.i = icmp eq i64 %.sroa.023.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.726.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.928.0.copyload.i.i) ]
  %i.cf = load ptr, ptr %.sroa.726.0.copyload.i.i, align 8, !noalias !39391, !noundef !23 ; 2 uses
  %.not.i278.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i278.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.sroa.887.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.890.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.993.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.sroa.1199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.aq

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.ab
  %.sroa.22.0.lcssa.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %bb.ab ], [ %.sroa.1199.0.copyload101.i.i, %bb.br ]
  %.sroa.18.0.lcssa.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %bb.ab ], [ %.sroa.1096.0.i.i, %bb.br ] ; 3 uses
  %.sroa.12.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.9.0.i.i, %bb.br ]
  %.sroa.11.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.8.0.i.i, %bb.br ] ; 5 uses
  %.sroa.913.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.7.0.i.i, %bb.br ] ; 5 uses
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.6.0.i.i, %bb.br ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.0.0.i.i, %bb.br ] ; 5 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %bb.ab ], [ %.sroa.084.0.i.i, %bb.br ] ; 5 uses
  %i.cj = load ptr, ptr %1, align 8, !noalias !39392, !noundef !23 ; 4 uses
  %.not.i23.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i23.i.i, label %bb.ac, label %bb.ae, !prof !26

bb.ac:                                            ; preds = %._crit_edge.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1364) #46
          to label %bb.ad unwind label %bb.am, !noalias !39392

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39393)
  %i.ck = load i64, ptr %i.g, align 8, !alias.scope !39393, !noalias !39392, !noundef !23 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !39394
  %i.cl = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !39394 ; 14 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.af, label %bb.ah, !prof !26

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 640) #46
          to label %.noexc.i.i.i.i unwind label %bb.ag, !noalias !39394

.noexc.i.i.i.i:                                   ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.ae
  store ptr null, ptr %i.cl, align 8, !noalias !39394
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 538 ; 2 uses
  store i16 0, ptr %i.co, align 2, !noalias !39394
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 544
  store ptr %i.cj, ptr %i.cp, align 8, !noalias !39394
  %i.cq = add i64 %i.ck, 1
  store ptr %i.cl, ptr %i.cj, align 8, !noalias !39395
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 536
  store i16 0, ptr %i.cr, align 8, !noalias !39396
  store ptr %i.cl, ptr %1, align 8, !alias.scope !39393, !noalias !39392
  store i64 %i.cq, ptr %i.g, align 8, !alias.scope !39393, !noalias !39392
  %i.cs = icmp eq i64 %.sroa.22.0.lcssa.i.i, %i.ck
  br i1 %i.cs, label %bb.bs, label %.invoke.i.i.i.i, !prof !24

.invoke.i.i.i.i:                                  ; preds = %bb.ah
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1366, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #46
          to label %.cont.i.i.i.i unwind label %bb.ai, !noalias !39397

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ai:                                            ; preds = %.invoke.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.cu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %.sroa.913.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39398
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cv = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cv, label %.body, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39399
  br label %.body

bb.am:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39400
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cy = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.cy, label %.body, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %.sroa.913.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39401
  br label %.body

bb.aq:                                            ; preds = %bb.br, %.lr.ph.i.i
  %i.cz = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.jy, %bb.br ] ; 12 uses
  %.sroa.03.0288.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.084.0.i.i, %bb.br ] ; 7 uses
  %.sroa.8.0287.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.0.0.i.i, %bb.br ] ; 7 uses
  %.sroa.9.0286.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.6.0.i.i, %bb.br ] ; 5 uses
  %.sroa.913.0285.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.7.0.i.i, %bb.br ] ; 7 uses
  %.sroa.11.0284.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.8.0.i.i, %bb.br ] ; 7 uses
  %.sroa.12.0283.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.9.0.i.i, %bb.br ] ; 5 uses
  %.sroa.1220.0282.i.i = phi ptr [ %.sroa.726.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.890.0.i.i, %bb.br ]
  %.sroa.15.0281.i.i = phi i64 [ %.sroa.827.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.993.0.i.i, %bb.br ] ; 2 uses
  %.sroa.18.0280.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1096.0.i.i, %bb.br ] ; 3 uses
  %.sroa.22.0279.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1199.0.copyload101.i.i, %bb.br ]
  %i.da = add i64 %.sroa.15.0281.i.i, 1
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.1220.0282.i.i, i64 536
  %i.dc = load i16, ptr %i.db, align 8, !noalias !39391 ; 5 uses
  %i.dd = zext i16 %i.dc to i64                   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39370
  %i.de = icmp eq i64 %.sroa.22.0279.i.i, %.sroa.15.0281.i.i
  br i1 %i.de, label %bb.as, label %bb.ar, !prof !24

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1372, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1373) #46
          to label %bb.at unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39402

bb.as:                                            ; preds = %bb.aq
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 538
  %i.dg = load i16, ptr %i.df, align 2, !noalias !39402, !noundef !23 ; 4 uses
  %i.dh = icmp ult i16 %i.dg, 11
  br i1 %i.dh, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.di = icmp ult i16 %i.dc, 5
  store ptr %i.cz, ptr %i.b, align 8, !noalias !39402
  store i64 %i.da, ptr %i.cg, align 8, !noalias !39402
  br i1 %i.di, label %.invoke.i34.i.i, label %bb.bb

bb.av:                                            ; preds = %bb.as
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 538
  %i.dk = zext nneg i16 %i.dg to i64              ; 5 uses
  %i.dl = add nuw nsw i16 %i.dg, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39403)
  %i.dn = add nuw nsw i64 %i.dd, 1                ; 7 uses
  %.not.i.i36.not.i.i = icmp ult i16 %i.dc, %i.dg ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dd ; 4 uses
  br i1 %.not.i.i36.not.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39404)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn
  %i.dq = sub nuw nsw i64 %i.dk, %i.dd
  %i.dr = mul nuw nsw i64 %i.dq, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.do, i64 %i.dr, i1 false), !alias.scope !39405, !noalias !39406
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 272 ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dd
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.dt, i64 %i.dr, i1 false), !alias.scope !39407, !noalias !39406
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store i64 %.sroa.03.0288.i.i, ptr %i.do, align 8, !alias.scope !39408, !noalias !39409
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %i.dv, align 8, !alias.scope !39408, !noalias !39409
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %i.dw, align 8, !alias.scope !39408, !noalias !39409
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 272
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dd ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.dy, align 8, !alias.scope !39410, !noalias !39406
  %.sroa.6190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.6190.0..sroa_idx.i.i, align 8, !alias.scope !39410, !noalias !39406
  %.sroa.8191.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.8191.0..sroa_idx.i.i, align 8, !alias.scope !39410, !noalias !39406
  %i.dz = add nuw nsw i64 %i.dk, 2                ; 2 uses
end_hunk_6
begin_hunk_7_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hd0b09be2ce81c0a4E":bb.a
  store ptr %i.fn, ptr %i.ho, align 8, !noalias !39421
  %i.hp = trunc nuw nsw i64 %i.hg to i16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 536
  store i16 %i.hp, ptr %i.hq, align 8, !noalias !39421
  %exitcond.not.i.i40.i.i.i.3 = icmp eq i64 %i.hl, %i.gj
  br i1 %exitcond.not.i.i40.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i", label %.lr.ph.i.i38.i.i.i

bb.bi:                                            ; preds = %bb.bm, %bb.bd
  %.sroa.10.1.i.i.i = phi i64 [ %i.jv, %bb.bm ], [ 0, %bb.bd ] ; 9 uses
  %i.hr = load ptr, ptr %i.ci, align 8, !noalias !39402, !nonnull !23, !noundef !23 ; 12 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 538 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !noalias !39422, !noundef !23 ; 2 uses
  %i.hu = zext i16 %i.ht to i64                   ; 5 uses
  %i.hv = add i16 %i.ht, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hx = add nuw nsw i64 %.sroa.10.1.i.i.i, 1    ; 7 uses
  %.not.i42.not.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i, %i.hu
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %.sroa.10.1.i.i.i ; 7 uses
  br i1 %.not.i42.not.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 %.sroa.03.0288.i.i, ptr %i.hy, align 8, !noalias !39415
  %.sroa.11108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx.i.i, align 8, !noalias !39415
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !39415
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 272
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hz, i64 %.sroa.10.1.i.i.i ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.ia, align 8, !noalias !39416
  %.sroa.11135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx.i.i, align 8, !noalias !39416
  %.sroa.14146.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx.i.i, align 8, !noalias !39416
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %i.hx
  %i.ic = sub nuw nsw i64 %i.hu, %.sroa.10.1.i.i.i ; 2 uses
  %i.id = mul nuw nsw i64 %i.ic, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.hy, i64 %i.id, i1 false), !alias.scope !39423, !noalias !39422
  store i64 %.sroa.03.0288.i.i, ptr %i.hy, align 8, !noalias !39415
  %.sroa.11108.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx109.i.i, align 8, !noalias !39415
  %.sroa.14.0..sroa_idx119.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx119.i.i, align 8, !noalias !39415
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 272 ; 2 uses
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %.sroa.10.1.i.i.i ; 4 uses
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %i.hx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %i.if, i64 %i.id, i1 false), !alias.scope !39424, !noalias !39422
  store i64 %.sroa.913.0285.i.i, ptr %i.if, align 8, !noalias !39416
  %.sroa.11135.0..sroa_idx136.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx136.i.i, align 8, !noalias !39416
  %.sroa.14146.0..sroa_idx147.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx147.i.i, align 8, !noalias !39416
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 544 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.hx
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.sroa.10.1.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = shl nuw nsw i64 %i.ic, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ik, ptr nonnull align 8 %i.ii, i64 %i.il, i1 false), !alias.scope !39425, !noalias !39422
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 544 ; 6 uses
  %i.in = add nuw nsw i64 %i.hu, 2                ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.hx
  store ptr %.sroa.18.0280.i.i, ptr %i.io, align 8, !alias.scope !39425, !noalias !39422
  store i16 %i.hv, ptr %i.hs, align 2, !noalias !39422
  %i.ip = icmp samesign ult i64 %i.hx, %i.in
  br i1 %i.ip, label %.lr.ph.i.i43.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i"

.lr.ph.i.i43.i.i.i.preheader:                     ; preds = %bb.bl
  %i.iq = add nuw nsw i64 %i.hu, 1
  %i.ir = sub nsw i64 %i.iq, %.sroa.10.1.i.i.i
  %i.is = sub nsw i64 %i.hu, %.sroa.10.1.i.i.i
  %xtraiter = and i64 %i.ir, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i43.i.i.i.prol.loopexit, label %.lr.ph.i.i43.i.i.i.prol

.lr.ph.i.i43.i.i.i.prol:                          ; preds = %.lr.ph.i.i43.i.i.i.preheader, %.lr.ph.i.i43.i.i.i.prol
  %.sroa.0.06.i.i44.i.i.i.prol = phi i64 [ %i.it, %.lr.ph.i.i43.i.i.i.prol ], [ %i.hx, %.lr.ph.i.i43.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i43.i.i.i.prol ], [ 0, %.lr.ph.i.i43.i.i.i.preheader ]
  %i.it = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.prol, 1 ; 2 uses
  %i.iu = icmp samesign ult i64 %.sroa.0.06.i.i44.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.sroa.0.06.i.i44.i.i.i.prol
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !39426, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hr, ptr %i.iw, align 8, !noalias !39427
  %i.ix = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.prol to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 536
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !39427
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i43.i.i.i.prol.loopexit, label %.lr.ph.i.i43.i.i.i.prol, !llvm.loop !39335

.lr.ph.i.i43.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i43.i.i.i.prol, %.lr.ph.i.i43.i.i.i.preheader
  %.sroa.0.06.i.i44.i.i.i.unr = phi i64 [ %i.hx, %.lr.ph.i.i43.i.i.i.preheader ], [ %i.it, %.lr.ph.i.i43.i.i.i.prol ]
  %i.iz = icmp ult i64 %i.is, 3
  br i1 %i.iz, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i", label %.lr.ph.i.i43.i.i.i

.lr.ph.i.i43.i.i.i:                               ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i
  %.sroa.0.06.i.i44.i.i.i = phi i64 [ %i.jp, %.lr.ph.i.i43.i.i.i ], [ %.sroa.0.06.i.i44.i.i.i.unr, %.lr.ph.i.i43.i.i.i.prol.loopexit ] ; 7 uses
  %i.ja = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.sroa.0.06.i.i44.i.i.i
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !39426, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hr, ptr %i.jc, align 8, !noalias !39427
  %i.jd = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i to i16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 536
  store i16 %i.jd, ptr %i.je, align 8, !noalias !39427
  %i.jf = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 2 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ja
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !39426, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hr, ptr %i.jh, align 8, !noalias !39427
  %i.ji = trunc nuw nsw i64 %i.ja to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 536
  store i16 %i.ji, ptr %i.jj, align 8, !noalias !39427
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 3 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.jf
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !39426, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hr, ptr %i.jm, align 8, !noalias !39427
  %i.jn = trunc nuw nsw i64 %i.jf to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 536
  store i16 %i.jn, ptr %i.jo, align 8, !noalias !39427
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 4 ; 2 uses
  %i.jq = icmp ult i64 %.sroa.0.06.i.i44.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.jk
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !39426, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hr, ptr %i.js, align 8, !noalias !39427
  %i.jt = trunc nuw nsw i64 %i.jk to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 536
  store i16 %i.jt, ptr %i.ju, align 8, !noalias !39427
  %exitcond.not.i.i45.i.i.i.3 = icmp eq i64 %i.jp, %i.in
  br i1 %exitcond.not.i.i45.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i", label %.lr.ph.i.i43.i.i.i

bb.bm:                                            ; preds = %bb.bc
  %i.jv = add nsw i64 %i.dd, -7
  br label %bb.bi

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i, %bb.bl
  %.sroa.887.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.887.0..sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.890.0.copyload.i.i = load ptr, ptr %.sroa.890.0..sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.993.0.copyload.i.i = load i64, ptr %.sroa.993.0..sroa_idx.i.i, align 8, !noalias !39428
  br label %bb.bq

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i": ; preds = %.lr.ph.i.i38.i.i.i.prol.loopexit, %.lr.ph.i.i38.i.i.i, %bb.bh
  %.sroa.887.sroa.0.0.copyload174.i.i = load ptr, ptr %.sroa.887.0..sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.6.0.copyload175.i.i = load i64, ptr %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.7.0.copyload176.i.i = load i64, ptr %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.8.0.copyload177.i.i = load ptr, ptr %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.887.sroa.9.0.copyload178.i.i = load i64, ptr %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.993.0.copyload95.i.i = load i64, ptr %.sroa.993.0..sroa_idx.i.i, align 8, !noalias !39428
  %.sroa.1096.0.copyload98.i.i = load ptr, ptr %i.ci, align 8, !noalias !39428
  br label %bb.bq

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i34.i.i, %bb.bc, %bb.bd, %bb.ar
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = icmp eq i64 %.sroa.913.0285.i.i, 0
  br i1 %i.jw, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0284.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0284.i.i, i64 noundef %.sroa.913.0285.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39429
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.jx = icmp eq i64 %.sroa.03.0288.i.i, 0
  br i1 %i.jx, label %.body, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0287.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0287.i.i, i64 noundef %.sroa.03.0288.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39430
  br label %.body

.thread211.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39370
  br label %.loopexit

bb.bq:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i"
  %.sroa.887.sroa.0.0.i.i = phi ptr [ %.sroa.887.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %.sroa.887.sroa.0.0.copyload174.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.6.0.i.i = phi i64 [ %.sroa.887.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %.sroa.887.sroa.6.0.copyload175.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.7.0.i.i = phi i64 [ %.sroa.887.sroa.7.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %.sroa.887.sroa.7.0.copyload176.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.8.0.i.i = phi ptr [ %.sroa.887.sroa.8.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %.sroa.887.sroa.8.0.copyload177.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.9.0.i.i = phi i64 [ %.sroa.887.sroa.9.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %.sroa.887.sroa.9.0.copyload178.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ] ; 2 uses
  %.sroa.1096.0.i.i = phi ptr [ %i.hr, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %.sroa.1096.0.copyload98.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ] ; 3 uses
  %.sroa.993.0.i.i = phi i64 [ %.sroa.993.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %.sroa.993.0.copyload95.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ]
  %.sroa.890.0.i.i = phi ptr [ %.sroa.890.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit46.i.i.i" ], [ %i.fn, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he7c58f3da6770d54E.exit41.i.i.i" ] ; 3 uses
  %.sroa.084.0.i.i = load i64, ptr %i.a, align 8, !noalias !39428 ; 3 uses
  %.sroa.1199.0.copyload101.i.i = load i64, ptr %.sroa.1199.0..sroa_idx.i.i, align 8, !noalias !39428 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39370
  %.not16.i.i = icmp eq i64 %.sroa.084.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.890.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1096.0.i.i) ]
  %i.jy = load ptr, ptr %.sroa.890.0.i.i, align 8, !noalias !39391, !noundef !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.aq

bb.bs:                                            ; preds = %bb.ah
  store i16 1, ptr %i.co, align 2, !noalias !39397
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.03.0.lcssa.i.i, ptr %i.jz, align 8, !noalias !39431
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.sroa.8.0.lcssa.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !39431
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !39431
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cl, i64 272
  store i64 %.sroa.913.0.lcssa.i.i, ptr %i.ka, align 8, !noalias !39432
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 280
  store ptr %.sroa.11.0.lcssa.i.i, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !noalias !39432
  %.sroa.612.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 288
  store i64 %.sroa.12.0.lcssa.i.i, ptr %.sroa.612.0..sroa_idx13.i.i.i, align 8, !noalias !39432
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cl, i64 552
  store ptr %.sroa.18.0.lcssa.i.i, ptr %i.kb, align 8, !noalias !39397
  store ptr %i.cl, ptr %.sroa.18.0.lcssa.i.i, align 8, !noalias !39433
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.18.0.lcssa.i.i, i64 536
  store i16 1, ptr %i.kc, align 8, !noalias !39433
  br label %.loopexit

bb.bt:                                            ; preds = %bb.i
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = icmp eq i64 %.sroa.018.0.copyload52, 0
  br i1 %i.ke, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload54) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload54, i64 noundef %.sroa.018.0.copyload52, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39434
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kf = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.kf, label %.body, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39435
  br label %.body

.loopexit:                                        ; preds = %bb.bq, %bb.j, %.thread.i.i, %bb.aa, %.thread211.i.i, %bb.bs
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !noalias !39366, !noundef !23
  %i.ki = add i64 %i.kh, 1
  store i64 %i.ki, ptr %i.kg, align 8, !noalias !39366
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit.thread", %.loopexit
  ret void

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit.thread": ; preds = %bb.g, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb210b2e3379f2142E.exit.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit.thread33"
  %.sroa.7.032 = phi ptr [ %.sroa.524.0.copyload.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit.thread33" ], [ %.val.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit" ], [ %.sroa.0.0.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb210b2e3379f2142E.exit.i" ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %.sroa.14.031 = phi i64 [ %i.ak, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit.thread33" ], [ %i.ai, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h37a60c6bdd7ac688E.exit" ], [ %.sroa.8.0.i.i.i357, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb210b2e3379f2142E.exit.i" ], [ %.sroa.8.0.i.i.i357, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.032) ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.7.032, i64 272
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.kj, i64 %.sroa.14.031 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i64 24, i1 false), !noalias !39436
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !39437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bx

.body:                                            ; preds = %bb.bw, %bb.bv, %bb.bp, %bb.bo, %bb.ap, %bb.ao, %bb.al, %bb.ak, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.ap ], [ %lpad.loopexit.split-lp361, %bb.bp ], [ %i.kd, %bb.bw ], [ %i.cw, %bb.ao ], [ %i.ct, %bb.al ], [ %i.kd, %bb.bv ], [ %i.ct, %bb.ak ], [ %i.bx, %bb.y ], [ %lpad.loopexit.split-lp361, %bb.bo ], [ %i.bx, %bb.z ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hd9bca3b3073d9158E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1512) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(1512) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1512 x i8], align 8              ; 6 uses
  %i.b = alloca [1568 x i8], align 8              ; 17 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [1512 x i8], align 8              ; 6 uses
  %i.e = alloca [1512 x i8], align 8              ; 6 uses
  %i.f = alloca [1568 x i8], align 8              ; 16 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [1568 x i8], align 8              ; 11 uses
  %i.i = alloca [1512 x i8], align 8              ; 12 uses
  %.sroa.845.i.i = alloca [1504 x i8], align 8    ; 6 uses
  %.sroa.7.i.i = alloca [1504 x i8], align 8      ; 5 uses
  %.sroa.12.i.i = alloca [1504 x i8], align 8     ; 7 uses
  %i.j = alloca [1512 x i8], align 8              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39586)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !39585, !noundef !23 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit.thread31", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !39585, !noundef !23
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !39586 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val12.i = load i64, ptr %i.o, align 8, !alias.scope !39586 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.m, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.aj, %bb.f ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16906
  %i.r = load i16, ptr %i.q, align 2, !noalias !39587, !noundef !23 ; 4 uses
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %.idx = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.u = icmp eq i16 %i.r, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i312, i64 24 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.8.0.i.i.i311, 1
  %i.x = icmp eq ptr %i.v, %i.t
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.03.0.i.i.i312 = phi ptr [ %i.v, %bb.d ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i311 = phi i64 [ %i.w, %bb.d ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.y = getelementptr i8, ptr %.sroa.03.0.i.i.i312, i64 8
  %.val7.i.i.i = load ptr, ptr %i.y, align 8, !noalias !39587, !nonnull !23, !noundef !23
  %i.z = getelementptr i8, ptr %.sroa.03.0.i.i.i312, i64 16
  %.val8.i.i.i = load i64, ptr %i.z, align 8, !noalias !39587, !noundef !23 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val8.i.i.i)
  %i.aa = sub i64 %.val12.i, %.val8.i.i.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !39588, !noalias !39587 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.ae, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h1a69ab7a4d6c1e9bE.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %.sroa.8.0.i.i.i311, %.lr.ph ] ; 13 uses
  %i.af = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.af, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16912
  %i.ah = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.4.0.i.ph.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !39589, !nonnull !23, !noundef !23
  %i.ak = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h1a69ab7a4d6c1e9bE.exit.i": ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39591)
  %.val.i.i13.i = load i64, ptr %2, align 8, !alias.scope !39592 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.al, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h1a69ab7a4d6c1e9bE.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39593
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit": ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16906
  %.sroa.037.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !39586 ; 5 uses
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = icmp eq i64 %.sroa.037.0.copyload.i, -9223372036854775808
  br i1 %i.ao, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit.thread", label %bb.k

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit.thread31": ; preds = %bb.a
  %.sroa.022.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !39586 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !39586 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !39586
  %i.ap = ptrtoint ptr %1 to i64
  %i.aq = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %i.aq, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h958bd256a1fbe7a3E.exit.thread31"
  %.sroa.0.0.copyload384 = load i64, ptr %3, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !39594
  %i.ar = tail call noalias noundef align 8 dereferenceable_or_null(16912) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16912, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !39594 ; 8 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %bb.h
end_hunk_7
begin_hunk_8_@"_ZN5milli5index5Index14external_id_of28_$u7b$$u7b$closure$u7d$$u7d$17h0b779c7030a962f0E":bb.a
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hbae52f9d82cb2d68E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #44
          to label %common.resume.i unwind label %bb.an, !noalias !42240

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !42239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !42239
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 92 ; 2 uses
  %.promoted75.i = load i32, ptr %i.az, align 4, !alias.scope !42248, !noalias !42239
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !42239, !nonnull !23, !align !33 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !noalias !42239 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !42239 ; 2 uses
  %.not.i.i.i.i.i.i123.i = icmp ugt i64 %i.be, %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bj = load i8, ptr %i.bi, align 8, !noalias !42239 ; 2 uses
  %i.bk = zext nneg i8 %i.bj to i64               ; 5 uses
  %i.bl = icmp ult i8 %i.bj, 5
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !42239, !nonnull !23, !align !33 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !42239 ; 10 uses
  %i.bp = load i64, ptr %i.i, align 8, !range !42, !noalias !42239
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.8.0.copyload3.i = load i64, ptr %.sroa.8.0..sroa_idx2.i, align 8, !noalias !42239
  %.sroa.9.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.9.0.copyload5.i = load ptr, ptr %.sroa.9.0..sroa_idx4.i, align 8, !noalias !42239
  %.sroa.10.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.10.0.copyload7.i = load i64, ptr %.sroa.10.0..sroa_idx6.i, align 8, !noalias !42239
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.520.sroa.7.0..sroa_idx95.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.520.sroa.8.0..sroa_idx98.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.promoted76.i = load i64, ptr %i.bc, align 8, !noalias !42239
  %.promoted.i = load ptr, ptr %i.br, align 8, !noalias !42239
  %i.bu = add i64 %.val1.i.i.i.i, 1               ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br label %.thread38.i

.thread38.i:                                      ; preds = %.thread38.i.backedge, %bb.p
  %.sroa.0.0.copyload186.i = phi ptr [ %.promoted.i, %bb.p ], [ %.sroa.0.0.copyload185.i, %.thread38.i.backedge ] ; 3 uses
  %.lcssa7480.i = phi i64 [ %.promoted76.i, %bb.p ], [ %.lcssa7478.i, %.thread38.i.backedge ] ; 4 uses
  %i.bw = phi i32 [ %.promoted75.i, %bb.p ], [ %i.dh, %.thread38.i.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42248)
  %.not.i.i = icmp eq i32 %i.bw, 1114112
  br i1 %.not.i.i, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %.thread38.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42249)
  call void @llvm.experimental.noalias.scope.decl(metadata !42250)
  call void @llvm.experimental.noalias.scope.decl(metadata !42251)
  call void @llvm.experimental.noalias.scope.decl(metadata !42252)
  call void @llvm.experimental.noalias.scope.decl(metadata !42253)
  %i.bx = icmp ult i64 %i.be, %.lcssa7480.i
  %brmerge.i = select i1 %i.bx, i1 true, i1 %.not.i.i.i.i.i.i123.i
  br i1 %brmerge.i, label %.loopexit.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.q
  call void @llvm.assume(i1 %i.bl)
  %.pre.i.i.i.i.i.i.i = load i8, ptr %i.bn, align 1, !alias.scope !42254, !noalias !42239 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.split.i.i.i.i.i.i.i
  %i.by = phi i64 [ %.lcssa7480.i, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.cl, %bb.t ] ; 4 uses
  %i.bz = sub nuw i64 %i.be, %i.by                ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.by ; 2 uses
  %i.cb = icmp ult i64 %i.bz, 16
  br i1 %i.cb, label %.preheader.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.r
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.by
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.s
  %.sroa.01.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %bb.s ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.05.i.i.i.i.i.i.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !42255, !noalias !42256, !noundef !23
  %i.ce = icmp eq i8 %i.cd, %.pre.i.i.i.i.i.i.i
  br i1 %i.ce, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cf = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, %i.bz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.cg = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %i.bz)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !42240 ; 2 uses

.noexc.i:                                         ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i
  %i.ch = extractvalue { i64, i64 } %i.cg, 0
  %i.ci = extractvalue { i64, i64 } %i.cg, 1
  %i.cj = trunc nuw i64 %i.ch to i1
  br i1 %i.cj, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i, label %.loopexit.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.noexc.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ck = add i64 %i.by, 1
  %i.cl = add i64 %i.ck, %.sroa.4.0.i27.i.i.i.i.i.i.i ; 8 uses
  %.not20.i.i.i.i.i.i.i = icmp ult i64 %i.cl, %i.bk
  %.not21.i.i.i.i.i.i.i = icmp ugt i64 %i.cl, %i.bg
  %or.cond.i.i.i.i.i.i124.i = or i1 %.not20.i.i.i.i.i.i.i, %.not21.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i124.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i
  %i.cm = icmp ult i64 %i.be, %i.cl
  br i1 %i.cm, label %.loopexit.i.i, label %bb.r

bb.u:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i
  %i.cn = sub nuw i64 %i.cl, %i.bk                ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cn
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.bh, i64 %i.bk), !noalias !42257
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.cp, label %"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h672d8c84208c8744E.exit.i.i.i.i", label %bb.t

"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h672d8c84208c8744E.exit.i.i.i.i": ; preds = %bb.u
  %i.cq = icmp eq i64 %i.cl, %i.bk
  br i1 %i.cq, label %.thread.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h672d8c84208c8744E.exit.i.i.i.i"
  %.not.i.i.i.i.i125.i = icmp ult i64 %i.cn, %.val1.i.i.i.i
  br i1 %.not.i.i.i.i.i125.i, label %bb.w, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.v
  %i.cr = icmp eq i64 %i.cn, %.val1.i.i.i.i
  br i1 %i.cr, label %bb.x, label %.invoke.i

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cn
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !42258, !noalias !42259, !noundef !23
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %.thread.i.i.i.i.i, label %.invoke.i

.thread.i.i.i.i.i:                                ; preds = %bb.w, %"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h672d8c84208c8744E.exit.i.i.i.i"
  %i.cv = add nuw i64 %i.cn, 1
  br label %bb.y

bb.x:                                             ; preds = %.split.i.i.i.i.i.i
  br i1 %i.bv, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i", label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread.i.i.i.i.i
  %i.cw = phi i64 [ %i.cv, %.thread.i.i.i.i.i ], [ %i.bu, %bb.x ] ; 6 uses
  %.not.i8.i.i.i.i.i = icmp ult i64 %i.cw, %.val1.i.i.i.i
  br i1 %.not.i8.i.i.i.i.i, label %bb.z, label %.split.i9.i.i.i.i.i

.split.i9.i.i.i.i.i:                              ; preds = %bb.y
  %i.cx = icmp eq i64 %i.cw, %.val1.i.i.i.i
  br i1 %i.cx, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i", label %.invoke.i

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !42260, !noalias !42259, !noundef !23
  %i.da = icmp sgt i8 %i.cz, -65
  br i1 %i.da, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i", label %.invoke.i

.invoke.i:                                        ; preds = %bb.z, %.split.i9.i.i.i.i.i, %bb.w, %.split.i.i.i.i.i.i
  %i.db = phi i64 [ 0, %.split.i.i.i.i.i.i ], [ 0, %bb.w ], [ %i.cw, %bb.z ], [ %i.cw, %.split.i9.i.i.i.i.i ]
  %i.dc = phi i64 [ %i.cn, %.split.i.i.i.i.i.i ], [ %i.cn, %bb.w ], [ %.val1.i.i.i.i, %bb.z ], [ %.val1.i.i.i.i, %.split.i9.i.i.i.i.i ]
  %i.dd = phi ptr [ @1438, %.split.i.i.i.i.i.i ], [ @1438, %bb.w ], [ @1439, %bb.z ], [ @1439, %.split.i9.i.i.i.i.i ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef %i.db, i64 noundef %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #46
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !42240

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.loopexit.i.i:                                    ; preds = %bb.t, %.noexc.i, %.preheader.i.i.i.i.i.i.i.i, %bb.s, %bb.q
  %.lcssa7477.i = phi i64 [ %i.be, %bb.s ], [ %.lcssa7480.i, %bb.q ], [ %i.be, %.preheader.i.i.i.i.i.i.i.i ], [ %i.be, %.noexc.i ], [ %i.cl, %bb.t ]
  store i32 1114112, ptr %i.az, align 4, !alias.scope !42248, !noalias !42239
  br label %bb.aa

"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i": ; preds = %bb.z, %.split.i9.i.i.i.i.i, %bb.x
  %i.de = phi i64 [ %i.cw, %bb.z ], [ %.val1.i.i.i.i, %.split.i9.i.i.i.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.de
  %i.dg = sub nuw i64 %.val1.i.i.i.i, %i.de
  br label %bb.ab

bb.aa:                                            ; preds = %.loopexit.i.i, %.thread38.i
  %.lcssa7479.i = phi i64 [ %.lcssa7480.i, %.thread38.i ], [ %.lcssa7477.i, %.loopexit.i.i ]
  %.not119.i = icmp ne ptr %.sroa.0.0.copyload186.i, null
  %or.cond174.not.i = select i1 %i.bq, i1 %.not119.i, i1 false
  br i1 %or.cond174.not.i, label %bb.ab, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i"

bb.ab:                                            ; preds = %bb.aa, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i"
  %.sroa.0.0.copyload185.i = phi ptr [ %.sroa.0.0.copyload186.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i" ], [ null, %bb.aa ]
  %.lcssa7478.i = phi i64 [ %i.cl, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i" ], [ %.lcssa7479.i, %bb.aa ]
  %i.dh = phi i32 [ %i.bw, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i" ], [ 1114112, %bb.aa ]
  %.sroa.0.037.i = phi ptr [ %.val.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i" ], [ %.sroa.0.0.copyload186.i, %bb.aa ]
  %.sroa.8.036.i = phi i64 [ %i.cn, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i" ], [ %.sroa.8.0.copyload3.i, %bb.aa ]
  %.sroa.9.035.i = phi ptr [ %i.df, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i" ], [ %.sroa.9.0.copyload5.i, %bb.aa ] ; 2 uses
  %.sroa.10.034.i = phi i64 [ %i.dg, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread28.i" ], [ %.sroa.10.0.copyload7.i, %bb.aa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.035.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.di = invoke { i16, i16 } @"_ZN100_$LT$milli..fields_ids_map..FieldsIdsMap$u20$as$u20$milli..documents..primary_key..FieldIdMapper$GT$2id17h1f0f4b5fdd6d3deeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.037.i, i64 noundef %.sroa.8.036.i)
          to label %"_ZN70_$LT$$RF$T$u20$as$u20$milli..documents..primary_key..FieldIdMapper$GT$2id17hc9a6a3df2bdb9ff1E.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !42240 ; 2 uses

"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i": ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !42239
  %i.dj = load i64, ptr %i.v, align 8, !noalias !42239, !noundef !23 ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i"
  %i.dl = add nsw i64 %i.dj, -1                   ; 3 uses
  store i64 %i.dl, ptr %i.v, align 8, !noalias !42239
  %i.dm = load i64, ptr %i.k, align 8, !range !22, !noalias !42239, !noundef !23
  %i.dn = icmp samesign ult i64 %i.dl, %i.dm
  call void @llvm.assume(i1 %i.dn)
  %i.do = load ptr, ptr %i.u, align 8, !noalias !42239, !nonnull !23, !noundef !23
  %i.dp = icmp ult i64 %i.dj, 128102389400760777
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [72 x i8], ptr %i.do, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i64 72, i1 false), !noalias !42240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !42239
  invoke void @_ZN5milli9documents11primary_key26validate_document_id_value17h9ce77eb21044e2f1E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.ak unwind label %bb.aj, !noalias !42240

bb.ad:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i", %bb.am
  %.sroa.29.sroa.0.1 = phi i64 [ undef, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i" ], [ %i.ei, %bb.am ]
  %.sroa.27.2 = phi ptr [ undef, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i" ], [ %.sroa.27.16.copyload64, %bb.am ]
  %.sroa.22.2 = phi i64 [ undef, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i" ], [ %.sroa.22.16.copyload56, %bb.am ]
  %.sroa.11.2 = phi i64 [ 95, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i" ], [ %.sroa.11.1, %bb.am ]
  %.val5.i.i = phi i64 [ 0, %"_ZN4core6option15Option$LT$T$GT$7or_else17h9dc2a4c191b0c56bE.exit.thread.i" ], [ %.val5.i.pre.i, %bb.am ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42261)
  %.val4.i.i = load ptr, ptr %i.u, align 8, !alias.scope !42261, !noalias !42239, !nonnull !23, !noundef !23 ; 4 uses
  %i.dr = icmp eq i64 %.val5.i.i, 0
  br i1 %i.dr, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2825e88f8cbd02dE.exit.i.i", label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ds = icmp eq i64 %i.du, %.val5.i.i
  br i1 %i.ds, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2825e88f8cbd02dE.exit.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.sroa.0.0.i.i.i.i221 = phi i64 [ %i.du, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [72 x i8], ptr %.val4.i.i, i64 %.sroa.0.0.i.i.i.i221
  %i.du = add i64 %.sroa.0.0.i.i.i.i221, 1        ; 4 uses
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.dt)
          to label %bb.ae unwind label %bb.ag, !noalias !42262, !inline_history !17

bb.af:                                            ; preds = %.lr.ph223
  %i.dv = add i64 %.sroa.0.1.i.i.i.i222, 1        ; 2 uses
  %i.dw = icmp eq i64 %i.dv, %.val5.i.i
  br i1 %i.dw, label %.body.i.i, label %.lr.ph223

bb.ag:                                            ; preds = %.lr.ph
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = icmp eq i64 %i.du, %.val5.i.i
  br i1 %i.dy, label %.body.i.i, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.ag, %bb.af
  %.sroa.0.1.i.i.i.i222 = phi i64 [ %i.dv, %bb.af ], [ %i.du, %bb.ag ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %.val4.i.i, i64 %.sroa.0.1.i.i.i.i222
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.dz) #44
          to label %bb.af unwind label %bb.ah, !noalias !42262, !inline_history !17

bb.ah:                                            ; preds = %.lr.ph223
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !42262, !inline_history !17
  unreachable

.body.i.i:                                        ; preds = %bb.af, %bb.ag
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !42261, !noalias !42239 ; 2 uses
  %i.eb = icmp eq i64 %.val2.i.i, 0
  br i1 %i.eb, label %common.resume.i, label %common.resume.sink.split.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2825e88f8cbd02dE.exit.i.i": ; preds = %bb.ae, %bb.ad
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !42261, !noalias !42239 ; 2 uses
  %i.ec = icmp eq i64 %.val.i.i, 0
  br i1 %i.ec, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hbae52f9d82cb2d68E.exit.i", label %bb.ai

bb.ai:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2825e88f8cbd02dE.exit.i.i"
  %i.ed = mul nuw i64 %.val.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !42262, !inline_history !133
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hbae52f9d82cb2d68E.exit.i"

common.resume.sink.split.i:                       ; preds = %.body.i145.i, %.body.i.i
  %.val2.i146.sink.i = phi i64 [ %.val2.i146.i, %.body.i145.i ], [ %.val2.i.i, %.body.i.i ]
  %.val4.i141.sink.i = phi ptr [ %.val4.i141.i, %.body.i145.i ], [ %.val4.i.i, %.body.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.fq, %.body.i145.i ], [ %i.dx, %.body.i.i ]
  %i.ee = mul nuw i64 %.val2.i146.sink.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i141.sink.i, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !42240
  br label %common.resume.i

common.resume.i:                                  ; preds = %.body.i145.i, %bb.aj, %common.resume.sink.split.i, %.body.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op.i = phi { ptr, i32 } [ %i.ef, %bb.aj ], [ %i.dx, %.body.i.i ], [ %i.fq, %.body.i145.i ], [ %lpad.loopexit.split-lp236, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hbae52f9d82cb2d68E.exit.i": ; preds = %bb.ai, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf2825e88f8cbd02dE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42239
  br label %_ZN5milli9documents11primary_key10PrimaryKey11document_id17hc6da45ece735f1bcE.exit.thread

bb.aj:                                            ; preds = %bb.ac
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hbae52f9d82cb2d68E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #44
          to label %common.resume.i unwind label %bb.an, !noalias !42240

bb.ak:                                            ; preds = %bb.ac
  %i.eg = load i64, ptr %i.e, align 8, !range !42246, !noalias !42239, !noundef !23 ; 2 uses
  %.not120.i = icmp eq i64 %i.eg, 95
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.22.16.copyload56 = load i64, ptr %i.eh, align 8, !noalias !42247
  %.sroa.27.16..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.27.16.copyload64 = load ptr, ptr %.sroa.27.16..sroa_idx63, align 8, !noalias !42247
  %.sroa.29.16..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ei = load i64, ptr %.sroa.29.16..sroa_idx68, align 8, !noalias !42247
  br i1 %.not120.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.29.sroa.9.0..sroa.29.8..sroa_idx67.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.29.sroa.9, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.29.sroa.9.0..sroa.29.8..sroa_idx67.sroa_idx, i64 288, i1 false), !noalias !42247
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.11.1 = phi i64 [ %i.eg, %bb.al ], [ 97, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !42239
  %.val5.i.pre.i = load i64, ptr %i.v, align 8, !alias.scope !42261, !noalias !42239
  br label %bb.ad

bb.an:                                            ; preds = %bb.aj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !42240
  unreachable

"_ZN70_$LT$$RF$T$u20$as$u20$milli..documents..primary_key..FieldIdMapper$GT$2id17hc9a6a3df2bdb9ff1E.exit.i": ; preds = %bb.ab
  %i.ek = extractvalue { i16, i16 } %i.di, 0
  %i.el = trunc i16 %i.ek to i1
  br i1 %i.el, label %bb.ao, label %.thread38.i.backedge

bb.ao:                                            ; preds = %"_ZN70_$LT$$RF$T$u20$as$u20$milli..documents..primary_key..FieldIdMapper$GT$2id17hc9a6a3df2bdb9ff1E.exit.i"
  %i.em = extractvalue { i16, i16 } %i.di, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42263)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.au, %bb.ao
  %i.en = phi i64 [ %i.fb, %bb.au ], [ 0, %bb.ao ] ; 3 uses
  %i.eo = icmp ugt i64 %i.en, -3
  br i1 %i.eo, label %.thread38.i.backedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ep = add nuw i64 %i.en, 2                    ; 4 uses
  %.not.i.i.i.i.i.i130.i = icmp ugt i64 %i.ep, %.sroa.7.0.copyload
  br i1 %.not.i.i.i.i.i.i130.i, label %.thread38.i.backedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.626.0.copyload, i64 %i.en
  %.val.i.i.i.i.i.i131.i = load i16, ptr %i.eq, align 1, !alias.scope !42264, !noalias !42265
  %i.er = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.i.i.i131.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42266
  store i32 0, ptr %i.a, align 4, !noalias !42266
  %i.es = sub nuw i64 %.sroa.7.0.copyload, %i.ep
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.626.0.copyload, i64 %i.ep
  %i.eu = invoke { i64, i64 } @_ZN4obkv6varint15varint_decode3217h75f985768505db00E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.et, i64 noundef %i.es, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !42240 ; 2 uses

.noexc139.i:                                      ; preds = %bb.ar
  %i.ev = extractvalue { i64, i64 } %i.eu, 0
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc139.i
  %i.ex = extractvalue { i64, i64 } %i.eu, 1
  %i.ey = add i64 %i.ex, %i.ep                    ; 3 uses
  %i.ez = load i32, ptr %i.a, align 4, !noalias !42266, !noundef !23
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42266
  %i.fb = add i64 %i.ey, %i.fa                    ; 3 uses
  %i.fc = icmp ult i64 %i.fb, %i.ey
  %.not37.i.i.i.i.i.i134.i = icmp ugt i64 %i.fb, %.sroa.7.0.copyload
  %or.cond.i.i.i.i.i.i135.i = or i1 %i.fc, %.not37.i.i.i.i.i.i134.i
  %.not.i3.i.i.i.i.i136.i = icmp ugt i16 %i.er, %i.em
  %or.cond47.i = select i1 %or.cond.i.i.i.i.i.i135.i, i1 true, i1 %.not.i3.i.i.i.i.i136.i
  br i1 %or.cond47.i, label %.thread38.i.backedge, label %bb.au

bb.at:                                            ; preds = %.noexc139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42266
  br label %.thread38.i.backedge

bb.au:                                            ; preds = %bb.as
  %.not.i.i.i.i.i137.i = icmp eq i16 %i.em, %i.er
  br i1 %.not.i.i.i.i.i137.i, label %bb.av, label %bb.ap

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.626.0.copyload, i64 %i.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !42239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42239
  store ptr %i.fd, ptr %i.c, align 8, !noalias !42239
  store i64 %i.fa, ptr %i.bs, align 8, !noalias !42239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false), !noalias !42239
  invoke fastcc void @_ZN10serde_json2de10from_trait17h96b81a72bc625ffaE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
end_hunk_8
begin_hunk_9_@"_ZN75_$LT$F$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref17h9eb5e5705c4661c7E":bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !48018
  unreachable

.body.i.i:                                        ; preds = %bb.ac
  invoke fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h6f29982b64b1060fE"(ptr nonnull align 1 %i.az, ptr nonnull @1384) #44
          to label %.thread.i.i unwind label %bb.ak, !noalias !48018

bb.ak:                                            ; preds = %.body.i.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !48018
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i, %.body.i.i.i
  %eh.lpad-body59.i.i = phi { ptr, i32 } [ %i.bi, %.body.i.i ], [ %i.bu, %.body.i.i.i ] ; 2 uses
  br i1 %i.av, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !48022
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread.i.i
  %i.cd = icmp eq i64 %.sroa.026.0.i, 0
  br i1 %i.cd, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %.sroa.026.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !48023
  br label %common.resume

bb.ao:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.av, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !48024
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.x
  %.pn.ph.i = phi { ptr, i32 } [ %i.ay, %bb.x ], [ %i.ce, %bb.ao ], [ %i.ce, %bb.ap ] ; 2 uses
  %i.cf = icmp eq i64 %.sroa.026.0.i, 0
  br i1 %i.cf, label %common.resume, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %.sroa.026.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !48025
  br label %common.resume

"_ZN75_$LT$F$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3ba981d2920c1486E.exit": ; preds = %bb.ae, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"
  store ptr %i.az, ptr %i.bk, align 8, !alias.scope !48020, !noalias !48018
  store ptr @1384, ptr %i.bl, align 8, !alias.scope !48020, !noalias !48018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !48018
  store i8 1, ptr %i.c, align 8, !noalias !48018
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !48018
  %.sroa.44.i.sroa.3.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.026.0.i, ptr %.sroa.44.i.sroa.3.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !48018
  %.sroa.44.i.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.5.0.i, ptr %.sroa.44.i.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !48018
  %.sroa.44.i.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.630.0.i, ptr %.sroa.44.i.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !48018
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 5, ptr %i.cg, align 8, !noalias !48018
  %.sroa.4.sroa.310.0..sroa.4.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 2, ptr %.sroa.4.sroa.310.0..sroa.4.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !48018
  %.sroa.48.i.sroa.3.0..sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.ai, ptr %.sroa.48.i.sroa.3.0..sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx.i.sroa_idx.i, align 8, !noalias !48018
  %.sroa.48.i.sroa.4.0..sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.48.i.sroa.4.0..sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx.i.sroa_idx.i, align 8, !noalias !48018
  %.sroa.48.i.sroa.5.0..sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.ai, ptr %.sroa.48.i.sroa.5.0..sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx.i.sroa_idx.i, align 8, !noalias !48018
  %i.ch = call noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$24extend_context_unchecked17h4c825d10de974be9E"(ptr noalias noundef nonnull align 8 %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.c), !noalias !48015 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !48018
  %i.ci = call fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17h31b016fa76daeeb7E"(ptr noalias noundef nonnull align 8 %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0), !noalias !48015 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.as:                                            ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %"_ZN75_$LT$F$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3ba981d2920c1486E.exit", %"_ZN12clap_builder5error14Error$LT$F$GT$12invalid_utf817h7bb6625c8890d148E.exit"
  %.sroa.4.0 = phi ptr [ %.sroa.0.0.i, %"_ZN12clap_builder5error14Error$LT$F$GT$12invalid_utf817h7bb6625c8890d148E.exit" ], [ %i.ch, %"_ZN75_$LT$F$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3ba981d2920c1486E.exit" ], [ %i.cl, %bb.as ]
  %.sroa.0.0 = phi i64 [ 1, %"_ZN12clap_builder5error14Error$LT$F$GT$12invalid_utf817h7bb6625c8890d148E.exit" ], [ 1, %"_ZN75_$LT$F$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3ba981d2920c1486E.exit" ], [ 0, %bb.as ]
  %i.cm = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.cn = insertvalue { i64, ptr } %i.cm, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.cn
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..DisplayError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7ed4872e24291928E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48028)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !48028, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !48028, !noundef !23
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !48028
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d91524a8f0444bdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48031)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !48031, !nonnull !23, !align !33, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !48031, !noundef !23
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !48031
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8e2eab0fdcb0788aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48034)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !48034, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !48034, !noundef !23
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !48034
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$rustls..msgs..handshake..HpkeKeyConfig$u20$as$u20$core..fmt..Debug$GT$3fmt17h8608dfde6f02df51E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2389, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2390, i64 noundef 9, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1530, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2391, i64 noundef 6, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2386, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2392, i64 noundef 10, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2387, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2393, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2388)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$rustls_pki_types..server_name..DnsName$u20$as$u20$core..fmt..Debug$GT$3fmt17h8a325572ec9450e6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2395, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2394)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$milli..vector..settings..EmbedderSource$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f1cd8c94d335d98E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !47, !noundef !23 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN76_$LT$milli..vector..settings..EmbedderSource$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f1cd8c94d335d98E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN76_$LT$milli..vector..settings..EmbedderSource$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f1cd8c94d335d98E.3093", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$milli..vector..settings..NestingContext$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1de01cfa3d1cc8E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !40, !noundef !23 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN76_$LT$milli..vector..settings..NestingContext$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1de01cfa3d1cc8E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN76_$LT$milli..vector..settings..NestingContext$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1de01cfa3d1cc8E.3094", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$rustls..msgs..base..PayloadU16$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha863204b116ac763E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.f, align 8, !noundef !23 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 %.val3
  %i.h = icmp samesign eq i64 %.val3, 0
  br i1 %i.h, label %_ZN6rustls4msgs4base3hex17h4b6500924fb6c699E.exit, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i": ; preds = %bb.a
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i": ; preds = %bb.c, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i"
  %.sroa.0.09.i = phi ptr [ %.val2, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.lr.ph.i" ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.09.i, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hb17afc92072fe9c7E", ptr %.sroa.45.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48037
  store ptr @217, ptr %i.a, align 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i, align 8
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8
  store ptr @994, ptr %.sroa.10.0..sroa_idx.i, align 8
  store i64 1, ptr %.sroa.11.0..sroa_idx.i, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !48037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48037
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN6rustls4msgs4base3hex17h4b6500924fb6c699E.exit

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i"
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN6rustls4msgs4base3hex17h4b6500924fb6c699E.exit, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2880f6b10c765458E.exit.i"

_ZN6rustls4msgs4base3hex17h4b6500924fb6c699E.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not7.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not7.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$17decode_hex_escape17h64bf11c59b8748daE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_ZN10serde_json4read11next_or_eof17hc8ed6f459f84c412E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.f = load i8, ptr %i.e, align 8, !range !31, !noundef !23
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !23, !align !35, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.l = load i8, ptr %i.k, align 1, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN10serde_json4read11next_or_eof17hc8ed6f459f84c412E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.m = load i8, ptr %i.d, align 8, !range !31, !noundef !23
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !23, !align !35, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN10serde_json4read11next_or_eof17hc8ed6f459f84c412E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.t = load i8, ptr %i.c, align 8, !range !31, !noundef !23
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !23, !align !35, !noundef !23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN10serde_json4read11next_or_eof17hc8ed6f459f84c412E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.aa = load i8, ptr %i.b, align 8, !range !31, !noundef !23
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !23, !align !35, !noundef !23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = tail call { i16, i16 } @_ZN10serde_json4read22decode_four_hex_digits17h7f6a17924b407a69E(i8 noundef %i.l, i8 noundef %i.s, i8 noundef %i.z, i8 noundef %i.ag) ; 2 uses
  %i.ai = extractvalue { i16, i16 } %i.ah, 0
  %i.aj = trunc i16 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = extractvalue { i16, i16 } %i.ah, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.ak, ptr %i.al, align 2
  store i16 0, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.am, align 8, !noundef !23
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2 = load i64, ptr %i.an, align 8, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48042
  store i64 12, ptr %i.a, align 8, !noalias !48041
  %i.ao = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val2), !noalias !48042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48042
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !48041
  store i16 1, ptr %0, align 8, !alias.scope !48041
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.b, %bb.f, %bb.h, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17hbb26df6a7ce39edfE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !31, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.e = load i8, ptr %i.d, align 1
  store i8 0, ptr %i.a, align 8
  %i.f = load i64, ptr %0, align 8, !range !29    ; 2 uses
  %.not = icmp ne i64 %i.f, -9223372036854775808
  %or.cond.not = select i1 %i.c, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !48045, !noundef !23 ; 3 uses
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2414)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb07e9855b4cfb8c6E.exit": ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !48045, !nonnull !23, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store i8 %i.e, ptr %i.l, align 1
  %i.m = add i64 %i.h, 1
  store i64 %i.m, ptr %i.g, align 8, !alias.scope !48045
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$9parse_str17h43d065069cce376bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
end_hunk_9
begin_hunk_10_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44a105064ade3344E":bb.a
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !54304, !noalias !54302
  %i.fn = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.fn, align 8, !alias.scope !54304, !noalias !54302
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.fo, align 8, !alias.scope !54304, !noalias !54302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !54305
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h3388872d8d85c13cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !54306
  %i.fp = load ptr, ptr %i.h, align 8, !noalias !54305, !noundef !23
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !54305
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h3388872d8d85c13cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !54306
  %i.fq = load ptr, ptr %i.h, align 8, !noalias !54305, !noundef !23
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !54302
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd70d8859abf08232E.exit.i.i"

bb.cd:                                            ; preds = %.noexc26.i.i.i
  %i.fr = load i32, ptr %i.bj, align 4, !noalias !54292, !noundef !23 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !54292
  call void @llvm.experimental.noalias.scope.decl(metadata !54307)
  call void @llvm.experimental.noalias.scope.decl(metadata !54308)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ch
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.gh, %bb.ch ], [ %i.bq, %bb.cd ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.ch ], [ %.ph582, %bb.cd ] ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.fu = load i16, ptr %i.ft, align 2, !noalias !54309, !noundef !23 ; 4 uses
  %i.fv = zext i16 %i.fu to i64                   ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fv
  %i.fx = icmp eq i16 %i.fu, 0
  br i1 %i.fx, label %._crit_edge, label %.lr.ph

bb.cf:                                            ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i572, i64 1 ; 2 uses
  %i.fz = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i571, 1
  %i.ga = icmp eq ptr %i.fy, %i.fw
  br i1 %i.ga, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ce, %bb.cf
  %.sroa.03.0.i.i.i.i.i.i.i572 = phi ptr [ %i.fy, %bb.cf ], [ %i.fs, %bb.ce ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i571 = phi i64 [ %i.fz, %bb.cf ], [ 0, %bb.ce ] ; 3 uses
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i572, align 1, !range !105, !noalias !54309, !noundef !23
  %i.gb = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %.sroa.10.020.i.i.i.i.i, i8 %.val7.i.i.i.i.i.i.i)
  switch i8 %i.gb, label %bb.cg [
    i8 -1, label %._crit_edge
    i8 0, label %bb.ci
    i8 1, label %bb.cf
  ]

bb.cg:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.cf, %.lr.ph, %bb.ce
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.fv, %bb.ce ], [ %i.fv, %bb.cf ], [ %.sroa.8.0.i.i.i.i.i.i.i571, %.lr.ph ] ; 13 uses
  %i.gc = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.gc, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.ge = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !54310, !nonnull !23, !noundef !23
  %i.gh = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.ce

bb.ci:                                            ; preds = %.lr.ph
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.sroa.8.0.i.i.i.i.i.i.i571
  store i32 %i.fr, ptr %i.gj, align 4, !noalias !54311
  br label %bb.h

bb.cj:                                            ; preds = %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !54312
  %i.gl = icmp ult i16 %i.fu, 11
  br i1 %i.gl, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gm = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !54313
  store i64 0, ptr %i.bl, align 8, !noalias !54313
  br i1 %i.gm, label %bb.cq, label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.fv
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.cm, label %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cl
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.gn, align 1, !alias.scope !54314, !noalias !54315
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i"

bb.cm:                                            ; preds = %bb.cl
  %i.go = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.go
  %i.gq = sub nuw nsw i64 %i.fv, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr nonnull align 1 %i.gn, i64 %i.gq, i1 false), !alias.scope !54314, !noalias !54315
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.gn, align 1, !alias.scope !54314, !noalias !54315
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.go
  %i.gu = shl nuw nsw i64 %i.gq, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gt, ptr nonnull align 4 %i.gs, i64 %i.gu, i1 false), !alias.scope !54316, !noalias !54315
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i": ; preds = %bb.cm, %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gw = add nuw nsw i16 %i.fu, 1
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.fr, ptr %i.gx, align 4, !alias.scope !54316, !noalias !54315
  store i16 %i.gw, ptr %i.gk, align 2, !noalias !54315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54312
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i"

bb.cn:                                            ; preds = %bb.ck
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.co [
    i64 5, label %bb.cq
    i64 6, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  store i64 6, ptr %i.bm, align 8, !noalias !54313
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h97bbb5946871872fE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !54230

.noexc29.i.i.i:                                   ; preds = %bb.co
  %i.gy = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc30.i.i.i

bb.cp:                                            ; preds = %bb.cn
  store i64 5, ptr %i.bm, align 8, !noalias !54313
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h97bbb5946871872fE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !54230

bb.cq:                                            ; preds = %bb.cn, %bb.ck
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.ck ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cn ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.bm, align 8, !noalias !54313
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h97bbb5946871872fE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !54230

.noexc30.i.i.i:                                   ; preds = %bb.cq, %bb.cp, %.noexc29.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.cp ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc29.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.cq ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cp ], [ %i.gy, %.noexc29.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cq ] ; 6 uses
  %i.gz = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !54313, !nonnull !23, !noundef !23 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 54 ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !noalias !54317, !noundef !23 ; 2 uses
  %i.hc = zext i16 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.cr, label %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.he, align 1, !alias.scope !54318, !noalias !54317
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i"

bb.cr:                                            ; preds = %.noexc30.i.i.i
  %i.hf = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf
  %i.hh = sub nuw nsw i64 %i.hc, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull align 1 %i.he, i64 %i.hh, i1 false), !alias.scope !54318, !noalias !54317
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.he, align 1, !alias.scope !54318, !noalias !54317
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hf
  %i.hl = shl nuw nsw i64 %i.hh, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hk, ptr nonnull align 4 %i.hj, i64 %i.hl, i1 false), !alias.scope !54319, !noalias !54317
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i": ; preds = %bb.cr, %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i41.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hn = add i16 %i.hb, 1
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.fr, ptr %i.ho, align 4, !alias.scope !54319, !noalias !54317
  store i16 %i.hn, ptr %i.ha, align 2, !noalias !54317
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !54320 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !54320 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !54320 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !54320
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !54320 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !54320 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54312
  %.not.i.i.i27.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 18
  br i1 %.not.i.i.i27.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i", label %bb.cs

bb.cs:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.hp = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !54321, !noundef !23 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.df, %bb.cs
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.df ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.1024.0.i.i.i.i.i.i, %bb.df ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.715.0.i.i.i.i.i.i, %bb.df ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.df ]
  call void @llvm.experimental.noalias.scope.decl(metadata !54322)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !54323
  %i.hq = call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !54323 ; 11 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ct, label %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i, !prof !26

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cu, !noalias !54323

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.ct
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.hq, align 8, !noalias !54323
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 54 ; 2 uses
  store i16 0, ptr %i.ht, align 2, !noalias !54323
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  store ptr %.ph582, ptr %i.hu, align 8, !noalias !54323
  %i.hv = add i64 %i.bq, 1
  store ptr %i.hq, ptr %.ph582, align 8, !noalias !54324
  %i.hw = getelementptr inbounds nuw i8, ptr %.ph582, i64 52
  store i16 0, ptr %i.hw, align 4, !noalias !54325
  store ptr %i.hq, ptr %i.ac, align 8, !alias.scope !54326, !noalias !54327
  store i64 %i.hv, ptr %i.bk, align 8, !alias.scope !54326, !noalias !54327
  %i.hx = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.bq
  br i1 %i.hx, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h62f8453a997e5a0dE.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !24

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h62f8453a997e5a0dE.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.ht, align 2, !noalias !54328
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.hy, align 8, !noalias !54328
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.hz, align 8, !noalias !54328
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.ia, align 8, !noalias !54328
  store ptr %i.hq, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, align 8, !noalias !54329
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, i64 52
  store i16 1, ptr %i.ib, align 4, !noalias !54329
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cs, %bb.df
  %i.ic = phi ptr [ %i.pa, %bb.df ], [ %i.hp, %bb.cs ] ; 13 uses
  %.sroa.0.097.i.i.i.i.i.i = phi i8 [ %.sroa.011.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 6 uses
  %.sroa.74.096.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 6 uses
  %.sroa.9.095.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.7.0.copyload.i.i.i.i.i.i, %bb.cs ]
  %.sroa.10.094.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 2 uses
  %.sroa.11.093.i.i.i.i.i.i = phi ptr [ %.sroa.1024.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 3 uses
  %.sroa.13.092.i.i.i.i.i.i = phi i64 [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.df ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.cs ]
  %i.id = add i64 %.sroa.10.094.i.i.i.i.i.i, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.9.095.i.i.i.i.i.i, i64 52
  %i.if = load i16, ptr %i.ie, align 4, !noalias !54321 ; 5 uses
  %i.ig = zext i16 %i.if to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54312
  %i.ih = icmp eq i64 %.sroa.13.092.i.i.i.i.i.i, %.sroa.10.094.i.i.i.i.i.i
  br i1 %i.ih, label %bb.cv, label %.invoke.i.i.i, !prof !24

.invoke.i.i.i:                                    ; preds = %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ii = phi ptr [ @1372, %.lr.ph.i.i.i.i.i.i ], [ @1366, %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i ]
  %i.ij = phi i64 [ 53, %.lr.ph.i.i.i.i.i.i ], [ 48, %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i ]
  %i.ik = phi ptr [ @1373, %.lr.ph.i.i.i.i.i.i ], [ @1367, %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ii, i64 noundef %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #46
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !54230

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 54
  %i.im = load i16, ptr %i.il, align 2, !noalias !54330, !noundef !23 ; 4 uses
  %i.in = icmp ult i16 %i.im, 11
  br i1 %i.in, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.io = icmp ult i16 %i.if, 5
  store ptr %i.ic, ptr %i.e, align 8, !noalias !54331
  store i64 %i.id, ptr %i.bn, align 8, !noalias !54331
  br i1 %i.io, label %bb.dc, label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 54
  %i.iq = zext nneg i16 %i.im to i64              ; 4 uses
  %i.ir = add nuw nsw i16 %i.im, 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.ic, i64 56 ; 2 uses
  %i.it = add nuw nsw i64 %i.ig, 1                ; 7 uses
  %.not.i.i45.not.i.i.i.i.i.i = icmp ult i16 %i.if, %i.im
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ig ; 3 uses
  br i1 %.not.i.i45.not.i.i.i.i.i.i, label %bb.cy, label %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cx
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.iu, align 1, !alias.scope !54332, !noalias !54333
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ig
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.iw, align 4, !alias.scope !54334, !noalias !54333
  br label %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.it
  %i.iy = sub nuw nsw i64 %i.iq, %i.ig            ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr nonnull align 1 %i.iu, i64 %i.iy, i1 false), !alias.scope !54332, !noalias !54333
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.iu, align 1, !alias.scope !54332, !noalias !54333
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ig ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.it
  %i.jc = shl nuw nsw i64 %i.iy, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr nonnull align 4 %i.ja, i64 %i.jc, i1 false), !alias.scope !54334, !noalias !54333
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.ja, align 4, !alias.scope !54334, !noalias !54333
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 72 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.it
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.ig
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nuw nsw i64 %i.iy, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull align 8 %i.je, i64 %i.jh, i1 false), !alias.scope !54335, !noalias !54333
  br label %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cy, %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ic, i64 72 ; 6 uses
  %i.jj = add nuw nsw i64 %i.iq, 2                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.it
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.jk, align 8, !alias.scope !54335, !noalias !54333
  store i16 %i.ir, ptr %i.ip, align 2, !noalias !54333
  %i.jl = icmp samesign ult i64 %i.it, %i.jj
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.thread.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i.i.i.i.i.i.i.i
  %i.jm = add nuw nsw i64 %i.iq, 1
  %i.jn = sub nsw i64 %i.jm, %i.ig
  %i.jo = sub nsw i64 %i.iq, %i.ig
  %xtraiter727 = and i64 %i.jn, 3                 ; 2 uses
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter729 = phi i64 [ %prol.iter729.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.jq = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !54336, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ic, ptr %i.js, align 8, !noalias !54337
  %i.jt = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 52
  store i16 %i.jt, ptr %i.ju, align 4, !noalias !54337
  %prol.iter729.next = add i64 %prol.iter729, 1   ; 2 uses
  %prol.iter729.cmp.not = icmp eq i64 %prol.iter729.next, %xtraiter727
  br i1 %prol.iter729.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !54166

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.it, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.jv = icmp ult i64 %i.jo, 3
  br i1 %i.jv, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !54336, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ic, ptr %i.jy, align 8, !noalias !54337
  %i.jz = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 52
  store i16 %i.jz, ptr %i.ka, align 4, !noalias !54337
  %i.kb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jw
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !54336, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ic, ptr %i.kd, align 8, !noalias !54337
  %i.ke = trunc nuw nsw i64 %i.jw to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 52
  store i16 %i.ke, ptr %i.kf, align 4, !noalias !54337
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kb
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !54336, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ic, ptr %i.ki, align 8, !noalias !54337
  %i.kj = trunc nuw nsw i64 %i.kb to i16
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 52
  store i16 %i.kj, ptr %i.kk, align 4, !noalias !54337
  %i.kl = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.km = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.km)
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kg
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !54336, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ic, ptr %i.ko, align 8, !noalias !54337
  %i.kp = trunc nuw nsw i64 %i.kg to i16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 52
  store i16 %i.kp, ptr %i.kq, align 4, !noalias !54337
end_hunk_10
begin_hunk_11_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44a105064ade3344E":bb.a
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  br i1 %lcmp.mod725.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol

.lr.ph.i.i44.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol = phi i64 [ %i.lu, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ %i.ky, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter726 = phi i64 [ %prol.iter726.next, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ]
  %i.lu = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.lv = icmp samesign ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !54342, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ks, ptr %i.lx, align 8, !noalias !54343
  %i.ly = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol to i16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 52
  store i16 %i.ly, ptr %i.lz, align 4, !noalias !54343
  %prol.iter726.next = add i64 %prol.iter726, 1   ; 2 uses
  %prol.iter726.cmp.not = icmp eq i64 %prol.iter726.next, %xtraiter724
  br i1 %prol.iter726.cmp.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, !llvm.loop !54179

.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr = phi i64 [ %i.ky, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ], [ %i.lu, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ]
  %i.ma = icmp ult i64 %i.lt, 3
  br i1 %i.ma, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

.lr.ph.i.i44.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i = phi i64 [ %i.mq, %.lr.ph.i.i44.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !54342, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ks, ptr %i.md, align 8, !noalias !54343
  %i.me = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i to i16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 52
  store i16 %i.me, ptr %i.mf, align 4, !noalias !54343
  %i.mg = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.mb
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !54342, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ks, ptr %i.mi, align 8, !noalias !54343
  %i.mj = trunc nuw nsw i64 %i.mb to i16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 52
  store i16 %i.mj, ptr %i.mk, align 4, !noalias !54343
  %i.ml = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.mg
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !54342, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ks, ptr %i.mn, align 8, !noalias !54343
  %i.mo = trunc nuw nsw i64 %i.mg to i16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 52
  store i16 %i.mo, ptr %i.mp, align 4, !noalias !54343
  %i.mq = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.mr = icmp ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.mr)
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.ml
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !54342, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.ks, ptr %i.mt, align 8, !noalias !54343
  %i.mu = trunc nuw nsw i64 %i.ml to i16
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 52
  store i16 %i.mu, ptr %i.mv, align 4, !noalias !54343
  %exitcond.not.i.i46.i.i.i.i.i.i.i.3 = icmp eq i64 %i.mq, %i.lo
  br i1 %exitcond.not.i.i46.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i43.i.i.i.i.i.i.i
  %.sroa.715.0.copyload17.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !54344
  %.sroa.921.0.copyload23.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !54344
  %.sroa.1024.0.copyload26.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !noalias !54344
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.i.i.i.i.i.i"

.noexc35.i.i.i:                                   ; preds = %bb.db, %.noexc34.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.kr, %.noexc34.i.i.i ], [ 0, %bb.db ] ; 9 uses
  %i.mw = load ptr, ptr %i.bp, align 8, !noalias !54331, !nonnull !23, !noundef !23 ; 12 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 54 ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2, !noalias !54345, !noundef !23 ; 2 uses
  %i.mz = zext i16 %i.my to i64                   ; 5 uses
  %i.na = add i16 %i.my, 1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 56 ; 2 uses
  %i.nc = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i49.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.mz
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i49.not.i.i.i.i.i.i.i, label %bb.de, label %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i50.i.i.i.i.i.i.i: ; preds = %.noexc35.i.i.i
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.nd, align 1, !alias.scope !54346, !noalias !54345
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.nf, align 4, !alias.scope !54347, !noalias !54345
  br label %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i51.i.i.i.i.i.i.i

bb.de:                                            ; preds = %.noexc35.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc
  %i.nh = sub nuw nsw i64 %i.mz, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr nonnull align 1 %i.nd, i64 %i.nh, i1 false), !alias.scope !54346, !noalias !54345
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.nd, align 1, !alias.scope !54346, !noalias !54345
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nc
  %i.nl = shl nuw nsw i64 %i.nh, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nk, ptr nonnull align 4 %i.nj, i64 %i.nl, i1 false), !alias.scope !54347, !noalias !54345
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.nj, align 4, !alias.scope !54347, !noalias !54345
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mw, i64 72 ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nc
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = shl nuw nsw i64 %i.nh, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.np, ptr nonnull align 8 %i.nn, i64 %i.nq, i1 false), !alias.scope !54348, !noalias !54345
  br label %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i51.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i51.i.i.i.i.i.i.i: ; preds = %bb.de, %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i50.i.i.i.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mw, i64 72 ; 6 uses
  %i.ns = add nuw nsw i64 %i.mz, 2                ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.nc
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.nt, align 8, !alias.scope !54348, !noalias !54345
  store i16 %i.na, ptr %i.mx, align 2, !noalias !54345
  %i.nu = icmp samesign ult i64 %i.nc, %i.ns
  br i1 %i.nu, label %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i"

.lr.ph.i.i52.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i51.i.i.i.i.i.i.i
  %i.nv = add nuw nsw i64 %i.mz, 1
  %i.nw = sub nsw i64 %i.nv, %.sroa.10.1.i.i.i.i.i.i.i
  %i.nx = sub nsw i64 %i.mz, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.nw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol

.lr.ph.i.i52.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol = phi i64 [ %i.ny, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ %i.nc, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ]
  %i.ny = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.nz = icmp samesign ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.nz)
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !54349, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.mw, ptr %i.ob, align 8, !noalias !54350
  %i.oc = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol to i16
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 52
  store i16 %i.oc, ptr %i.od, align 4, !noalias !54350
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, !llvm.loop !54192

.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr = phi i64 [ %i.nc, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ], [ %i.ny, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ]
  %i.oe = icmp ult i64 %i.nx, 3
  br i1 %i.oe, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

.lr.ph.i.i52.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i = phi i64 [ %i.ou, %.lr.ph.i.i52.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.of = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i
  %i.oh = load ptr, ptr %i.og, align 8, !noalias !54349, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.mw, ptr %i.oh, align 8, !noalias !54350
  %i.oi = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i to i16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 52
  store i16 %i.oi, ptr %i.oj, align 4, !noalias !54350
  %i.ok = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.of
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !54349, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.mw, ptr %i.om, align 8, !noalias !54350
  %i.on = trunc nuw nsw i64 %i.of to i16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 52
  store i16 %i.on, ptr %i.oo, align 4, !noalias !54350
  %i.op = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.ok
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !54349, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.mw, ptr %i.or, align 8, !noalias !54350
  %i.os = trunc nuw nsw i64 %i.ok to i16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 52
  store i16 %i.os, ptr %i.ot, align 4, !noalias !54350
  %i.ou = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ov = icmp ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ov)
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.op
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !54349, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.mw, ptr %i.ox, align 8, !noalias !54350
  %i.oy = trunc nuw nsw i64 %i.op to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 52
  store i16 %i.oy, ptr %i.oz, align 4, !noalias !54350
  %exitcond.not.i.i54.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ou, %i.ns
  br i1 %exitcond.not.i.i54.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i51.i.i.i.i.i.i.i
  %.sroa.715.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !54344
  %.sroa.818.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.818.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !54344
  %.sroa.921.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !54344
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.thread.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h72257b827cb63fd0E.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54312
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i"
  %.sroa.1024.0.i.i.i.i.i.i = phi ptr [ %i.mw, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.1024.0.copyload26.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.921.0.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.921.0.copyload23.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i" ]
  %.sroa.818.0.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i" ], [ %i.ks, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.715.0.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.715.0.copyload17.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h7adf2de33bb714e3E.exit48.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.011.0.i.i.i.i.i.i = load i8, ptr %i.d, align 8, !noalias !54344 ; 3 uses
  %.sroa.1127.0.copyload29.i.i.i.i.i.i = load i64, ptr %.sroa.1127.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !54344 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54312
  %.not41.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0.i.i.i.i.i.i, 18
  br i1 %.not41.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i", label %bb.df

bb.df:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.818.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1024.0.i.i.i.i.i.i) ]
  %i.pa = load ptr, ptr %.sroa.818.0.i.i.i.i.i.i, align 8, !noalias !54321, !noundef !23 ; 2 uses
  %.not.i.i.i.i28.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i.i28.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.cd
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !54351
  %i.pb = call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !54351 ; 7 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.dg, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h52809160ba445cc4E.exit.i.i.i.i.i", !prof !26

bb.dg:                                            ; preds = %.thread.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc37.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !54230

.noexc37.i.i.i:                                   ; preds = %bb.dg
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h52809160ba445cc4E.exit.i.i.i.i.i": ; preds = %.thread.i.i.i.i
  store ptr null, ptr %i.pb, align 8, !noalias !54351
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 54
  store ptr %i.pb, ptr %i.ac, align 8, !alias.scope !54307, !noalias !54352
  store i64 0, ptr %i.bk, align 8, !alias.scope !54307, !noalias !54352
  store i16 1, ptr %i.pd, align 2, !noalias !54353
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.pe, align 8, !noalias !54353
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i32 %i.fr, ptr %i.pf, align 8, !noalias !54353
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h52809160ba445cc4E.exit.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.thread.i.i.i.i.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h62f8453a997e5a0dE.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i"
  %i.pg = phi ptr [ %.ph582, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i" ], [ %i.pb, %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h52809160ba445cc4E.exit.i.i.i.i.i" ], [ %.ph582, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.thread.i.i.i.i.i.i" ], [ %i.hq, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h62f8453a997e5a0dE.exit.i.i.i.i.i.i" ], [ %.ph582, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i" ], [ %.ph582, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17ha239fef5f41a15a5E.exit.i.i.i.i.i.i" ]
  %i.ph = add i64 %.ph, 1                         ; 2 uses
  store i64 %i.ph, ptr %i.bd, align 8, !alias.scope !54307, !noalias !54352
  br label %.outer

_ZN10serde_core2de9MapAccess10next_entry17hf7f81f5e260ef634E.exit.thread43.i.i.i: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !noalias !54354
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd70d8859abf08232E.exit.i.i"

common.resume.i.i:                                ; preds = %bb.dv, %bb.dl, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.qd, %bb.dv ], [ %i.pr, %bb.dl ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.dh:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !54230
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd70d8859abf08232E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17hf7f81f5e260ef634E.exit.thread43.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i"
  %.sroa.029.0.i.i = phi i64 [ 1, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17hf7f81f5e260ef634E.exit.thread43.i.i.i ] ; 2 uses
  %.sroa.730.0.i.i = phi ptr [ %.sroa.1238.0.ph.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i" ], [ %.ph582, %_ZN10serde_core2de9MapAccess10next_entry17hf7f81f5e260ef634E.exit.thread43.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !54225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !54221
  %i.pj = load i8, ptr %i.at, align 8, !range !31, !alias.scope !54223, !noundef !23
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !54221
  store i64 24, ptr %i.af, align 8, !noalias !54221
  %i.pl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af), !noalias !54222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !54221
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pl, ptr %i.pm, align 8, !alias.scope !54222
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hb435ca113ec26925E.exit"

bb.dj:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd70d8859abf08232E.exit.i.i"
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.po = load i8, ptr %i.pn, align 1, !alias.scope !54223, !noundef !23
  %i.pp = add i8 %i.po, 1
  store i8 %i.pp, ptr %i.pn, align 1, !alias.scope !54223
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd70d8859abf08232E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !54221
  store i64 %.sroa.029.0.i.i, ptr %i.ae, align 8, !noalias !54221
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.730.0.i.i, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !noalias !54221
  %.sroa.931.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, i64 16, i1 false), !noalias !54221
  %i.pq = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.dm unwind label %bb.dl, !noalias !54222 ; 9 uses

bb.dl:                                            ; preds = %bb.dk
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17hf76a331c48af0334E"(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #44
          to label %common.resume.i.i unwind label %bb.dr, !noalias !54222

bb.dm:                                            ; preds = %bb.dk
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i, align 8, !noalias !54221 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !54221 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !54221
  %i.ps = trunc nuw i64 %.sroa.029.0.i.i to i1
  br i1 %i.ps, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not.i.i = icmp eq ptr %i.pq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  br i1 %.not.i.i, label %bb.dw, label %bb.dp

bb.do:                                            ; preds = %bb.dm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.730.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  %.not47.i.i = icmp eq ptr %i.pq, null
  br i1 %.not47.i.i, label %.thread41.i.i, label %bb.ds

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !54355
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.730.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i", label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !54356, !noalias !54355
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.730.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !54356, !noalias !54355
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !54356, !noalias !54355
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !54356, !noalias !54355
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.730.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !54356, !noalias !54355
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !54356, !noalias !54355
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i": ; preds = %bb.dq, %bb.dp
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.dq ], [ 0, %bb.dp ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.dq ], [ 0, %bb.dp ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !54356, !noalias !54355
  %i.pt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.pt, align 8, !alias.scope !54356, !noalias !54355
  %i.pu = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.pu, align 8, !alias.scope !54356, !noalias !54355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54357
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h3388872d8d85c13cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !54222
  %i.pv = load ptr, ptr %i.b, align 8, !noalias !54357, !noundef !23
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.lr.ph.i.i.i.i25.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i", %.lr.ph.i.i.i.i25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54357
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h3388872d8d85c13cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !54222
  %i.pw = load ptr, ptr %i.b, align 8, !noalias !54357, !noundef !23
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i26.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.thread44.i.i:                                    ; preds = %.lr.ph.i.i.i.i25.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54355
  br label %.thread41.i.i

bb.dr:                                            ; preds = %bb.dl
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !54222
  unreachable

bb.ds:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !54358)
  call void @llvm.experimental.noalias.scope.decl(metadata !54359)
  %i.py = load i64, ptr %i.pq, align 8, !range !51, !alias.scope !54360, !noalias !54361, !noundef !23
  switch i64 %i.py, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.dt
    i64 1, label %bb.du
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.pz, align 8, !alias.scope !54360, !noalias !54361, !noundef !23 ; 2 uses
  %i.qa = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.qa, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.dt
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.qb, align 8, !alias.scope !54360, !noalias !54361, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !54362
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i"

bb.du:                                            ; preds = %bb.ds
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.qc)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" unwind label %bb.dv, !noalias !54361

bb.dv:                                            ; preds = %bb.du
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pq, i64 noundef 40, i64 noundef 8) #45, !noalias !54361
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i": ; preds = %bb.du, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.dt, %bb.ds
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pq, i64 noundef 40, i64 noundef 8) #45, !noalias !54361
  br label %.thread41.i.i

.thread41.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", %.thread44.i.i, %bb.do, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.pq, %.thread44.i.i ], [ %i.aw, %bb.e ], [ %.sroa.730.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" ], [ %.sroa.730.0.i.i, %bb.do ]
end_hunk_11
begin_hunk_12_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h52964c2ef2ec1b83E":bb.a
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !55450, !noalias !55448
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.cb, align 8, !alias.scope !55450, !noalias !55448
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.cc, align 8, !alias.scope !55450, !noalias !55448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !55451
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hdc275c56da1d7f62E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !55452
  %i.cd = load ptr, ptr %i.h, align 8, !noalias !55451, !noundef !23
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !55451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !55451
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hdc275c56da1d7f62E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !55452
  %i.ce = load ptr, ptr %i.h, align 8, !noalias !55451, !noundef !23
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !55451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !55448
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h44c222b797ed86ddE.exit.i.i"

bb.s:                                             ; preds = %.noexc8.i.i.i
  %i.cf = load i32, ptr %i.as, align 4, !noalias !55435, !noundef !23 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !55435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55454)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.w
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.w ], [ %.ph359, %bb.s ] ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !55455, !noundef !23 ; 4 uses
  %i.cj = zext i16 %i.ci to i64                   ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj
  %i.cl = icmp eq i16 %i.ci, 0
  br i1 %i.cl, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i351, i64 1 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i350, 1
  %i.co = icmp eq ptr %i.cm, %i.ck
  br i1 %i.co, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.sroa.03.0.i.i.i.i.i.i.i351 = phi ptr [ %i.cm, %bb.u ], [ %i.cg, %bb.t ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i350 = phi i64 [ %i.cn, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i351, align 1, !range !54, !noalias !55455, !noundef !23
  %i.cp = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 5) %i.bl, i8 %.val7.i.i.i.i.i.i.i)
  switch i8 %i.cp, label %bb.v [
    i8 -1, label %._crit_edge
    i8 0, label %bb.x
    i8 1, label %bb.u
  ]

bb.v:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.u, %.lr.ph, %bb.t
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.cj, %bb.t ], [ %i.cj, %bb.u ], [ %.sroa.8.0.i.i.i.i.i.i.i350, %.lr.ph ] ; 13 uses
  %i.cq = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.cq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.cs = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !55456, !nonnull !23, !noundef !23
  %i.cv = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.sroa.8.0.i.i.i.i.i.i.i350
  store i32 %i.cf, ptr %i.cx, align 4, !noalias !55457
  br label %bb.h

bb.y:                                             ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !55458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !55458
  %i.cz = icmp ult i16 %i.ci, 11
  br i1 %i.cz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !55459
  store i64 0, ptr %i.au, align 8, !noalias !55459
  br i1 %i.da, label %bb.af, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.cj
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.ab, label %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !55460, !noalias !55461
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dc
  %i.de = sub nuw nsw i64 %i.cj, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.db, i64 %i.de, i1 false), !alias.scope !55460, !noalias !55461
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !55460, !noalias !55461
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.di = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr nonnull align 4 %i.dg, i64 %i.di, i1 false), !alias.scope !55462, !noalias !55461
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i": ; preds = %bb.ab, %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.dk = add nuw nsw i16 %i.ci, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.dl, align 4, !alias.scope !55462, !noalias !55461
  store i16 %i.dk, ptr %i.cy, align 2, !noalias !55461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !55458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !55458
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i"

bb.ac:                                            ; preds = %bb.z
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.ad [
    i64 5, label %bb.af
    i64 6, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  store i64 6, ptr %i.av, align 8, !noalias !55459
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hf06274b00cab2432E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !55433

.noexc11.i.i.i:                                   ; preds = %bb.ad
  %i.dm = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc12.i.i.i

bb.ae:                                            ; preds = %bb.ac
  store i64 5, ptr %i.av, align 8, !noalias !55459
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hf06274b00cab2432E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !55433

bb.af:                                            ; preds = %bb.ac, %bb.z
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.z ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.ac ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !55459
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hf06274b00cab2432E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !55433

.noexc12.i.i.i:                                   ; preds = %bb.af, %bb.ae, %.noexc11.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.ae ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc11.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.af ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.dm, %.noexc11.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.af ] ; 6 uses
  %i.dn = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !55459, !nonnull !23, !noundef !23 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 54 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !noalias !55463, !noundef !23 ; 2 uses
  %i.dq = zext i16 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.ag, label %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !55464, !noalias !55463
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i"

bb.ag:                                            ; preds = %.noexc12.i.i.i
  %i.dt = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = sub nuw nsw i64 %i.dq, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.ds, i64 %i.dv, i1 false), !alias.scope !55464, !noalias !55463
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !55464, !noalias !55463
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dt
  %i.dz = shl nuw nsw i64 %i.dv, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull align 4 %i.dx, i64 %i.dz, i1 false), !alias.scope !55465, !noalias !55463
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i": ; preds = %bb.ag, %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i41.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eb = add i16 %i.dp, 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.ec, align 4, !alias.scope !55465, !noalias !55463
  store i16 %i.eb, ptr %i.do, align 2, !noalias !55463
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !55466 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !55466 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !55466 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !55466
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !55466 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !55466 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !55458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !55458
  %.not.i.i.i9.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i9.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.ed = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !55467, !noundef !23 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.au, %bb.ah
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.au ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1024.0.i.i.i.i.i.i, %bb.au ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.715.0.i.i.i.i.i.i, %bb.au ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.au ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55468)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !55469
  %i.ee = tail call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !55469 ; 11 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ai, label %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i, !prof !26

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !55469

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.ee, align 8, !noalias !55469
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 54 ; 2 uses
  store i16 0, ptr %i.eh, align 2, !noalias !55469
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  store ptr %.ph359, ptr %i.ei, align 8, !noalias !55469
  %i.ej = add i64 %i.az, 1
  store ptr %i.ee, ptr %.ph359, align 8, !noalias !55470
  %i.ek = getelementptr inbounds nuw i8, ptr %.ph359, i64 52
  store i16 0, ptr %i.ek, align 4, !noalias !55471
  store ptr %i.ee, ptr %i.o, align 8, !alias.scope !55472, !noalias !55473
  store i64 %i.ej, ptr %i.at, align 8, !alias.scope !55472, !noalias !55473
  %i.el = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.az
  br i1 %i.el, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h3ea8209e4b043a20E.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !24

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h3ea8209e4b043a20E.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.eh, align 2, !noalias !55474
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.em, align 8, !noalias !55474
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.en, align 8, !noalias !55474
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.eo, align 8, !noalias !55474
  store ptr %i.ee, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, align 8, !noalias !55475
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, i64 52
  store i16 1, ptr %i.ep, align 4, !noalias !55475
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %bb.au
  %i.eq = phi ptr [ %i.lo, %bb.au ], [ %i.ed, %bb.ah ] ; 13 uses
  %.sroa.0.097.i.i.i.i.i.i = phi i8 [ %.sroa.011.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 6 uses
  %.sroa.74.096.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 6 uses
  %.sroa.9.095.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.7.0.copyload.i.i.i.i.i.i, %bb.ah ]
  %.sroa.10.094.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.11.093.i.i.i.i.i.i = phi ptr [ %.sroa.1024.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 3 uses
  %.sroa.13.092.i.i.i.i.i.i = phi i64 [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.au ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ah ]
  %i.er = add i64 %.sroa.10.094.i.i.i.i.i.i, 1
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.9.095.i.i.i.i.i.i, i64 52
  %i.et = load i16, ptr %i.es, align 4, !noalias !55467 ; 5 uses
  %i.eu = zext i16 %i.et to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !55458
  %i.ev = icmp eq i64 %.sroa.13.092.i.i.i.i.i.i, %.sroa.10.094.i.i.i.i.i.i
  br i1 %i.ev, label %bb.ak, label %.invoke.i.i.i, !prof !24

.invoke.i.i.i:                                    ; preds = %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ew = phi ptr [ @1372, %.lr.ph.i.i.i.i.i.i ], [ @1366, %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i ]
  %i.ex = phi i64 [ 53, %.lr.ph.i.i.i.i.i.i ], [ 48, %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i ]
  %i.ey = phi ptr [ @1373, %.lr.ph.i.i.i.i.i.i ], [ @1367, %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ew, i64 noundef %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey) #46
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !55433

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 54
  %i.fa = load i16, ptr %i.ez, align 2, !noalias !55476, !noundef !23 ; 4 uses
  %i.fb = icmp ult i16 %i.fa, 11
  br i1 %i.fb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = icmp ult i16 %i.et, 5
  store ptr %i.eq, ptr %i.e, align 8, !noalias !55477
  store i64 %i.er, ptr %i.aw, align 8, !noalias !55477
  br i1 %i.fc, label %bb.ar, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 54
  %i.fe = zext nneg i16 %i.fa to i64              ; 4 uses
  %i.ff = add nuw nsw i16 %i.fa, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 2 uses
  %i.fh = add nuw nsw i64 %i.eu, 1                ; 7 uses
  %.not.i.i45.not.i.i.i.i.i.i = icmp ult i16 %i.et, %i.fa
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.eu ; 3 uses
  br i1 %.not.i.i45.not.i.i.i.i.i.i, label %bb.an, label %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.fi, align 1, !alias.scope !55478, !noalias !55479
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.eu
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.fk, align 4, !alias.scope !55480, !noalias !55479
  br label %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  %i.fm = sub nuw nsw i64 %i.fe, %i.eu            ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull align 1 %i.fi, i64 %i.fm, i1 false), !alias.scope !55478, !noalias !55479
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.fi, align 1, !alias.scope !55478, !noalias !55479
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.eu ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fh
  %i.fq = shl nuw nsw i64 %i.fm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr nonnull align 4 %i.fo, i64 %i.fq, i1 false), !alias.scope !55480, !noalias !55479
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.fo, align 4, !alias.scope !55480, !noalias !55479
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fh
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.eu
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = shl nuw nsw i64 %i.fm, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr nonnull align 8 %i.fs, i64 %i.fv, i1 false), !alias.scope !55481, !noalias !55479
  br label %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.an, %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 6 uses
  %i.fx = add nuw nsw i64 %i.fe, 2                ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fh
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.fy, align 8, !alias.scope !55481, !noalias !55479
  store i16 %i.ff, ptr %i.fd, align 2, !noalias !55479
  %i.fz = icmp samesign ult i64 %i.fh, %i.fx
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.thread.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i.i.i.i.i.i.i.i
  %i.ga = add nuw nsw i64 %i.fe, 1
  %i.gb = sub nsw i64 %i.ga, %i.eu
  %i.gc = sub nsw i64 %i.fe, %i.eu
  %xtraiter451 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  br i1 %lcmp.mod452.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter453 = phi i64 [ %prol.iter453.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.gd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ge = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !55482, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eq, ptr %i.gg, align 8, !noalias !55483
  %i.gh = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 52
  store i16 %i.gh, ptr %i.gi, align 4, !noalias !55483
  %prol.iter453.next = add i64 %prol.iter453, 1   ; 2 uses
  %prol.iter453.cmp.not = icmp eq i64 %prol.iter453.next, %xtraiter451
  br i1 %prol.iter453.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !55369

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.gj = icmp ult i64 %i.gc, 3
  br i1 %i.gj, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !55482, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eq, ptr %i.gm, align 8, !noalias !55483
  %i.gn = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 52
  store i16 %i.gn, ptr %i.go, align 4, !noalias !55483
  %i.gp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gk
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !55482, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eq, ptr %i.gr, align 8, !noalias !55483
  %i.gs = trunc nuw nsw i64 %i.gk to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 52
  store i16 %i.gs, ptr %i.gt, align 4, !noalias !55483
  %i.gu = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gp
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !55482, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eq, ptr %i.gw, align 8, !noalias !55483
  %i.gx = trunc nuw nsw i64 %i.gp to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 52
  store i16 %i.gx, ptr %i.gy, align 4, !noalias !55483
  %i.gz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ha = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gu
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !55482, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.eq, ptr %i.hc, align 8, !noalias !55483
  %i.hd = trunc nuw nsw i64 %i.gu to i16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 52
  store i16 %i.hd, ptr %i.he, align 4, !noalias !55483
end_hunk_12
begin_hunk_13_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h52964c2ef2ec1b83E":bb.a
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol

.lr.ph.i.i44.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol = phi i64 [ %i.ii, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ %i.hm, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter450 = phi i64 [ %prol.iter450.next, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ]
  %i.ii = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ij = icmp samesign ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !55488, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hg, ptr %i.il, align 8, !noalias !55489
  %i.im = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 52
  store i16 %i.im, ptr %i.in, align 4, !noalias !55489
  %prol.iter450.next = add i64 %prol.iter450, 1   ; 2 uses
  %prol.iter450.cmp.not = icmp eq i64 %prol.iter450.next, %xtraiter448
  br i1 %prol.iter450.cmp.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, !llvm.loop !55382

.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr = phi i64 [ %i.hm, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ], [ %i.ii, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ]
  %i.io = icmp ult i64 %i.ih, 3
  br i1 %i.io, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

.lr.ph.i.i44.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i.i44.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ip = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !55488, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hg, ptr %i.ir, align 8, !noalias !55489
  %i.is = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i to i16
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 52
  store i16 %i.is, ptr %i.it, align 4, !noalias !55489
  %i.iu = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ip
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !55488, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hg, ptr %i.iw, align 8, !noalias !55489
  %i.ix = trunc nuw nsw i64 %i.ip to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 52
  store i16 %i.ix, ptr %i.iy, align 4, !noalias !55489
  %i.iz = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.iu
  %i.jb = load ptr, ptr %i.ja, align 8, !noalias !55488, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hg, ptr %i.jb, align 8, !noalias !55489
  %i.jc = trunc nuw nsw i64 %i.iu to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 52
  store i16 %i.jc, ptr %i.jd, align 4, !noalias !55489
  %i.je = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jf = icmp ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.iz
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !55488, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hg, ptr %i.jh, align 8, !noalias !55489
  %i.ji = trunc nuw nsw i64 %i.iz to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 52
  store i16 %i.ji, ptr %i.jj, align 4, !noalias !55489
  %exitcond.not.i.i46.i.i.i.i.i.i.i.3 = icmp eq i64 %i.je, %i.ic
  br i1 %exitcond.not.i.i46.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i43.i.i.i.i.i.i.i
  %.sroa.715.0.copyload17.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !55490
  %.sroa.921.0.copyload23.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !55490
  %.sroa.1024.0.copyload26.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !55490
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.i.i.i.i.i.i"

.noexc17.i.i.i:                                   ; preds = %bb.aq, %.noexc16.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.hf, %.noexc16.i.i.i ], [ 0, %bb.aq ] ; 9 uses
  %i.jk = load ptr, ptr %i.ay, align 8, !noalias !55477, !nonnull !23, !noundef !23 ; 12 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 54 ; 2 uses
  %i.jm = load i16, ptr %i.jl, align 2, !noalias !55491, !noundef !23 ; 2 uses
  %i.jn = zext i16 %i.jm to i64                   ; 5 uses
  %i.jo = add i16 %i.jm, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 56 ; 2 uses
  %i.jq = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i49.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.jn
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i49.not.i.i.i.i.i.i.i, label %bb.at, label %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i50.i.i.i.i.i.i.i: ; preds = %.noexc17.i.i.i
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.jr, align 1, !alias.scope !55492, !noalias !55491
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.jt, align 4, !alias.scope !55493, !noalias !55491
  br label %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i51.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.noexc17.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jq
  %i.jv = sub nuw nsw i64 %i.jn, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr nonnull align 1 %i.jr, i64 %i.jv, i1 false), !alias.scope !55492, !noalias !55491
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.jr, align 1, !alias.scope !55492, !noalias !55491
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jq
  %i.jz = shl nuw nsw i64 %i.jv, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jy, ptr nonnull align 4 %i.jx, i64 %i.jz, i1 false), !alias.scope !55493, !noalias !55491
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.jx, align 4, !alias.scope !55493, !noalias !55491
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 72 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jq
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = shl nuw nsw i64 %i.jv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kd, ptr nonnull align 8 %i.kb, i64 %i.ke, i1 false), !alias.scope !55494, !noalias !55491
  br label %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i51.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i51.i.i.i.i.i.i.i: ; preds = %bb.at, %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i50.i.i.i.i.i.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 72 ; 6 uses
  %i.kg = add nuw nsw i64 %i.jn, 2                ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jq
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.kh, align 8, !alias.scope !55494, !noalias !55491
  store i16 %i.jo, ptr %i.jl, align 2, !noalias !55491
  %i.ki = icmp samesign ult i64 %i.jq, %i.kg
  br i1 %i.ki, label %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i"

.lr.ph.i.i52.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i51.i.i.i.i.i.i.i
  %i.kj = add nuw nsw i64 %i.jn, 1
  %i.kk = sub nsw i64 %i.kj, %.sroa.10.1.i.i.i.i.i.i.i
  %i.kl = sub nsw i64 %i.jn, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.kk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol

.lr.ph.i.i52.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol = phi i64 [ %i.km, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ %i.jq, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ]
  %i.km = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.kn = icmp samesign ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !55495, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.jk, ptr %i.kp, align 8, !noalias !55496
  %i.kq = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol to i16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 52
  store i16 %i.kq, ptr %i.kr, align 4, !noalias !55496
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, !llvm.loop !55395

.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr = phi i64 [ %i.jq, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ], [ %i.km, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ]
  %i.ks = icmp ult i64 %i.kl, 3
  br i1 %i.ks, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

.lr.ph.i.i52.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i = phi i64 [ %i.li, %.lr.ph.i.i52.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.kt = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !55495, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.jk, ptr %i.kv, align 8, !noalias !55496
  %i.kw = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i to i16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 52
  store i16 %i.kw, ptr %i.kx, align 4, !noalias !55496
  %i.ky = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.kt
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !55495, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.jk, ptr %i.la, align 8, !noalias !55496
  %i.lb = trunc nuw nsw i64 %i.kt to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 52
  store i16 %i.lb, ptr %i.lc, align 4, !noalias !55496
  %i.ld = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ky
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !55495, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.jk, ptr %i.lf, align 8, !noalias !55496
  %i.lg = trunc nuw nsw i64 %i.ky to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 52
  store i16 %i.lg, ptr %i.lh, align 4, !noalias !55496
  %i.li = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.lj = icmp ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ld
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !55495, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.jk, ptr %i.ll, align 8, !noalias !55496
  %i.lm = trunc nuw nsw i64 %i.ld to i16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 52
  store i16 %i.lm, ptr %i.ln, align 4, !noalias !55496
  %exitcond.not.i.i54.i.i.i.i.i.i.i.3 = icmp eq i64 %i.li, %i.kg
  br i1 %exitcond.not.i.i54.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i51.i.i.i.i.i.i.i
  %.sroa.715.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !55490
  %.sroa.818.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.818.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !55490
  %.sroa.921.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !55490
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.thread.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hc7ab3e851198aef4E.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !55458
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i"
  %.sroa.1024.0.i.i.i.i.i.i = phi ptr [ %i.jk, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.1024.0.copyload26.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.921.0.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.921.0.copyload23.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i" ]
  %.sroa.818.0.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i" ], [ %i.hg, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.715.0.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.715.0.copyload17.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hcb0bd295d4eb68e8E.exit48.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.011.0.i.i.i.i.i.i = load i8, ptr %i.d, align 8, !noalias !55490 ; 3 uses
  %.sroa.1127.0.copyload29.i.i.i.i.i.i = load i64, ptr %.sroa.1127.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !55490 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !55477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !55458
  %.not41.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0.i.i.i.i.i.i, 5
  br i1 %.not41.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i", label %bb.au

bb.au:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.818.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1024.0.i.i.i.i.i.i) ]
  %i.lo = load ptr, ptr %.sroa.818.0.i.i.i.i.i.i, align 8, !noalias !55467, !noundef !23 ; 2 uses
  %.not.i.i.i.i10.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i10.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.s
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !55497
  %i.lp = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !55497 ; 7 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.av, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hcebfa8fb968ad186E.exit.i.i.i.i.i", !prof !26

bb.av:                                            ; preds = %.thread.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !55433

.noexc19.i.i.i:                                   ; preds = %bb.av
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hcebfa8fb968ad186E.exit.i.i.i.i.i": ; preds = %.thread.i.i.i.i
  store ptr null, ptr %i.lp, align 8, !noalias !55497
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 54
  store ptr %i.lp, ptr %i.o, align 8, !alias.scope !55453, !noalias !55498
  store i64 0, ptr %i.at, align 8, !alias.scope !55453, !noalias !55498
  store i16 1, ptr %i.lr, align 2, !noalias !55499
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  store i8 %i.bl, ptr %i.ls, align 8, !noalias !55499
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 %i.cf, ptr %i.lt, align 8, !noalias !55499
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hcebfa8fb968ad186E.exit.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.thread.i.i.i.i.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h3ea8209e4b043a20E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i"
  %i.lu = phi ptr [ %.ph359, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i" ], [ %i.lp, %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hcebfa8fb968ad186E.exit.i.i.i.i.i" ], [ %.ph359, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.thread.i.i.i.i.i.i" ], [ %i.ee, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h3ea8209e4b043a20E.exit.i.i.i.i.i.i" ], [ %.ph359, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i" ], [ %.ph359, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17he4f2888aad1b59a4E.exit.i.i.i.i.i.i" ]
  %i.lv = add i64 %.ph, 1                         ; 2 uses
  store i64 %i.lv, ptr %i.ap, align 8, !alias.scope !55453, !noalias !55498
  br label %.outer

bb.aw:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !55500
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h44c222b797ed86ddE.exit.i.i"

common.resume.i.i:                                ; preds = %bb.bl, %bb.bb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.mr, %bb.bl ], [ %i.mf, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.ax:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !55433
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h44c222b797ed86ddE.exit.i.i": ; preds = %bb.aw, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i"
  %.sroa.029.0.i.i = phi i64 [ 1, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i" ], [ 0, %bb.aw ] ; 2 uses
  %.sroa.730.0.i.i = phi ptr [ %.sroa.1220.0.ph.i.i.i, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i" ], [ %.ph359, %bb.aw ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !55428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !55424
  %i.lx = load i8, ptr %i.af, align 8, !range !31, !alias.scope !55426, !noundef !23
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !55424
  store i64 24, ptr %i.r, align 8, !noalias !55424
  %i.lz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !55425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !55424
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lz, ptr %i.ma, align 8, !alias.scope !55425
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h089959555918e44dE.exit"

bb.az:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h44c222b797ed86ddE.exit.i.i"
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !alias.scope !55426, !noundef !23
  %i.md = add i8 %i.mc, 1
  store i8 %i.md, ptr %i.mb, align 1, !alias.scope !55426
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h44c222b797ed86ddE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !55424
  store i64 %.sroa.029.0.i.i, ptr %i.q, align 8, !noalias !55424
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.730.0.i.i, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !noalias !55424
  %.sroa.931.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, i64 16, i1 false), !noalias !55424
  %i.me = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !55425 ; 9 uses

bb.bb:                                            ; preds = %bb.ba
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr162drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17h212db74e890594b1E"(ptr noalias noundef align 8 dereferenceable(32) %i.q) #44
          to label %common.resume.i.i unwind label %bb.bh, !noalias !55425

bb.bc:                                            ; preds = %bb.ba
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i, align 8, !noalias !55424 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !55424 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !55424
  %i.mg = trunc nuw i64 %.sroa.029.0.i.i to i1
  br i1 %i.mg, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq ptr %i.me, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  br i1 %.not.i.i, label %bb.bm, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.730.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  %.not47.i.i = icmp eq ptr %i.me, null
  br i1 %.not47.i.i, label %.thread41.i.i, label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55501
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.730.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !55502, !noalias !55501
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.730.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !55502, !noalias !55501
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !55502, !noalias !55501
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !55502, !noalias !55501
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.730.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !55502, !noalias !55501
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !55502, !noalias !55501
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i": ; preds = %bb.bg, %bb.bf
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.bg ], [ 0, %bb.bf ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !55502, !noalias !55501
  %i.mh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.mh, align 8, !alias.scope !55502, !noalias !55501
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.mi, align 8, !alias.scope !55502, !noalias !55501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55503
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hdc275c56da1d7f62E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !55425
  %i.mj = load ptr, ptr %i.b, align 8, !noalias !55503, !noundef !23
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.lr.ph.i.i.i.i25.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i", %.lr.ph.i.i.i.i25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55503
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hdc275c56da1d7f62E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !55425
  %i.mk = load ptr, ptr %i.b, align 8, !noalias !55503, !noundef !23
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i26.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.thread44.i.i:                                    ; preds = %.lr.ph.i.i.i.i25.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55501
  br label %.thread41.i.i

bb.bh:                                            ; preds = %bb.bb
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !55425
  unreachable

bb.bi:                                            ; preds = %bb.be
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55505)
  %i.mm = load i64, ptr %i.me, align 8, !range !51, !alias.scope !55506, !noalias !55507, !noundef !23
  switch i64 %i.mm, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.bj
    i64 1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.mn, align 8, !alias.scope !55506, !noalias !55507, !noundef !23 ; 2 uses
  %i.mo = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.mo, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bj
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.mp, align 8, !alias.scope !55506, !noalias !55507, !nonnull !23, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !55508
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i"

bb.bk:                                            ; preds = %bb.bi
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.mq)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" unwind label %bb.bl, !noalias !55507

bb.bl:                                            ; preds = %bb.bk
  %i.mr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.me, i64 noundef 40, i64 noundef 8) #45, !noalias !55507
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i": ; preds = %bb.bk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.bj, %bb.bi
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.me, i64 noundef 40, i64 noundef 8) #45, !noalias !55507
  br label %.thread41.i.i

.thread41.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i", %.thread44.i.i, %bb.be, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.me, %.thread44.i.i ], [ %i.ai, %bb.e ], [ %.sroa.730.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" ], [ %.sroa.730.0.i.i, %bb.be ]
end_hunk_13
begin_hunk_14_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7a7253020ff9c373E":bb.a
  %i.il = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.il)
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.in = load ptr, ptr %i.im, align 8, !noalias !59796, !nonnull !23, !noundef !23
  %i.io = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.ca

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h77b618aa55eab5f4E.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.ip = icmp eq i64 %i.cd, 0
  br i1 %i.ip, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h85959cf8b182b135E.exit.thread.i.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h77b618aa55eab5f4E.exit.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59797
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h85959cf8b182b135E.exit.thread.i.i.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h85959cf8b182b135E.exit.thread.i.i.i.i": ; preds = %bb.ce, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h77b618aa55eab5f4E.exit.i.i.i.i.i"
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 276
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.sroa.8.0.i.i.i.i.i.i.i917
  store i8 %.sroa.15.0.i.i.i, ptr %i.ir, align 1, !noalias !59798
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17ha408fd1ccecef92dE.exit.i.i.i"

bb.cf:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h786d8a4ac034abd3E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !59799
  %i.is = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !59799 ; 9 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.cg, label %bb.ch, !prof !26

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #46
          to label %.noexc.i.i9.i.i.i unwind label %bb.dt, !noalias !59799

.noexc.i.i9.i.i.i:                                ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cf
  store ptr null, ptr %i.is, align 8, !noalias !59799
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 274
  store ptr %i.is, ptr %i.ab, align 8, !alias.scope !59791, !noalias !59800
  store i64 0, ptr %i.bq, align 8, !alias.scope !59791, !noalias !59800
  store i16 1, ptr %i.iu, align 2, !noalias !59801
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.cd, ptr %i.iv, align 8, !noalias !59802
  %.sroa.518.0..sroa_idx19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store ptr %i.cf, ptr %.sroa.518.0..sroa_idx19.i.i.i.i.i, align 8, !noalias !59802
  %.sroa.6.0..sroa_idx21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx21.i.i.i.i.i, align 8, !noalias !59802
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 276
  store i8 %.sroa.15.0.i.i.i, ptr %i.iw, align 4, !noalias !59801
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h90d740c09aa132e9E.exit.i.i.i.i"

bb.ci:                                            ; preds = %._crit_edge
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !59803
  %i.iy = icmp ugt i16 %i.hv, 10
  br i1 %i.iy, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.iz = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !59804
  store i64 0, ptr %i.br, align 8, !noalias !59804
  br i1 %i.iz, label %.invoke.i.i.i.i.i.i.i, label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !59805)
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.hw
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.cl, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  store i64 %i.cd, ptr %i.ja, align 8, !alias.scope !59806, !noalias !59807
  %.sroa.934.0..sroa_idx37.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.cf, ptr %.sroa.934.0..sroa_idx37.i.i.i.i.i.i, align 8, !alias.scope !59806, !noalias !59807
  %.sroa.1143.0..sroa_idx46.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx46.i.i.i.i.i.i, align 8, !alias.scope !59806, !noalias !59807
  br label %.thread.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.jb = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %i.jb
  %i.jd = sub nuw nsw i64 %i.hw, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.je = mul nuw nsw i64 %i.jd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jc, ptr nonnull align 8 %i.ja, i64 %i.je, i1 false), !alias.scope !59808, !noalias !59809
  store i64 %i.cd, ptr %i.ja, align 8, !alias.scope !59806, !noalias !59807
  %.sroa.934.0..sroa_idx35.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.cf, ptr %.sroa.934.0..sroa_idx35.i.i.i.i.i.i, align 8, !alias.scope !59806, !noalias !59807
  %.sroa.1143.0..sroa_idx44.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx44.i.i.i.i.i.i, align 8, !alias.scope !59806, !noalias !59807
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 276 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jh, ptr nonnull align 1 %i.jg, i64 %i.jd, i1 false), !alias.scope !59810, !noalias !59809
  br label %.thread.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cj
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.cn [
    i64 5, label %.invoke.i.i.i.i.i.i.i
    i64 6, label %bb.co
  ]

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.cm, %bb.cj
  %.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cm ], [ 4, %bb.cj ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.bs, align 8, !noalias !59804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !59804
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hb103d7000193232aE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cq unwind label %bb.cs, !noalias !59811

bb.cn:                                            ; preds = %bb.cm
  store i64 6, ptr %i.bs, align 8, !noalias !59804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !59804
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hb103d7000193232aE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cp unwind label %bb.cs, !noalias !59811

bb.co:                                            ; preds = %bb.cm
  store i64 5, ptr %i.bs, align 8, !noalias !59804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !59804
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hb103d7000193232aE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cq unwind label %bb.cs, !noalias !59811

bb.cp:                                            ; preds = %bb.cn
  %i.ji = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %.invoke.i.i.i.i.i.i.i
  %.sink63.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ %.sink63.i.sroa.gep121.i.i.i.i.i.i, %bb.co ], [ %.sink63.i.sroa.gep121.i.i.i.i.i.i, %bb.cp ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ 0, %bb.co ], [ %i.ji, %bb.cp ] ; 6 uses
  %i.jj = load ptr, ptr %.sink63.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !59804, !nonnull !23, !noundef !23 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 274 ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 2, !noalias !59812, !noundef !23 ; 2 uses
  %i.jm = zext i16 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59813)
  %.not.i41.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.jm
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i.i.i.i.i, label %bb.cr, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i: ; preds = %bb.cq
  store i64 %i.cd, ptr %i.jo, align 8, !alias.scope !59814, !noalias !59815
  %.sroa.934.0..sroa_idx39.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %i.cf, ptr %.sroa.934.0..sroa_idx39.i.i.i.i.i.i, align 8, !alias.scope !59814, !noalias !59815
  %.sroa.1143.0..sroa_idx48.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx48.i.i.i.i.i.i, align 8, !alias.scope !59814, !noalias !59815
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.jp = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %i.jp
  %i.jr = sub nuw nsw i64 %i.jm, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  %i.js = mul nuw nsw i64 %i.jr, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jq, ptr nonnull align 8 %i.jo, i64 %i.js, i1 false), !alias.scope !59816, !noalias !59812
  store i64 %i.cd, ptr %i.jo, align 8, !alias.scope !59814, !noalias !59815
  %.sroa.934.0..sroa_idx41.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %i.cf, ptr %.sroa.934.0..sroa_idx41.i.i.i.i.i.i, align 8, !alias.scope !59814, !noalias !59815
  %.sroa.1143.0..sroa_idx50.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx50.i.i.i.i.i.i, align 8, !alias.scope !59814, !noalias !59815
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 276 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jv, ptr nonnull align 1 %i.ju, i64 %i.jr, i1 false), !alias.scope !59817, !noalias !59812
  br label %bb.cu

.thread.i.i.i.i.i.i:                              ; preds = %bb.cl, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 276
  %i.jx = add nuw nsw i16 %i.hv, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i8 %.sroa.15.0.i.i.i, ptr %i.jy, align 1, !alias.scope !59810, !noalias !59809
  store i16 %i.jx, ptr %i.ix, align 2, !noalias !59809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !59803
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h90d740c09aa132e9E.exit.i.i.i.i"

bb.cs:                                            ; preds = %bb.co, %bb.cn, %.invoke.i.i.i.i.i.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = icmp eq i64 %i.cd, 0
  br i1 %i.ka, label %.body.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59818
  br label %.body.i.i.i

bb.cu:                                            ; preds = %bb.cr, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 276
  %i.kc = add i16 %i.jl, 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i8 %.sroa.15.0.i.i.i, ptr %i.kd, align 1, !alias.scope !59817, !noalias !59812
  store i16 %i.kc, ptr %i.jk, align 2, !noalias !59812
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !59819 ; 3 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59819 ; 2 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !59819 ; 2 uses
  %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !59819 ; 2 uses
  %.sroa.722.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !59819 ; 3 uses
  %.sroa.823.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !59819
  %.sroa.924.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep121.i.i.i.i.i.i, align 8, !noalias !59819 ; 3 uses
  %.sroa.1025.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep123.i.i.i.i.i.i, align 8, !noalias !59819 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !59804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !59803
  %.not.i.i.i7.i.i.i = icmp eq i64 %.sroa.019.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i7.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h90d740c09aa132e9E.exit.i.i.i.i", label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.722.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.924.0.copyload.i.i.i.i.i.i) ]
  %i.ke = load ptr, ptr %.sroa.722.0.copyload.i.i.i.i.i.i, align 8, !noalias !59820, !noundef !23 ; 2 uses
  %.not.i197.i.i.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i197.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.dr, %bb.cv
  %.sroa.20.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i.i.i.i.i, %bb.cv ], [ %.sroa.1171.0.copyload73.i.i.i.i.i.i, %bb.dr ]
  %.sroa.16.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.924.0.copyload.i.i.i.i.i.i, %bb.cv ], [ %.sroa.1068.0.i.i.i.i.i.i, %bb.dr ] ; 3 uses
  %.sroa.913.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.cv ], [ %.sroa.859.sroa.7.0.i.i.i.i.i.i, %bb.dr ]
  %.sroa.9.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.cv ], [ %.sroa.859.sroa.6.0.i.i.i.i.i.i, %bb.dr ]
  %.sroa.8.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cv ], [ %.sroa.859.sroa.0.0.i.i.i.i.i.i, %bb.dr ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.copyload.i.i.i.i.i.i, %bb.cv ], [ %.sroa.056.0.i.i.i.i.i.i, %bb.dr ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59821)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !59822
  %i.kf = call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !59822 ; 13 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %bb.cw, label %bb.cy, !prof !26

bb.cw:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cx, !noalias !59822

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %bb.cw
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.kf, align 8, !noalias !59822
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 274 ; 2 uses
  store i16 0, ptr %i.ki, align 2, !noalias !59822
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 288
  store ptr %.ph, ptr %i.kj, align 8, !noalias !59822
  %i.kk = add i64 %i.hs, 1
  store ptr %i.kf, ptr %.ph, align 8, !noalias !59823
  %i.kl = getelementptr inbounds nuw i8, ptr %.ph, i64 272
  store i16 0, ptr %i.kl, align 8, !noalias !59824
  store ptr %i.kf, ptr %i.ab, align 8, !alias.scope !59825, !noalias !59826
  store i64 %i.kk, ptr %i.bq, align 8, !alias.scope !59825, !noalias !59826
  %i.km = icmp eq i64 %.sroa.20.0.lcssa.i.i.i.i.i.i, %i.hs
  br i1 %i.km, label %bb.ds, label %.invoke.i.i.i.i.i.i.i.i, !prof !24

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %bb.cy
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1366, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #46
          to label %.cont.i.i.i.i.i.i.i.i unwind label %bb.cz, !noalias !59827

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.cz:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ko = icmp eq i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.ko, label %.body.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59828
  br label %.body.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cv, %bb.dr
  %i.kp = phi ptr [ %i.rl, %bb.dr ], [ %i.ke, %bb.cv ] ; 13 uses
  %.sroa.03.0205.i.i.i.i.i.i = phi i64 [ %.sroa.056.0.i.i.i.i.i.i, %bb.dr ], [ %.sroa.019.0.copyload.i.i.i.i.i.i, %bb.cv ] ; 8 uses
  %.sroa.8.0204.i.i.i.i.i.i = phi ptr [ %.sroa.859.sroa.0.0.i.i.i.i.i.i, %bb.dr ], [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cv ] ; 8 uses
  %.sroa.9.0203.i.i.i.i.i.i = phi i64 [ %.sroa.859.sroa.6.0.i.i.i.i.i.i, %bb.dr ], [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.cv ] ; 6 uses
  %.sroa.913.0202.i.i.i.i.i.i = phi i8 [ %.sroa.859.sroa.7.0.i.i.i.i.i.i, %bb.dr ], [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.cv ] ; 6 uses
  %.sroa.1016.0201.i.i.i.i.i.i = phi ptr [ %.sroa.862.0.i.i.i.i.i.i, %bb.dr ], [ %.sroa.722.0.copyload.i.i.i.i.i.i, %bb.cv ]
  %.sroa.13.0200.i.i.i.i.i.i = phi i64 [ %.sroa.965.0.i.i.i.i.i.i, %bb.dr ], [ %.sroa.823.0.copyload.i.i.i.i.i.i, %bb.cv ] ; 2 uses
  %.sroa.16.0199.i.i.i.i.i.i = phi ptr [ %.sroa.1068.0.i.i.i.i.i.i, %bb.dr ], [ %.sroa.924.0.copyload.i.i.i.i.i.i, %bb.cv ] ; 3 uses
  %.sroa.20.0198.i.i.i.i.i.i = phi i64 [ %.sroa.1171.0.copyload73.i.i.i.i.i.i, %bb.dr ], [ %.sroa.1025.0.copyload.i.i.i.i.i.i, %bb.cv ]
  %i.kq = add i64 %.sroa.13.0200.i.i.i.i.i.i, 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.1016.0201.i.i.i.i.i.i, i64 272
  %i.ks = load i16, ptr %i.kr, align 8, !noalias !59820 ; 5 uses
  %i.kt = zext i16 %i.ks to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !59803
  %i.ku = icmp eq i64 %.sroa.20.0198.i.i.i.i.i.i, %.sroa.13.0200.i.i.i.i.i.i
  br i1 %i.ku, label %bb.dc, label %bb.db, !prof !24

bb.db:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1372, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1373) #46
          to label %bb.dd unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !59829

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 274
  %i.kw = load i16, ptr %i.kv, align 2, !noalias !59829, !noundef !23 ; 4 uses
  %i.kx = icmp ult i16 %i.kw, 11
  br i1 %i.kx, label %bb.df, label %bb.de

bb.dd:                                            ; preds = %bb.db
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.ky = icmp ult i16 %i.ks, 5
  store ptr %i.kp, ptr %i.e, align 8, !noalias !59830
  store i64 %i.kq, ptr %i.bt, align 8, !noalias !59830
  br i1 %i.ky, label %.invoke.i29.i.i.i.i.i.i, label %bb.dh

bb.df:                                            ; preds = %bb.dc
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 274
  %i.la = zext nneg i16 %i.kw to i64              ; 4 uses
  %i.lb = add nuw nsw i16 %i.kw, 1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59831)
  %i.ld = add nuw nsw i64 %i.kt, 1                ; 7 uses
  %.not.i.i31.not.i.i.i.i.i.i = icmp ult i16 %i.ks, %i.kw
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %i.kt ; 7 uses
  br i1 %.not.i.i31.not.i.i.i.i.i.i, label %bb.dg, label %_ZN5alloc11collections5btree4node12slice_insert17hee2f970dc61d533aE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hee2f970dc61d533aE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.df
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.le, align 8, !alias.scope !59832, !noalias !59833
  %.sroa.1180.0..sroa_idx89.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx89.i.i.i.i.i.i, align 8, !alias.scope !59832, !noalias !59833
  %.sroa.14.0..sroa_idx99.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx99.i.i.i.i.i.i, align 8, !alias.scope !59832, !noalias !59833
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kp, i64 276
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.kt
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.lg, align 1, !alias.scope !59834, !noalias !59835
  br label %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i.i.i.i.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %i.ld
  %i.li = sub nuw nsw i64 %i.la, %i.kt            ; 3 uses
  %i.lj = mul nuw nsw i64 %i.li, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lh, ptr nonnull align 8 %i.le, i64 %i.lj, i1 false), !alias.scope !59836, !noalias !59835
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.le, align 8, !alias.scope !59832, !noalias !59833
  %.sroa.1180.0..sroa_idx87.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx87.i.i.i.i.i.i, align 8, !alias.scope !59832, !noalias !59833
  %.sroa.14.0..sroa_idx97.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx97.i.i.i.i.i.i, align 8, !alias.scope !59832, !noalias !59833
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 276 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.kt ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ld
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lm, ptr nonnull align 1 %i.ll, i64 %i.li, i1 false), !alias.scope !59834, !noalias !59835
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.ll, align 1, !alias.scope !59834, !noalias !59835
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kp, i64 288 ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.ld
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.kt
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = shl nuw nsw i64 %i.li, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lq, ptr nonnull align 8 %i.lo, i64 %i.lr, i1 false), !alias.scope !59837, !noalias !59835
  br label %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dg, %_ZN5alloc11collections5btree4node12slice_insert17hee2f970dc61d533aE.exit.i.i.i.i.i.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kp, i64 288 ; 6 uses
  %i.lt = add nuw nsw i64 %i.la, 2                ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.ld
  store ptr %.sroa.16.0199.i.i.i.i.i.i, ptr %i.lu, align 8, !alias.scope !59837, !noalias !59835
  store i16 %i.lb, ptr %i.kz, align 2, !noalias !59835
  %i.lv = icmp samesign ult i64 %i.ld, %i.lt
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.thread142.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i.i.i.i.i.i.i.i
  %i.lw = add nuw nsw i64 %i.la, 1
  %i.lx = sub nsw i64 %i.lw, %i.kt
  %i.ly = sub nsw i64 %i.la, %i.kt
  %xtraiter1168 = and i64 %i.lx, 3                ; 2 uses
  %lcmp.mod1169.not = icmp eq i64 %xtraiter1168, 0
  br i1 %lcmp.mod1169.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.lz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ld, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter1170 = phi i64 [ %prol.iter1170.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.lz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ma = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.ma)
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !59838, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kp, ptr %i.mc, align 8, !noalias !59839
  %i.md = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 272
  store i16 %i.md, ptr %i.me, align 8, !noalias !59839
  %prol.iter1170.next = add i64 %prol.iter1170, 1 ; 2 uses
  %prol.iter1170.cmp.not = icmp eq i64 %prol.iter1170.next, %xtraiter1168
  br i1 %prol.iter1170.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !59630

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ld, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.lz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.mf = icmp ult i64 %i.ly, 3
  br i1 %i.mf, label %.thread142.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.mg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !59838, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kp, ptr %i.mi, align 8, !noalias !59839
  %i.mj = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 272
  store i16 %i.mj, ptr %i.mk, align 8, !noalias !59839
  %i.ml = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.mg
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !59838, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kp, ptr %i.mn, align 8, !noalias !59839
  %i.mo = trunc nuw nsw i64 %i.mg to i16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 272
  store i16 %i.mo, ptr %i.mp, align 8, !noalias !59839
  %i.mq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
end_hunk_14
begin_hunk_15_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7a7253020ff9c373E":bb.a
  store ptr %i.nb, ptr %i.om, align 8, !noalias !59846
  %i.on = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i to i16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 272
  store i16 %i.on, ptr %i.oo, align 8, !noalias !59846
  %i.op = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.ok
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !59845, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.nb, ptr %i.or, align 8, !noalias !59846
  %i.os = trunc nuw nsw i64 %i.ok to i16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 272
  store i16 %i.os, ptr %i.ot, align 8, !noalias !59846
  %i.ou = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.op
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !59845, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.nb, ptr %i.ow, align 8, !noalias !59846
  %i.ox = trunc nuw nsw i64 %i.op to i16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 272
  store i16 %i.ox, ptr %i.oy, align 8, !noalias !59846
  %i.oz = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.pa = icmp ult i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.pa)
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.ou
  %i.pc = load ptr, ptr %i.pb, align 8, !noalias !59845, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.nb, ptr %i.pc, align 8, !noalias !59846
  %i.pd = trunc nuw nsw i64 %i.ou to i16
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 272
  store i16 %i.pd, ptr %i.pe, align 8, !noalias !59846
  %exitcond.not.i.i45.i.i.i.i.i.i.i.3 = icmp eq i64 %i.oz, %i.nx
  br i1 %exitcond.not.i.i45.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i", label %.lr.ph.i.i43.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.do, %bb.dj
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.rj, %bb.do ], [ 0, %bb.dj ] ; 9 uses
  %i.pf = load ptr, ptr %i.bv, align 8, !noalias !59830, !nonnull !23, !noundef !23 ; 12 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 274 ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 2, !noalias !59847, !noundef !23 ; 2 uses
  %i.pi = zext i16 %i.ph to i64                   ; 5 uses
  %i.pj = add i16 %i.ph, 1
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  %i.pl = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i48.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.pi
  %i.pm = getelementptr inbounds nuw [24 x i8], ptr %i.pk, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i.i.i.i.i, label %bb.dn, label %_ZN5alloc11collections5btree4node12slice_insert17hee2f970dc61d533aE.exit.i49.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hee2f970dc61d533aE.exit.i49.i.i.i.i.i.i.i: ; preds = %bb.dm
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.pm, align 8, !noalias !59841
  %.sroa.1180.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59841
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59841
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pf, i64 276
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.po, align 1, !alias.scope !59848, !noalias !59847
  br label %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i50.i.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.pp = getelementptr inbounds nuw [24 x i8], ptr %i.pk, i64 %i.pl
  %i.pq = sub nuw nsw i64 %i.pi, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  %i.pr = mul nuw nsw i64 %i.pq, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pp, ptr nonnull align 8 %i.pm, i64 %i.pr, i1 false), !alias.scope !59849, !noalias !59847
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.pm, align 8, !noalias !59841
  %.sroa.1180.0..sroa_idx81.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx81.i.i.i.i.i.i, align 8, !noalias !59841
  %.sroa.14.0..sroa_idx91.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx91.i.i.i.i.i.i, align 8, !noalias !59841
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pf, i64 276 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pl
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.pu, ptr nonnull align 1 %i.pt, i64 %i.pq, i1 false), !alias.scope !59848, !noalias !59847
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.pt, align 1, !alias.scope !59848, !noalias !59847
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pf, i64 288 ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.pl
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = shl nuw nsw i64 %i.pq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.py, ptr nonnull align 8 %i.pw, i64 %i.pz, i1 false), !alias.scope !59850, !noalias !59847
  br label %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i50.i.i.i.i.i.i.i: ; preds = %bb.dn, %_ZN5alloc11collections5btree4node12slice_insert17hee2f970dc61d533aE.exit.i49.i.i.i.i.i.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pf, i64 288 ; 6 uses
  %i.qb = add nuw nsw i64 %i.pi, 2                ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.pl
  store ptr %.sroa.16.0199.i.i.i.i.i.i, ptr %i.qc, align 8, !alias.scope !59850, !noalias !59847
  store i16 %i.pj, ptr %i.pg, align 2, !noalias !59847
  %i.qd = icmp samesign ult i64 %i.pl, %i.qb
  br i1 %i.qd, label %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i"

.lr.ph.i.i51.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i50.i.i.i.i.i.i.i
  %i.qe = add nuw nsw i64 %i.pi, 1
  %i.qf = sub nsw i64 %i.qe, %.sroa.10.1.i.i.i.i.i.i.i
  %i.qg = sub nsw i64 %i.pi, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.qf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol

.lr.ph.i.i51.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol = phi i64 [ %i.qh, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ %i.pl, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ]
  %i.qh = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.qi = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.qi)
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !59851, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.pf, ptr %i.qk, align 8, !noalias !59852
  %i.ql = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol to i16
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 272
  store i16 %i.ql, ptr %i.qm, align 8, !noalias !59852
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, !llvm.loop !59658

.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr = phi i64 [ %i.pl, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ], [ %i.qh, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ]
  %i.qn = icmp ult i64 %i.qg, 3
  br i1 %i.qn, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

.lr.ph.i.i51.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i = phi i64 [ %i.rd, %.lr.ph.i.i51.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.qo = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i
  %i.qq = load ptr, ptr %i.qp, align 8, !noalias !59851, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.pf, ptr %i.qq, align 8, !noalias !59852
  %i.qr = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i to i16
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 272
  store i16 %i.qr, ptr %i.qs, align 8, !noalias !59852
  %i.qt = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qo
  %i.qv = load ptr, ptr %i.qu, align 8, !noalias !59851, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.pf, ptr %i.qv, align 8, !noalias !59852
  %i.qw = trunc nuw nsw i64 %i.qo to i16
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 272
  store i16 %i.qw, ptr %i.qx, align 8, !noalias !59852
  %i.qy = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qt
  %i.ra = load ptr, ptr %i.qz, align 8, !noalias !59851, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.pf, ptr %i.ra, align 8, !noalias !59852
  %i.rb = trunc nuw nsw i64 %i.qt to i16
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 272
  store i16 %i.rb, ptr %i.rc, align 8, !noalias !59852
  %i.rd = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.re = icmp ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.re)
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qy
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !59851, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.pf, ptr %i.rg, align 8, !noalias !59852
  %i.rh = trunc nuw nsw i64 %i.qy to i16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 272
  store i16 %i.rh, ptr %i.ri, align 8, !noalias !59852
  %exitcond.not.i.i53.i.i.i.i.i.i.i.3 = icmp eq i64 %i.rd, %i.qb
  br i1 %exitcond.not.i.i53.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

bb.do:                                            ; preds = %bb.di
  %i.rj = add nsw i64 %i.kt, -7
  br label %bb.dm

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i50.i.i.i.i.i.i.i
  %.sroa.859.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.859.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.859.sroa.7.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.862.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.862.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.965.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  br label %bb.dq

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i42.i.i.i.i.i.i.i
  %.sroa.859.sroa.0.0.copyload118.i.i.i.i.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.859.sroa.6.0.copyload119.i.i.i.i.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.859.sroa.7.0.copyload120.i.i.i.i.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.965.0.copyload67.i.i.i.i.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853
  %.sroa.1068.0.copyload70.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !59853
  br label %bb.dq

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i.i.i.i, %bb.di, %bb.dj, %bb.db
  %lpad.loopexit.split-lp921 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rk = icmp eq i64 %.sroa.03.0205.i.i.i.i.i.i, 0
  br i1 %i.rk, label %.body.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0204.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0204.i.i.i.i.i.i, i64 noundef %.sroa.03.0205.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59854
  br label %.body.i.i.i

.thread142.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17haedbd7bd6a0e31dcE.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !59803
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h90d740c09aa132e9E.exit.i.i.i.i"

bb.dq:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i"
  %.sroa.1068.0.i.i.i.i.i.i = phi ptr [ %i.pf, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.1068.0.copyload70.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.965.0.i.i.i.i.i.i = phi i64 [ %.sroa.965.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.965.0.copyload67.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i" ]
  %.sroa.862.0.i.i.i.i.i.i = phi ptr [ %.sroa.862.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i" ], [ %i.nb, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.859.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.859.sroa.0.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.859.sroa.0.0.copyload118.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.859.sroa.6.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.859.sroa.6.0.copyload119.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.7.0.i.i.i.i.i.i = phi i8 [ %.sroa.859.sroa.7.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.859.sroa.7.0.copyload120.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9331322d9fe3c7aeE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.056.0.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !59853 ; 3 uses
  %.sroa.1171.0.copyload73.i.i.i.i.i.i = load i64, ptr %.sroa.1171.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59853 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !59803
  %.not16.i.i.i.i.i.i = icmp eq i64 %.sroa.056.0.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h90d740c09aa132e9E.exit.i.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.862.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1068.0.i.i.i.i.i.i) ]
  %i.rl = load ptr, ptr %.sroa.862.0.i.i.i.i.i.i, align 8, !noalias !59820, !noundef !23 ; 2 uses
  %.not.i.i.i.i8.i.i.i = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i.i8.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ds:                                            ; preds = %bb.cy
  store i16 1, ptr %i.ki, align 2, !noalias !59827
  %i.rm = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.rm, align 8, !noalias !59855
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, align 8, !noalias !59855
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !59855
  %i.rn = getelementptr inbounds nuw i8, ptr %i.kf, i64 276
  store i8 %.sroa.913.0.lcssa.i.i.i.i.i.i, ptr %i.rn, align 4, !noalias !59827
  %i.ro = getelementptr inbounds nuw i8, ptr %i.kf, i64 296
  store ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, ptr %i.ro, align 8, !noalias !59827
  store ptr %i.kf, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, align 8, !noalias !59856
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, i64 272
  store i16 1, ptr %i.rp, align 8, !noalias !59856
  %.pre.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !59791, !noalias !59800
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h90d740c09aa132e9E.exit.i.i.i.i"

bb.dt:                                            ; preds = %bb.cg
  %i.rq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rr = icmp eq i64 %i.cd, 0
  br i1 %i.rr, label %.body.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59857
  br label %.body.i.i.i

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h90d740c09aa132e9E.exit.i.i.i.i": ; preds = %bb.dq, %bb.ds, %.thread142.i.i.i.i.i.i, %bb.cu, %.thread.i.i.i.i.i.i, %bb.ch
  %i.rs = phi ptr [ %i.is, %bb.ch ], [ %i.kf, %bb.ds ], [ %.ph, %.thread142.i.i.i.i.i.i ], [ %.ph, %bb.cu ], [ %.ph, %.thread.i.i.i.i.i.i ], [ %.ph, %bb.dq ]
  %i.rt = phi i64 [ %.ph931, %bb.ch ], [ %.pre.i.i.i, %bb.ds ], [ %.ph931, %.thread142.i.i.i.i.i.i ], [ %.ph931, %bb.cu ], [ %.ph931, %.thread.i.i.i.i.i.i ], [ %.ph931, %bb.dq ]
  %i.ru = add i64 %i.rt, 1                        ; 2 uses
  store i64 %i.ru, ptr %i.bc, align 8, !alias.scope !59791, !noalias !59800
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17ha408fd1ccecef92dE.exit.i.i.i.outer"

_ZN10serde_core2de9MapAccess10next_entry17h786d8a4ac034abd3E.exit.thread21.i.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !noalias !59858
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h7bb2da581ed4a971E.exit.i.i"

common.resume.i.i:                                ; preds = %bb.el, %bb.dz, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.sv, %bb.el ], [ %i.se, %bb.dz ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.dv:                                            ; preds = %.body.i.i.i
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !59708
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h7bb2da581ed4a971E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h786d8a4ac034abd3E.exit.thread21.i.i.i, %"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$GT$17h3283d7dbe91f48f2E.exit.i.i.i"
  %.sroa.029.0.i.i = phi i64 [ 1, %"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$GT$17h3283d7dbe91f48f2E.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17h786d8a4ac034abd3E.exit.thread21.i.i.i ] ; 2 uses
  %.sroa.730.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$GT$17h3283d7dbe91f48f2E.exit.i.i.i" ], [ %.ph, %_ZN10serde_core2de9MapAccess10next_entry17h786d8a4ac034abd3E.exit.thread21.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !59703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !59699
  %i.rw = load i8, ptr %i.as, align 8, !range !31, !alias.scope !59701, !noundef !23
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.dy, label %bb.dx

bb.dw:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !59699
  store i64 24, ptr %i.ae, align 8, !noalias !59699
  %i.ry = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae), !noalias !59700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !59699
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ry, ptr %i.rz, align 8, !alias.scope !59700
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h310f341e05b9686eE.exit"

bb.dx:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h7bb2da581ed4a971E.exit.i.i"
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !59701, !noundef !23
  %i.sc = add i8 %i.sb, 1
  store i8 %i.sc, ptr %i.sa, align 1, !alias.scope !59701
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h7bb2da581ed4a971E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !59699
  store i64 %.sroa.029.0.i.i, ptr %i.ad, align 8, !noalias !59699
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.730.0.i.i, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !noalias !59699
  %.sroa.931.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, i64 16, i1 false), !noalias !59699
  %i.sd = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.ea unwind label %bb.dz, !noalias !59700 ; 9 uses

bb.dz:                                            ; preds = %bb.dy
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr192drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$C$serde_json..error..Error$GT$$GT$17h42833507f4f982d7E"(ptr noalias noundef align 8 dereferenceable(32) %i.ad) #44
          to label %common.resume.i.i unwind label %bb.eh, !noalias !59700

bb.ea:                                            ; preds = %bb.dy
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i, align 8, !noalias !59699 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !59699 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !59699
  %i.sf = trunc nuw i64 %.sroa.029.0.i.i to i1
  br i1 %i.sf, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not.i.i = icmp eq ptr %i.sd, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  br i1 %.not.i.i, label %bb.em, label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.730.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  %.not47.i.i = icmp eq ptr %i.sd, null
  br i1 %.not47.i.i, label %.thread41.i.i, label %bb.ei

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59859
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.730.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i", label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59860, !noalias !59859
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.730.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !59860, !noalias !59859
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !59860, !noalias !59859
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59860, !noalias !59859
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.730.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !59860, !noalias !59859
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !59860, !noalias !59859
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i": ; preds = %bb.ee, %bb.ed
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.ee ], [ 0, %bb.ed ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.ee ], [ 0, %bb.ed ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !59860, !noalias !59859
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.sg, align 8, !alias.scope !59860, !noalias !59859
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.sh, align 8, !alias.scope !59860, !noalias !59859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59861
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf7bef75c8b3870e1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !59700
  %i.si = load ptr, ptr %i.b, align 8, !noalias !59861, !noundef !23 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.si, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.lr.ph.i.i.i.i25.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.ef

bb.ef:                                            ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i25.i.i
  %i.sj = phi ptr [ %i.si, %.lr.ph.i.i.i.i25.i.i ], [ %i.so, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !59861
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = getelementptr inbounds nuw [24 x i8], ptr %i.sk, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59862)
  call void @llvm.experimental.noalias.scope.decl(metadata !59863)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.sl, align 8, !alias.scope !59864, !noalias !59865 ; 2 uses
  %i.sm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sm, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i", label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sn, align 8, !alias.scope !59864, !noalias !59865, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !59866
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i": ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59861
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf7bef75c8b3870e1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !59700
  %i.so = load ptr, ptr %i.b, align 8, !noalias !59861, !noundef !23 ; 2 uses
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.so, null
  br i1 %.not.i.i.i.i26.i.i, label %.thread44.i.i, label %bb.ef

.thread44.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha81ed43e82c8bce3E.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5fa8e32e2105dd5dE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59859
  br label %.thread41.i.i

bb.eh:                                            ; preds = %bb.dz
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !59700
  unreachable

bb.ei:                                            ; preds = %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !59867)
  call void @llvm.experimental.noalias.scope.decl(metadata !59868)
  %i.sq = load i64, ptr %i.sd, align 8, !range !51, !alias.scope !59869, !noalias !59870, !noundef !23
  switch i64 %i.sq, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.ej
    i64 1, label %bb.ek
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.sr, align 8, !alias.scope !59869, !noalias !59870, !noundef !23 ; 2 uses
end_hunk_15
begin_hunk_16_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h97613629445c8569E":bb.a
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !62032, !nonnull !23, !noundef !23
  %i.dh = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.z

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hf50835a8db41ecfaE.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.di = icmp eq i64 %i.bg, 0
  br i1 %i.di, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hf5c538d9884424b1E.exit.thread.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hf50835a8db41ecfaE.exit.i.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62033
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hf5c538d9884424b1E.exit.thread.i.i.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hf5c538d9884424b1E.exit.thread.i.i.i.i": ; preds = %bb.ad, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hf50835a8db41ecfaE.exit.i.i.i.i.i"
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.sroa.8.0.i.i.i.i.i.i.i593
  store i32 %i.ck, ptr %i.dk, align 4, !noalias !62034
  br label %bb.h

bb.ae:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h6da383d9e33bf97eE.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !62035
  %i.dl = tail call noalias noundef align 8 dereferenceable_or_null(320) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 320, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !62035 ; 9 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.af, label %bb.ag, !prof !26

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 320) #46
          to label %.noexc.i.i9.i.i.i unwind label %bb.bs, !noalias !62035

.noexc.i.i9.i.i.i:                                ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store ptr null, ptr %i.dl, align 8, !noalias !62035
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 318
  store ptr %i.dl, ptr %i.o, align 8, !alias.scope !62027, !noalias !62036
  store i64 0, ptr %i.at, align 8, !alias.scope !62027, !noalias !62036
  store i16 1, ptr %i.dn, align 2, !noalias !62037
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.bg, ptr %i.do, align 8, !noalias !62038
  %.sroa.518.0..sroa_idx19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.bi, ptr %.sroa.518.0..sroa_idx19.i.i.i.i.i, align 8, !noalias !62038
  %.sroa.6.0..sroa_idx21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx21.i.i.i.i.i, align 8, !noalias !62038
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 272
  store i32 %i.ck, ptr %i.dp, align 8, !noalias !62037
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he8c6478524780b32E.exit.i.i.i.i"

bb.ah:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62039
  %i.dr = icmp ugt i16 %i.co, 10
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ds = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !62040
  store i64 0, ptr %i.au, align 8, !noalias !62040
  br i1 %i.ds, label %.invoke.i.i.i.i.i.i.i, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62041)
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.cp
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.ak, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  store i64 %i.bg, ptr %i.dt, align 8, !alias.scope !62042, !noalias !62043
  %.sroa.936.0..sroa_idx39.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx39.i.i.i.i.i.i, align 8, !alias.scope !62042, !noalias !62043
  %.sroa.1145.0..sroa_idx48.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx48.i.i.i.i.i.i, align 8, !alias.scope !62042, !noalias !62043
  br label %.thread.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.du = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.du
  %i.dw = sub nuw nsw i64 %i.cp, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.dx = mul nuw nsw i64 %i.dw, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.dt, i64 %i.dx, i1 false), !alias.scope !62044, !noalias !62045
  store i64 %i.bg, ptr %i.dt, align 8, !alias.scope !62042, !noalias !62043
  %.sroa.936.0..sroa_idx37.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx37.i.i.i.i.i.i, align 8, !alias.scope !62042, !noalias !62043
  %.sroa.1145.0..sroa_idx46.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx46.i.i.i.i.i.i, align 8, !alias.scope !62042, !noalias !62043
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.du
  %i.eb = shl nuw nsw i64 %i.dw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull align 4 %i.dz, i64 %i.eb, i1 false), !alias.scope !62046, !noalias !62045
  br label %.thread.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ai
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.am [
    i64 5, label %.invoke.i.i.i.i.i.i.i
    i64 6, label %bb.an
  ]

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.al, %bb.ai
  %.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.al ], [ 4, %bb.ai ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !62040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62040
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8a1973667926a4edE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ap unwind label %bb.ar, !noalias !62047

bb.am:                                            ; preds = %bb.al
  store i64 6, ptr %i.av, align 8, !noalias !62040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62040
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8a1973667926a4edE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ao unwind label %bb.ar, !noalias !62047

bb.an:                                            ; preds = %bb.al
  store i64 5, ptr %i.av, align 8, !noalias !62040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62040
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8a1973667926a4edE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ap unwind label %bb.ar, !noalias !62047

bb.ao:                                            ; preds = %bb.am
  %i.ec = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.invoke.i.i.i.i.i.i.i
  %.sink63.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ %.sink63.i.sroa.gep124.i.i.i.i.i.i, %bb.an ], [ %.sink63.i.sroa.gep124.i.i.i.i.i.i, %bb.ao ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ 0, %bb.an ], [ %i.ec, %bb.ao ] ; 6 uses
  %i.ed = load ptr, ptr %.sink63.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !62040, !nonnull !23, !noundef !23 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 318 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !noalias !62048, !noundef !23 ; 2 uses
  %i.eg = zext i16 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62049)
  %.not.i41.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.eg
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i.i.i.i.i, label %bb.aq, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i: ; preds = %bb.ap
  store i64 %i.bg, ptr %i.ei, align 8, !alias.scope !62050, !noalias !62051
  %.sroa.936.0..sroa_idx41.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx41.i.i.i.i.i.i, align 8, !alias.scope !62050, !noalias !62051
  %.sroa.1145.0..sroa_idx50.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx50.i.i.i.i.i.i, align 8, !alias.scope !62050, !noalias !62051
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ej = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.ej
  %i.el = sub nuw nsw i64 %i.eg, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  %i.em = mul nuw nsw i64 %i.el, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.ei, i64 %i.em, i1 false), !alias.scope !62052, !noalias !62048
  store i64 %i.bg, ptr %i.ei, align 8, !alias.scope !62050, !noalias !62051
  %.sroa.936.0..sroa_idx43.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx43.i.i.i.i.i.i, align 8, !alias.scope !62050, !noalias !62051
  %.sroa.1145.0..sroa_idx52.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx52.i.i.i.i.i.i, align 8, !alias.scope !62050, !noalias !62051
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 272 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ej
  %i.eq = shl nuw nsw i64 %i.el, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr nonnull align 4 %i.eo, i64 %i.eq, i1 false), !alias.scope !62053, !noalias !62048
  br label %bb.at

.thread.i.i.i.i.i.i:                              ; preds = %bb.ak, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272
  %i.es = add nuw nsw i16 %i.co, 1
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.ck, ptr %i.et, align 4, !alias.scope !62046, !noalias !62045
  store i16 %i.es, ptr %i.dq, align 2, !noalias !62045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !62039
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he8c6478524780b32E.exit.i.i.i.i"

bb.ar:                                            ; preds = %bb.an, %bb.am, %.invoke.i.i.i.i.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = icmp eq i64 %i.bg, 0
  br i1 %i.ev, label %.body.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62054
  br label %.body.i.i.i

bb.at:                                            ; preds = %bb.aq, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 272
  %i.ex = add i16 %i.ef, 1
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.ck, ptr %i.ey, align 4, !alias.scope !62053, !noalias !62048
  store i16 %i.ex, ptr %i.ee, align 2, !noalias !62048
  %.sroa.021.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !62055 ; 3 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62055 ; 2 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !62055 ; 2 uses
  %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !62055 ; 2 uses
  %.sroa.724.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !62055 ; 3 uses
  %.sroa.825.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !62055
  %.sroa.926.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep124.i.i.i.i.i.i, align 8, !noalias !62055 ; 3 uses
  %.sroa.1027.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep126.i.i.i.i.i.i, align 8, !noalias !62055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !62040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !62039
  %.not.i.i.i7.i.i.i = icmp eq i64 %.sroa.021.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i7.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he8c6478524780b32E.exit.i.i.i.i", label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.724.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.926.0.copyload.i.i.i.i.i.i) ]
  %i.ez = load ptr, ptr %.sroa.724.0.copyload.i.i.i.i.i.i, align 8, !noalias !62056, !noundef !23 ; 2 uses
  %.not.i201.i.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i201.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bq, %bb.au
  %.sroa.20.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.1027.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.1173.0.copyload75.i.i.i.i.i.i, %bb.bq ]
  %.sroa.16.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.926.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.1070.0.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  %.sroa.913.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.861.sroa.7.0.i.i.i.i.i.i, %bb.bq ]
  %.sroa.9.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.861.sroa.6.0.i.i.i.i.i.i, %bb.bq ]
  %.sroa.8.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.861.sroa.0.0.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.021.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.058.0.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62057)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !62058
  %i.fa = tail call noalias noundef align 8 dereferenceable_or_null(416) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 416, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !62058 ; 13 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.av, label %bb.ax, !prof !26

bb.av:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 416) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aw, !noalias !62058

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.fa, align 8, !noalias !62058
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 318 ; 2 uses
  store i16 0, ptr %i.fd, align 2, !noalias !62058
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 320
  store ptr %.ph, ptr %i.fe, align 8, !noalias !62058
  %i.ff = add i64 %i.cl, 1
  store ptr %i.fa, ptr %.ph, align 8, !noalias !62059
  %i.fg = getelementptr inbounds nuw i8, ptr %.ph, i64 316
  store i16 0, ptr %i.fg, align 4, !noalias !62060
  store ptr %i.fa, ptr %i.o, align 8, !alias.scope !62061, !noalias !62062
  store i64 %i.ff, ptr %i.at, align 8, !alias.scope !62061, !noalias !62062
  %i.fh = icmp eq i64 %.sroa.20.0.lcssa.i.i.i.i.i.i, %i.cl
  br i1 %i.fh, label %bb.br, label %.invoke.i.i.i.i.i.i.i.i, !prof !24

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %bb.ax
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1366, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #46
          to label %.cont.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !62063

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = icmp eq i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.fj, label %.body.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62064
  br label %.body.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.au, %bb.bq
  %i.fk = phi ptr [ %i.mj, %bb.bq ], [ %i.ez, %bb.au ] ; 13 uses
  %.sroa.03.0209.i.i.i.i.i.i = phi i64 [ %.sroa.058.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.021.0.copyload.i.i.i.i.i.i, %bb.au ] ; 8 uses
  %.sroa.8.0208.i.i.i.i.i.i = phi ptr [ %.sroa.861.sroa.0.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.au ] ; 8 uses
  %.sroa.9.0207.i.i.i.i.i.i = phi i64 [ %.sroa.861.sroa.6.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.au ] ; 6 uses
  %.sroa.913.0206.i.i.i.i.i.i = phi i32 [ %.sroa.861.sroa.7.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.au ] ; 6 uses
  %.sroa.1018.0205.i.i.i.i.i.i = phi ptr [ %.sroa.864.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.724.0.copyload.i.i.i.i.i.i, %bb.au ]
  %.sroa.13.0204.i.i.i.i.i.i = phi i64 [ %.sroa.967.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.825.0.copyload.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %.sroa.16.0203.i.i.i.i.i.i = phi ptr [ %.sroa.1070.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.926.0.copyload.i.i.i.i.i.i, %bb.au ] ; 3 uses
  %.sroa.20.0202.i.i.i.i.i.i = phi i64 [ %.sroa.1173.0.copyload75.i.i.i.i.i.i, %bb.bq ], [ %.sroa.1027.0.copyload.i.i.i.i.i.i, %bb.au ]
  %i.fl = add i64 %.sroa.13.0204.i.i.i.i.i.i, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.1018.0205.i.i.i.i.i.i, i64 316
  %i.fn = load i16, ptr %i.fm, align 4, !noalias !62056 ; 5 uses
  %i.fo = zext i16 %i.fn to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !62039
  %i.fp = icmp eq i64 %.sroa.20.0202.i.i.i.i.i.i, %.sroa.13.0204.i.i.i.i.i.i
  br i1 %i.fp, label %bb.bb, label %bb.ba, !prof !24

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1372, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1373) #46
          to label %bb.bc unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !62065

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 318
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !62065, !noundef !23 ; 4 uses
  %i.fs = icmp ult i16 %i.fr, 11
  br i1 %i.fs, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.ft = icmp ult i16 %i.fn, 5
  store ptr %i.fk, ptr %i.e, align 8, !noalias !62066
  store i64 %i.fl, ptr %i.aw, align 8, !noalias !62066
  br i1 %i.ft, label %.invoke.i29.i.i.i.i.i.i, label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 318
  %i.fv = zext nneg i16 %i.fr to i64              ; 4 uses
  %i.fw = add nuw nsw i16 %i.fr, 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62067)
  %i.fy = add nuw nsw i64 %i.fo, 1                ; 7 uses
  %.not.i.i31.not.i.i.i.i.i.i = icmp ult i16 %i.fn, %i.fr
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fo ; 7 uses
  br i1 %.not.i.i31.not.i.i.i.i.i.i, label %bb.bf, label %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.be
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.fz, align 8, !alias.scope !62068, !noalias !62069
  %.sroa.1182.0..sroa_idx91.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx91.i.i.i.i.i.i, align 8, !alias.scope !62068, !noalias !62069
  %.sroa.14.0..sroa_idx101.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx101.i.i.i.i.i.i, align 8, !alias.scope !62068, !noalias !62069
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 272
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fo
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !62070, !noalias !62071
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fy
  %i.gd = sub nuw nsw i64 %i.fv, %i.fo            ; 3 uses
  %i.ge = mul nuw nsw i64 %i.gd, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.fz, i64 %i.ge, i1 false), !alias.scope !62072, !noalias !62071
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.fz, align 8, !alias.scope !62068, !noalias !62069
  %.sroa.1182.0..sroa_idx89.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx89.i.i.i.i.i.i, align 8, !alias.scope !62068, !noalias !62069
  %.sroa.14.0..sroa_idx99.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx99.i.i.i.i.i.i, align 8, !alias.scope !62068, !noalias !62069
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 272 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.fo ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.fy
  %i.gi = shl nuw nsw i64 %i.gd, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr nonnull align 4 %i.gg, i64 %i.gi, i1 false), !alias.scope !62070, !noalias !62071
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.gg, align 4, !alias.scope !62070, !noalias !62071
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 320 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.fy
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.fo
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = shl nuw nsw i64 %i.gd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %i.gk, i64 %i.gn, i1 false), !alias.scope !62073, !noalias !62071
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i.i.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fk, i64 320 ; 6 uses
  %i.gp = add nuw nsw i64 %i.fv, 2                ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.fy
  store ptr %.sroa.16.0203.i.i.i.i.i.i, ptr %i.gq, align 8, !alias.scope !62073, !noalias !62071
  store i16 %i.fw, ptr %i.fu, align 2, !noalias !62071
  %i.gr = icmp samesign ult i64 %i.fy, %i.gp
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.thread146.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i.i.i.i.i.i.i.i
  %i.gs = add nuw nsw i64 %i.fv, 1
  %i.gt = sub nsw i64 %i.gs, %i.fo
  %i.gu = sub nsw i64 %i.fv, %i.fo
  %xtraiter750 = and i64 %i.gt, 3                 ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.gv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.gw = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !62074, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fk, ptr %i.gy, align 8, !noalias !62075
  %i.gz = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 316
  store i16 %i.gz, ptr %i.ha, align 4, !noalias !62075
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !61920

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.hb = icmp ult i64 %i.gu, 3
  br i1 %i.hb, label %.thread146.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.hc = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !62074, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fk, ptr %i.he, align 8, !noalias !62075
  %i.hf = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 316
  store i16 %i.hf, ptr %i.hg, align 4, !noalias !62075
  %i.hh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.hc
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !62074, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fk, ptr %i.hj, align 8, !noalias !62075
  %i.hk = trunc nuw nsw i64 %i.hc to i16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 316
  store i16 %i.hk, ptr %i.hl, align 4, !noalias !62075
end_hunk_16
begin_hunk_17_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h97613629445c8569E":bb.a
  %i.jk = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 316
  store i16 %i.jk, ptr %i.jl, align 4, !noalias !62082
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jh
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !62081, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hx, ptr %i.jo, align 8, !noalias !62082
  %i.jp = trunc nuw nsw i64 %i.jh to i16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 316
  store i16 %i.jp, ptr %i.jq, align 4, !noalias !62082
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jm
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !62081, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hx, ptr %i.jt, align 8, !noalias !62082
  %i.ju = trunc nuw nsw i64 %i.jm to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 316
  store i16 %i.ju, ptr %i.jv, align 4, !noalias !62082
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jx = icmp ult i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jr
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !62081, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hx, ptr %i.jz, align 8, !noalias !62082
  %i.ka = trunc nuw nsw i64 %i.jr to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 316
  store i16 %i.ka, ptr %i.kb, align 4, !noalias !62082
  %exitcond.not.i.i45.i.i.i.i.i.i.i.3 = icmp eq i64 %i.jw, %i.iu
  br i1 %exitcond.not.i.i45.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i", label %.lr.ph.i.i43.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bn, %bb.bi
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.mh, %bb.bn ], [ 0, %bb.bi ] ; 9 uses
  %i.kc = load ptr, ptr %i.ay, align 8, !noalias !62066, !nonnull !23, !noundef !23 ; 12 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 318 ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2, !noalias !62083, !noundef !23 ; 2 uses
  %i.kf = zext i16 %i.ke to i64                   ; 5 uses
  %i.kg = add i16 %i.ke, 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ki = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i48.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.kf
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i.i.i.i.i, label %bb.bm, label %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i49.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i49.i.i.i.i.i.i.i: ; preds = %bb.bl
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.kj, align 8, !noalias !62077
  %.sroa.1182.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62077
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62077
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 272
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.kl, align 4, !alias.scope !62084, !noalias !62083
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i50.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %i.ki
  %i.kn = sub nuw nsw i64 %i.kf, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  %i.ko = mul nuw nsw i64 %i.kn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.km, ptr nonnull align 8 %i.kj, i64 %i.ko, i1 false), !alias.scope !62085, !noalias !62083
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.kj, align 8, !noalias !62077
  %.sroa.1182.0..sroa_idx83.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx83.i.i.i.i.i.i, align 8, !noalias !62077
  %.sroa.14.0..sroa_idx93.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx93.i.i.i.i.i.i, align 8, !noalias !62077
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 272 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ki
  %i.ks = shl nuw nsw i64 %i.kn, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kr, ptr nonnull align 4 %i.kq, i64 %i.ks, i1 false), !alias.scope !62084, !noalias !62083
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.kq, align 4, !alias.scope !62084, !noalias !62083
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 320 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ki
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = shl nuw nsw i64 %i.kn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kw, ptr nonnull align 8 %i.ku, i64 %i.kx, i1 false), !alias.scope !62086, !noalias !62083
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i50.i.i.i.i.i.i.i: ; preds = %bb.bm, %_ZN5alloc11collections5btree4node12slice_insert17h453e4a9ca399df82E.exit.i49.i.i.i.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kc, i64 320 ; 6 uses
  %i.kz = add nuw nsw i64 %i.kf, 2                ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.ki
  store ptr %.sroa.16.0203.i.i.i.i.i.i, ptr %i.la, align 8, !alias.scope !62086, !noalias !62083
  store i16 %i.kg, ptr %i.kd, align 2, !noalias !62083
  %i.lb = icmp samesign ult i64 %i.ki, %i.kz
  br i1 %i.lb, label %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i"

.lr.ph.i.i51.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i50.i.i.i.i.i.i.i
  %i.lc = add nuw nsw i64 %i.kf, 1
  %i.ld = sub nsw i64 %i.lc, %.sroa.10.1.i.i.i.i.i.i.i
  %i.le = sub nsw i64 %i.kf, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.ld, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol

.lr.ph.i.i51.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol = phi i64 [ %i.lf, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ %i.ki, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ]
  %i.lf = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.lg = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !62087, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.li, align 8, !noalias !62088
  %i.lj = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol to i16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 316
  store i16 %i.lj, ptr %i.lk, align 4, !noalias !62088
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, !llvm.loop !61948

.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr = phi i64 [ %i.ki, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ], [ %i.lf, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ]
  %i.ll = icmp ult i64 %i.le, 3
  br i1 %i.ll, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

.lr.ph.i.i51.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i51.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.lm = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !62087, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.lo, align 8, !noalias !62088
  %i.lp = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i to i16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 316
  store i16 %i.lp, ptr %i.lq, align 4, !noalias !62088
  %i.lr = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lm
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !62087, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.lt, align 8, !noalias !62088
  %i.lu = trunc nuw nsw i64 %i.lm to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 316
  store i16 %i.lu, ptr %i.lv, align 4, !noalias !62088
  %i.lw = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lr
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !62087, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.ly, align 8, !noalias !62088
  %i.lz = trunc nuw nsw i64 %i.lr to i16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 316
  store i16 %i.lz, ptr %i.ma, align 4, !noalias !62088
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.mc = icmp ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lw
  %i.me = load ptr, ptr %i.md, align 8, !noalias !62087, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.me, align 8, !noalias !62088
  %i.mf = trunc nuw nsw i64 %i.lw to i16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 316
  store i16 %i.mf, ptr %i.mg, align 4, !noalias !62088
  %exitcond.not.i.i53.i.i.i.i.i.i.i.3 = icmp eq i64 %i.mb, %i.kz
  br i1 %exitcond.not.i.i53.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bh
  %i.mh = add nsw i64 %i.fo, -7
  br label %bb.bl

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i50.i.i.i.i.i.i.i
  %.sroa.861.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.861.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.861.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.861.sroa.6.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.861.sroa.7.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.861.sroa.7.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.864.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.864.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.967.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.967.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  br label %bb.bp

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i42.i.i.i.i.i.i.i
  %.sroa.861.sroa.0.0.copyload120.i.i.i.i.i.i = load ptr, ptr %.sroa.861.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.861.sroa.6.0.copyload121.i.i.i.i.i.i = load i64, ptr %.sroa.861.sroa.6.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.861.sroa.7.0.copyload122.i.i.i.i.i.i = load i32, ptr %.sroa.861.sroa.7.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.967.0.copyload69.i.i.i.i.i.i = load i64, ptr %.sroa.967.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089
  %.sroa.1070.0.copyload72.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !62089
  br label %bb.bp

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i.i.i.i, %bb.bh, %bb.bi, %bb.ba
  %lpad.loopexit.split-lp597 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mi = icmp eq i64 %.sroa.03.0209.i.i.i.i.i.i, 0
  br i1 %i.mi, label %.body.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0208.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0208.i.i.i.i.i.i, i64 noundef %.sroa.03.0209.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62090
  br label %.body.i.i.i

.thread146.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8a1bef5e80d232d6E.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !62039
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he8c6478524780b32E.exit.i.i.i.i"

bb.bp:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i"
  %.sroa.1070.0.i.i.i.i.i.i = phi ptr [ %i.kc, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.1070.0.copyload72.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.967.0.i.i.i.i.i.i = phi i64 [ %.sroa.967.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.967.0.copyload69.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i" ]
  %.sroa.864.0.i.i.i.i.i.i = phi ptr [ %.sroa.864.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i" ], [ %i.hx, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.861.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.861.sroa.0.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.861.sroa.0.0.copyload120.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.861.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.861.sroa.6.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.861.sroa.6.0.copyload121.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.861.sroa.7.0.i.i.i.i.i.i = phi i32 [ %.sroa.861.sroa.7.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.861.sroa.7.0.copyload122.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h0434bbfc6c9e5d30E.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !62089 ; 3 uses
  %.sroa.1173.0.copyload75.i.i.i.i.i.i = load i64, ptr %.sroa.1173.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62089 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !62066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !62039
  %.not16.i.i.i.i.i.i = icmp eq i64 %.sroa.058.0.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he8c6478524780b32E.exit.i.i.i.i", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.864.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1070.0.i.i.i.i.i.i) ]
  %i.mj = load ptr, ptr %.sroa.864.0.i.i.i.i.i.i, align 8, !noalias !62056, !noundef !23 ; 2 uses
  %.not.i.i.i.i8.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i8.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.ax
  store i16 1, ptr %i.fd, align 2, !noalias !62063
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.mk, align 8, !noalias !62091
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, align 8, !noalias !62091
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !62091
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fa, i64 272
  store i32 %.sroa.913.0.lcssa.i.i.i.i.i.i, ptr %i.ml, align 8, !noalias !62063
  %i.mm = getelementptr inbounds nuw i8, ptr %i.fa, i64 328
  store ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, ptr %i.mm, align 8, !noalias !62063
  store ptr %i.fa, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, align 8, !noalias !62092
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, i64 316
  store i16 1, ptr %i.mn, align 4, !noalias !62092
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !62027, !noalias !62036
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he8c6478524780b32E.exit.i.i.i.i"

bb.bs:                                            ; preds = %bb.af
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = icmp eq i64 %i.bg, 0
  br i1 %i.mp, label %.body.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62093
  br label %.body.i.i.i

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he8c6478524780b32E.exit.i.i.i.i": ; preds = %bb.bp, %bb.br, %.thread146.i.i.i.i.i.i, %bb.at, %.thread.i.i.i.i.i.i, %bb.ag
  %i.mq = phi ptr [ %i.dl, %bb.ag ], [ %i.fa, %bb.br ], [ %.ph, %.thread146.i.i.i.i.i.i ], [ %.ph, %bb.at ], [ %.ph, %.thread.i.i.i.i.i.i ], [ %.ph, %bb.bp ]
  %i.mr = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.ag ], [ %.pre.i.i.i, %bb.br ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %.thread146.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.at ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %.thread.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.bp ]
  %i.ms = add i64 %i.mr, 1                        ; 2 uses
  store i64 %i.ms, ptr %i.ap, align 8, !alias.scope !62027, !noalias !62036
  br label %.outer

_ZN10serde_core2de9MapAccess10next_entry17h6da383d9e33bf97eE.exit.thread21.i.i.i: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !62094
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdd973a149ee2773fE.exit.i.i"

common.resume.i.i:                                ; preds = %bb.ck, %bb.by, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.nt, %bb.ck ], [ %i.nc, %bb.by ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.bu:                                            ; preds = %.body.i.i.i
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !61998
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdd973a149ee2773fE.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h6da383d9e33bf97eE.exit.thread21.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$GT$17h36785be33d440088E.exit.i.i.i"
  %.sroa.029.0.i.i = phi i64 [ 1, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$GT$17h36785be33d440088E.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17h6da383d9e33bf97eE.exit.thread21.i.i.i ] ; 2 uses
  %.sroa.730.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$GT$17h36785be33d440088E.exit.i.i.i" ], [ %.ph, %_ZN10serde_core2de9MapAccess10next_entry17h6da383d9e33bf97eE.exit.thread21.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !61993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !61989
  %i.mu = load i8, ptr %i.af, align 8, !range !31, !alias.scope !61991, !noundef !23
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.bx, label %bb.bw

bb.bv:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !61989
  store i64 24, ptr %i.r, align 8, !noalias !61989
  %i.mw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !61990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !61989
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mw, ptr %i.mx, align 8, !alias.scope !61990
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h3c54d69ba6ea91c1E.exit"

bb.bw:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdd973a149ee2773fE.exit.i.i"
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !61991, !noundef !23
  %i.na = add i8 %i.mz, 1
  store i8 %i.na, ptr %i.my, align 1, !alias.scope !61991
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hdd973a149ee2773fE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !61989
  store i64 %.sroa.029.0.i.i, ptr %i.q, align 8, !noalias !61989
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.730.0.i.i, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !noalias !61989
  %.sroa.931.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, i64 16, i1 false), !noalias !61989
  %i.nb = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bz unwind label %bb.by, !noalias !61990 ; 9 uses

bb.by:                                            ; preds = %bb.bx
  %i.nc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17h369e0fff3da8b0a6E"(ptr noalias noundef align 8 dereferenceable(32) %i.q) #44
          to label %common.resume.i.i unwind label %bb.cg, !noalias !61990

bb.bz:                                            ; preds = %bb.bx
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i, align 8, !noalias !61989 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !61989 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !61989
  %i.nd = trunc nuw i64 %.sroa.029.0.i.i to i1
  br i1 %i.nd, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not.i.i = icmp eq ptr %i.nb, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  br i1 %.not.i.i, label %bb.cl, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.730.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  %.not47.i.i = icmp eq ptr %i.nb, null
  br i1 %.not47.i.i, label %.thread41.i.i, label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62095
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.730.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h870ac352cf702b09E.exit.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !62096, !noalias !62095
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.730.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62096, !noalias !62095
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62096, !noalias !62095
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !62096, !noalias !62095
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.730.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62096, !noalias !62095
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !62096, !noalias !62095
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h870ac352cf702b09E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h870ac352cf702b09E.exit.i.i.i.i": ; preds = %bb.cd, %bb.cc
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %bb.cc ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.cd ], [ 0, %bb.cc ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !62096, !noalias !62095
  %i.ne = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.ne, align 8, !alias.scope !62096, !noalias !62095
  %i.nf = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.nf, align 8, !alias.scope !62096, !noalias !62095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62097
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h8bf79431d0d8f576E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !61990
  %i.ng = load ptr, ptr %i.b, align 8, !noalias !62097, !noundef !23 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.lr.ph.i.i.i.i25.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h870ac352cf702b09E.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.ce

bb.ce:                                            ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hadca4d77c1792066E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i25.i.i
  %i.nh = phi ptr [ %i.ng, %.lr.ph.i.i.i.i25.i.i ], [ %i.nm, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hadca4d77c1792066E.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !62097
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %i.ni, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62099)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nj, align 8, !alias.scope !62100, !noalias !62101 ; 2 uses
  %i.nk = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nk, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hadca4d77c1792066E.exit.i.i.i.i.i.i", label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nl, align 8, !alias.scope !62100, !noalias !62101, !nonnull !23, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !62102
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hadca4d77c1792066E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hadca4d77c1792066E.exit.i.i.i.i.i.i": ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62097
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h8bf79431d0d8f576E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !61990
  %i.nm = load ptr, ptr %i.b, align 8, !noalias !62097, !noundef !23 ; 2 uses
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i26.i.i, label %.thread44.i.i, label %bb.ce

.thread44.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hadca4d77c1792066E.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h870ac352cf702b09E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62095
  br label %.thread41.i.i

bb.cg:                                            ; preds = %bb.by
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !61990
  unreachable

bb.ch:                                            ; preds = %bb.cb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62104)
  %i.no = load i64, ptr %i.nb, align 8, !range !51, !alias.scope !62105, !noalias !62106, !noundef !23
  switch i64 %i.no, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.ci
    i64 1, label %bb.cj
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.np = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.np, align 8, !alias.scope !62105, !noalias !62106, !noundef !23 ; 2 uses
end_hunk_17
begin_hunk_18_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc87227c24ece100E":bb.a
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !67269, !nonnull !23, !noundef !23
  %i.dj = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.ac

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h5dd2a6d88855a63aE.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.dk = icmp eq i64 %i.be, 0
  br i1 %i.dk, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hf55bcff2d0d8dfecE.exit.thread.i.i.i.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h5dd2a6d88855a63aE.exit.i.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !67270
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hf55bcff2d0d8dfecE.exit.thread.i.i.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hf55bcff2d0d8dfecE.exit.thread.i.i.i.i": ; preds = %bb.ag, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h5dd2a6d88855a63aE.exit.i.i.i.i.i"
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.sroa.8.0.i.i.i.i.i.i.i510
  store i64 %i.cm, ptr %i.dm, align 8, !noalias !67271
  br label %bb.h

bb.ah:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_entry17hc5bc01c307ec240eE.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !67272
  %i.dn = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !67272 ; 9 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ai, label %bb.aj, !prof !26

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 368) #46
          to label %.noexc.i.i9.i.i.i unwind label %bb.bv, !noalias !67272

.noexc.i.i9.i.i.i:                                ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  store ptr null, ptr %i.dn, align 8, !noalias !67272
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 362
  store ptr %i.dn, ptr %i.n, align 8, !alias.scope !67264, !noalias !67273
  store i64 0, ptr %i.ar, align 8, !alias.scope !67264, !noalias !67273
  store i16 1, ptr %i.dp, align 2, !noalias !67274
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.be, ptr %i.dq, align 8, !noalias !67275
  %.sroa.518.0..sroa_idx19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.bg, ptr %.sroa.518.0..sroa_idx19.i.i.i.i.i, align 8, !noalias !67275
  %.sroa.6.0..sroa_idx21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx21.i.i.i.i.i, align 8, !noalias !67275
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 272
  store i64 %i.cm, ptr %i.dr, align 8, !noalias !67274
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6429c8f7476dae28E.exit.i.i.i.i"

bb.ak:                                            ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !67276
  %i.dt = icmp ugt i16 %i.cq, 10
  br i1 %i.dt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.du = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !67277
  store i64 0, ptr %i.as, align 8, !noalias !67277
  br i1 %i.du, label %.invoke.i.i.i.i.i.i.i, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67278)
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.cr
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.an, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am
  store i64 %i.be, ptr %i.dv, align 8, !alias.scope !67279, !noalias !67280
  %.sroa.933.0..sroa_idx36.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.bg, ptr %.sroa.933.0..sroa_idx36.i.i.i.i.i.i, align 8, !alias.scope !67279, !noalias !67280
  %.sroa.1142.0..sroa_idx45.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1142.0..sroa_idx45.i.i.i.i.i.i, align 8, !alias.scope !67279, !noalias !67280
  br label %.thread.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.dw = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.dw
  %i.dy = sub nuw nsw i64 %i.cr, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.dz = mul nuw nsw i64 %i.dy, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %i.dv, i64 %i.dz, i1 false), !alias.scope !67281, !noalias !67282
  store i64 %i.be, ptr %i.dv, align 8, !alias.scope !67279, !noalias !67280
  %.sroa.933.0..sroa_idx34.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.bg, ptr %.sroa.933.0..sroa_idx34.i.i.i.i.i.i, align 8, !alias.scope !67279, !noalias !67280
  %.sroa.1142.0..sroa_idx43.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1142.0..sroa_idx43.i.i.i.i.i.i, align 8, !alias.scope !67279, !noalias !67280
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dw
  %i.ed = shl nuw nsw i64 %i.dy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr nonnull align 8 %i.eb, i64 %i.ed, i1 false), !alias.scope !67283, !noalias !67282
  br label %.thread.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.al
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.ap [
    i64 5, label %.invoke.i.i.i.i.i.i.i
    i64 6, label %bb.aq
  ]

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.ao, %bb.al
  %.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.ao ], [ 4, %bb.al ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.at, align 8, !noalias !67277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !67277
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h827c6f8c2ff05426E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.as unwind label %bb.au, !noalias !67284

bb.ap:                                            ; preds = %bb.ao
  store i64 6, ptr %i.at, align 8, !noalias !67277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !67277
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h827c6f8c2ff05426E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ar unwind label %bb.au, !noalias !67284

bb.aq:                                            ; preds = %bb.ao
  store i64 5, ptr %i.at, align 8, !noalias !67277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !67277
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h827c6f8c2ff05426E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.as unwind label %bb.au, !noalias !67284

bb.ar:                                            ; preds = %bb.ap
  %i.ee = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.invoke.i.i.i.i.i.i.i
  %.sink63.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ %.sink63.i.sroa.gep118.i.i.i.i.i.i, %bb.aq ], [ %.sink63.i.sroa.gep118.i.i.i.i.i.i, %bb.ar ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ 0, %bb.aq ], [ %i.ee, %bb.ar ] ; 6 uses
  %i.ef = load ptr, ptr %.sink63.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !67277, !nonnull !23, !noundef !23 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 362 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !noalias !67285, !noundef !23 ; 2 uses
  %i.ei = zext i16 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67286)
  %.not.i41.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.ei
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i.i.i.i.i, label %bb.at, label %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i: ; preds = %bb.as
  store i64 %i.be, ptr %i.ek, align 8, !alias.scope !67287, !noalias !67288
  %.sroa.933.0..sroa_idx38.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.bg, ptr %.sroa.933.0..sroa_idx38.i.i.i.i.i.i, align 8, !alias.scope !67287, !noalias !67288
  %.sroa.1142.0..sroa_idx47.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1142.0..sroa_idx47.i.i.i.i.i.i, align 8, !alias.scope !67287, !noalias !67288
  br label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.el = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.el
  %i.en = sub nuw nsw i64 %i.ei, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  %i.eo = mul nuw nsw i64 %i.en, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.ek, i64 %i.eo, i1 false), !alias.scope !67289, !noalias !67285
  store i64 %i.be, ptr %i.ek, align 8, !alias.scope !67287, !noalias !67288
  %.sroa.933.0..sroa_idx40.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.bg, ptr %.sroa.933.0..sroa_idx40.i.i.i.i.i.i, align 8, !alias.scope !67287, !noalias !67288
  %.sroa.1142.0..sroa_idx49.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1142.0..sroa_idx49.i.i.i.i.i.i, align 8, !alias.scope !67287, !noalias !67288
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 272 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.el
  %i.es = shl nuw nsw i64 %i.en, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.er, ptr nonnull align 8 %i.eq, i64 %i.es, i1 false), !alias.scope !67290, !noalias !67285
  br label %bb.aw

.thread.i.i.i.i.i.i:                              ; preds = %bb.an, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i.i.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272
  %i.eu = add nuw nsw i16 %i.cq, 1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i64 %i.cm, ptr %i.ev, align 8, !alias.scope !67283, !noalias !67282
  store i16 %i.eu, ptr %i.ds, align 2, !noalias !67282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !67276
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6429c8f7476dae28E.exit.i.i.i.i"

bb.au:                                            ; preds = %bb.aq, %bb.ap, %.invoke.i.i.i.i.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = icmp eq i64 %i.be, 0
  br i1 %i.ex, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !67291
  br label %.body.i.i.i

bb.aw:                                            ; preds = %bb.at, %_ZN5alloc11collections5btree4node12slice_insert17hcb10c7f6d9892466E.exit.i42.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 272
  %i.ez = add i16 %i.eh, 1
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i64 %i.cm, ptr %i.fa, align 8, !alias.scope !67290, !noalias !67285
  store i16 %i.ez, ptr %i.eg, align 2, !noalias !67285
  %.sroa.018.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !67292 ; 3 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67292 ; 2 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !67292 ; 2 uses
  %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !67292 ; 2 uses
  %.sroa.721.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !67292 ; 3 uses
  %.sroa.822.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !67292
  %.sroa.923.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep118.i.i.i.i.i.i, align 8, !noalias !67292 ; 3 uses
  %.sroa.1024.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep120.i.i.i.i.i.i, align 8, !noalias !67292 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !67277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !67276
  %.not.i.i.i7.i.i.i = icmp eq i64 %.sroa.018.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i7.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6429c8f7476dae28E.exit.i.i.i.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.721.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.923.0.copyload.i.i.i.i.i.i) ]
  %i.fb = load ptr, ptr %.sroa.721.0.copyload.i.i.i.i.i.i, align 8, !noalias !67293, !noundef !23 ; 2 uses
  %.not.i194.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i194.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bt, %bb.ax
  %.sroa.20.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.1024.0.copyload.i.i.i.i.i.i, %bb.ax ], [ %.sroa.1170.0.copyload72.i.i.i.i.i.i, %bb.bt ]
  %.sroa.16.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.923.0.copyload.i.i.i.i.i.i, %bb.ax ], [ %.sroa.1067.0.i.i.i.i.i.i, %bb.bt ] ; 3 uses
  %.sroa.913.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.ax ], [ %.sroa.858.sroa.7.0.i.i.i.i.i.i, %bb.bt ]
  %.sroa.9.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.ax ], [ %.sroa.858.sroa.6.0.i.i.i.i.i.i, %bb.bt ]
  %.sroa.8.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ax ], [ %.sroa.858.sroa.0.0.i.i.i.i.i.i, %bb.bt ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.copyload.i.i.i.i.i.i, %bb.ax ], [ %.sroa.055.0.i.i.i.i.i.i, %bb.bt ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67294)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !67295
  %i.fc = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 464, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !67295 ; 13 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.ay, label %bb.ba, !prof !26

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 464) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !67295

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.fc, align 8, !noalias !67295
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 362 ; 2 uses
  store i16 0, ptr %i.ff, align 2, !noalias !67295
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 368
  store ptr %.ph, ptr %i.fg, align 8, !noalias !67295
  %i.fh = add i64 %i.cn, 1
  store ptr %i.fc, ptr %.ph, align 8, !noalias !67296
  %i.fi = getelementptr inbounds nuw i8, ptr %.ph, i64 360
  store i16 0, ptr %i.fi, align 8, !noalias !67297
  store ptr %i.fc, ptr %i.n, align 8, !alias.scope !67298, !noalias !67299
  store i64 %i.fh, ptr %i.ar, align 8, !alias.scope !67298, !noalias !67299
  %i.fj = icmp eq i64 %.sroa.20.0.lcssa.i.i.i.i.i.i, %i.cn
  br i1 %i.fj, label %bb.bu, label %.invoke.i.i.i.i.i.i.i.i, !prof !24

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %bb.ba
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1366, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #46
          to label %.cont.i.i.i.i.i.i.i.i unwind label %bb.bb, !noalias !67300

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.bb:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = icmp eq i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.fl, label %.body.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !67301
  br label %.body.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %bb.bt
  %i.fm = phi ptr [ %i.mi, %bb.bt ], [ %i.fb, %bb.ax ] ; 13 uses
  %.sroa.03.0202.i.i.i.i.i.i = phi i64 [ %.sroa.055.0.i.i.i.i.i.i, %bb.bt ], [ %.sroa.018.0.copyload.i.i.i.i.i.i, %bb.ax ] ; 8 uses
  %.sroa.8.0201.i.i.i.i.i.i = phi ptr [ %.sroa.858.sroa.0.0.i.i.i.i.i.i, %bb.bt ], [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ax ] ; 8 uses
  %.sroa.9.0200.i.i.i.i.i.i = phi i64 [ %.sroa.858.sroa.6.0.i.i.i.i.i.i, %bb.bt ], [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.ax ] ; 6 uses
  %.sroa.913.0199.i.i.i.i.i.i = phi i64 [ %.sroa.858.sroa.7.0.i.i.i.i.i.i, %bb.bt ], [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.ax ] ; 6 uses
  %.sroa.10.0198.i.i.i.i.i.i = phi ptr [ %.sroa.861.0.i.i.i.i.i.i, %bb.bt ], [ %.sroa.721.0.copyload.i.i.i.i.i.i, %bb.ax ]
  %.sroa.13.0197.i.i.i.i.i.i = phi i64 [ %.sroa.964.0.i.i.i.i.i.i, %bb.bt ], [ %.sroa.822.0.copyload.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %.sroa.16.0196.i.i.i.i.i.i = phi ptr [ %.sroa.1067.0.i.i.i.i.i.i, %bb.bt ], [ %.sroa.923.0.copyload.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %.sroa.20.0195.i.i.i.i.i.i = phi i64 [ %.sroa.1170.0.copyload72.i.i.i.i.i.i, %bb.bt ], [ %.sroa.1024.0.copyload.i.i.i.i.i.i, %bb.ax ]
  %i.fn = add i64 %.sroa.13.0197.i.i.i.i.i.i, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.10.0198.i.i.i.i.i.i, i64 360
  %i.fp = load i16, ptr %i.fo, align 8, !noalias !67293 ; 5 uses
  %i.fq = zext i16 %i.fp to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !67276
  %i.fr = icmp eq i64 %.sroa.20.0195.i.i.i.i.i.i, %.sroa.13.0197.i.i.i.i.i.i
  br i1 %i.fr, label %bb.be, label %bb.bd, !prof !24

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1372, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1373) #46
          to label %bb.bf unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !67302

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 362
  %i.ft = load i16, ptr %i.fs, align 2, !noalias !67302, !noundef !23 ; 4 uses
  %i.fu = icmp ult i16 %i.ft, 11
  br i1 %i.fu, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fv = icmp ult i16 %i.fp, 5
  store ptr %i.fm, ptr %i.e, align 8, !noalias !67303
  store i64 %i.fn, ptr %i.au, align 8, !noalias !67303
  br i1 %i.fv, label %.invoke.i29.i.i.i.i.i.i, label %bb.bj

bb.bh:                                            ; preds = %bb.be
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 362
  %i.fx = zext nneg i16 %i.ft to i64              ; 4 uses
  %i.fy = add nuw nsw i16 %i.ft, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67304)
  %i.ga = add nuw nsw i64 %i.fq, 1                ; 7 uses
  %.not.i.i31.not.i.i.i.i.i.i = icmp ult i16 %i.fp, %i.ft
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %i.fq ; 7 uses
  br i1 %.not.i.i31.not.i.i.i.i.i.i, label %bb.bi, label %_ZN5alloc11collections5btree4node12slice_insert17h572d82b09ee6307fE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h572d82b09ee6307fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  store i64 %.sroa.03.0202.i.i.i.i.i.i, ptr %i.gb, align 8, !alias.scope !67305, !noalias !67306
  %.sroa.1179.0..sroa_idx88.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %.sroa.8.0201.i.i.i.i.i.i, ptr %.sroa.1179.0..sroa_idx88.i.i.i.i.i.i, align 8, !alias.scope !67305, !noalias !67306
  %.sroa.14.0..sroa_idx98.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %.sroa.9.0200.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx98.i.i.i.i.i.i, align 8, !alias.scope !67305, !noalias !67306
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fm, i64 272
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fq
  store i64 %.sroa.913.0199.i.i.i.i.i.i, ptr %i.gd, align 8, !alias.scope !67307, !noalias !67308
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %i.ga
  %i.gf = sub nuw nsw i64 %i.fx, %i.fq            ; 2 uses
  %i.gg = mul nuw nsw i64 %i.gf, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ge, ptr nonnull align 8 %i.gb, i64 %i.gg, i1 false), !alias.scope !67309, !noalias !67308
  store i64 %.sroa.03.0202.i.i.i.i.i.i, ptr %i.gb, align 8, !alias.scope !67305, !noalias !67306
  %.sroa.1179.0..sroa_idx86.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %.sroa.8.0201.i.i.i.i.i.i, ptr %.sroa.1179.0..sroa_idx86.i.i.i.i.i.i, align 8, !alias.scope !67305, !noalias !67306
  %.sroa.14.0..sroa_idx96.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %.sroa.9.0200.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx96.i.i.i.i.i.i, align 8, !alias.scope !67305, !noalias !67306
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fm, i64 272 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.fq ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ga
  %i.gk = shl nuw nsw i64 %i.gf, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.gi, i64 %i.gk, i1 false), !alias.scope !67307, !noalias !67308
  store i64 %.sroa.913.0199.i.i.i.i.i.i, ptr %i.gi, align 8, !alias.scope !67307, !noalias !67308
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 368 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.ga
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.fq
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.go, ptr nonnull align 8 %i.gm, i64 %i.gk, i1 false), !alias.scope !67310, !noalias !67308
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %_ZN5alloc11collections5btree4node12slice_insert17h572d82b09ee6307fE.exit.i.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fm, i64 368 ; 6 uses
  %i.gq = add nuw nsw i64 %i.fx, 2                ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ga
  store ptr %.sroa.16.0196.i.i.i.i.i.i, ptr %i.gr, align 8, !alias.scope !67310, !noalias !67308
  store i16 %i.fy, ptr %i.fw, align 2, !noalias !67308
  %i.gs = icmp samesign ult i64 %i.ga, %i.gq
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.thread139.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i.i.i.i.i.i.i.i
  %i.gt = add nuw nsw i64 %i.fx, 1
  %i.gu = sub nsw i64 %i.gt, %i.fq
  %i.gv = sub nsw i64 %i.fx, %i.fq
  %xtraiter642 = and i64 %i.gu, 3                 ; 2 uses
  %lcmp.mod643.not = icmp eq i64 %xtraiter642, 0
  br i1 %lcmp.mod643.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter644 = phi i64 [ %prol.iter644.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.gw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.gx = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !67311, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fm, ptr %i.gz, align 8, !noalias !67312
  %i.ha = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 360
  store i16 %i.ha, ptr %i.hb, align 8, !noalias !67312
  %prol.iter644.next = add i64 %prol.iter644, 1   ; 2 uses
  %prol.iter644.cmp.not = icmp eq i64 %prol.iter644.next, %xtraiter642
  br i1 %prol.iter644.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !67159

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.hc = icmp ult i64 %i.gv, 3
  br i1 %i.hc, label %.thread139.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.hd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !67311, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fm, ptr %i.hf, align 8, !noalias !67312
  %i.hg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 360
  store i16 %i.hg, ptr %i.hh, align 8, !noalias !67312
  %i.hi = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hd
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !67311, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.fm, ptr %i.hk, align 8, !noalias !67312
  %i.hl = trunc nuw nsw i64 %i.hd to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 360
  store i16 %i.hl, ptr %i.hm, align 8, !noalias !67312
  %i.hn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
end_hunk_18
begin_hunk_19_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hdc87227c24ece100E":bb.a
  store ptr %i.hy, ptr %i.jj, align 8, !noalias !67319
  %i.jk = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 360
  store i16 %i.jk, ptr %i.jl, align 8, !noalias !67319
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jh
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !67318, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hy, ptr %i.jo, align 8, !noalias !67319
  %i.jp = trunc nuw nsw i64 %i.jh to i16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 360
  store i16 %i.jp, ptr %i.jq, align 8, !noalias !67319
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jm
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !67318, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hy, ptr %i.jt, align 8, !noalias !67319
  %i.ju = trunc nuw nsw i64 %i.jm to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 360
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !67319
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jx = icmp ult i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jr
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !67318, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.hy, ptr %i.jz, align 8, !noalias !67319
  %i.ka = trunc nuw nsw i64 %i.jr to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 360
  store i16 %i.ka, ptr %i.kb, align 8, !noalias !67319
  %exitcond.not.i.i45.i.i.i.i.i.i.i.3 = icmp eq i64 %i.jw, %i.iu
  br i1 %exitcond.not.i.i45.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i", label %.lr.ph.i.i43.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bq, %bb.bl
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.mg, %bb.bq ], [ 0, %bb.bl ] ; 9 uses
  %i.kc = load ptr, ptr %i.aw, align 8, !noalias !67303, !nonnull !23, !noundef !23 ; 12 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 362 ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2, !noalias !67320, !noundef !23 ; 2 uses
  %i.kf = zext i16 %i.ke to i64                   ; 5 uses
  %i.kg = add i16 %i.ke, 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ki = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i48.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.kf
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i.i.i.i.i, label %bb.bp, label %_ZN5alloc11collections5btree4node12slice_insert17h572d82b09ee6307fE.exit.i49.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h572d82b09ee6307fE.exit.i49.i.i.i.i.i.i.i: ; preds = %bb.bo
  store i64 %.sroa.03.0202.i.i.i.i.i.i, ptr %i.kj, align 8, !noalias !67314
  %.sroa.1179.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.sroa.8.0201.i.i.i.i.i.i, ptr %.sroa.1179.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67314
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 %.sroa.9.0200.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67314
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 272
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i64 %.sroa.913.0199.i.i.i.i.i.i, ptr %i.kl, align 8, !alias.scope !67321, !noalias !67320
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i50.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %i.ki
  %i.kn = sub nuw nsw i64 %i.kf, %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.ko = mul nuw nsw i64 %i.kn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.km, ptr nonnull align 8 %i.kj, i64 %i.ko, i1 false), !alias.scope !67322, !noalias !67320
  store i64 %.sroa.03.0202.i.i.i.i.i.i, ptr %i.kj, align 8, !noalias !67314
  %.sroa.1179.0..sroa_idx80.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.sroa.8.0201.i.i.i.i.i.i, ptr %.sroa.1179.0..sroa_idx80.i.i.i.i.i.i, align 8, !noalias !67314
  %.sroa.14.0..sroa_idx90.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 %.sroa.9.0200.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx90.i.i.i.i.i.i, align 8, !noalias !67314
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 272 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ki
  %i.ks = shl nuw nsw i64 %i.kn, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kr, ptr nonnull align 8 %i.kq, i64 %i.ks, i1 false), !alias.scope !67321, !noalias !67320
  store i64 %.sroa.913.0199.i.i.i.i.i.i, ptr %i.kq, align 8, !alias.scope !67321, !noalias !67320
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 368 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ki
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kw, ptr nonnull align 8 %i.ku, i64 %i.ks, i1 false), !alias.scope !67323, !noalias !67320
  br label %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i50.i.i.i.i.i.i.i: ; preds = %bb.bp, %_ZN5alloc11collections5btree4node12slice_insert17h572d82b09ee6307fE.exit.i49.i.i.i.i.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kc, i64 368 ; 6 uses
  %i.ky = add nuw nsw i64 %i.kf, 2                ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.ki
  store ptr %.sroa.16.0196.i.i.i.i.i.i, ptr %i.kz, align 8, !alias.scope !67323, !noalias !67320
  store i16 %i.kg, ptr %i.kd, align 2, !noalias !67320
  %i.la = icmp samesign ult i64 %i.ki, %i.ky
  br i1 %i.la, label %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i"

.lr.ph.i.i51.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i50.i.i.i.i.i.i.i
  %i.lb = add nuw nsw i64 %i.kf, 1
  %i.lc = sub nsw i64 %i.lb, %.sroa.10.1.i.i.i.i.i.i.i
  %i.ld = sub nsw i64 %i.kf, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.lc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol

.lr.ph.i.i51.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol = phi i64 [ %i.le, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ %i.ki, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ]
  %i.le = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.lf = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !67324, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.lh, align 8, !noalias !67325
  %i.li = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol to i16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 360
  store i16 %i.li, ptr %i.lj, align 8, !noalias !67325
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, !llvm.loop !67187

.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr = phi i64 [ %i.ki, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ], [ %i.le, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ]
  %i.lk = icmp ult i64 %i.ld, 3
  br i1 %i.lk, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

.lr.ph.i.i51.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i = phi i64 [ %i.ma, %.lr.ph.i.i51.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ll = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !67324, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.ln, align 8, !noalias !67325
  %i.lo = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i to i16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 360
  store i16 %i.lo, ptr %i.lp, align 8, !noalias !67325
  %i.lq = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.ll
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !67324, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.ls, align 8, !noalias !67325
  %i.lt = trunc nuw nsw i64 %i.ll to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 360
  store i16 %i.lt, ptr %i.lu, align 8, !noalias !67325
  %i.lv = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.lq
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !67324, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.lx, align 8, !noalias !67325
  %i.ly = trunc nuw nsw i64 %i.lq to i16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 360
  store i16 %i.ly, ptr %i.lz, align 8, !noalias !67325
  %i.ma = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.mb = icmp ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.mb)
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.lv
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !67324, !nonnull !23, !noundef !23 ; 2 uses
  store ptr %i.kc, ptr %i.md, align 8, !noalias !67325
  %i.me = trunc nuw nsw i64 %i.lv to i16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 360
  store i16 %i.me, ptr %i.mf, align 8, !noalias !67325
  %exitcond.not.i.i53.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ma, %i.ky
  br i1 %exitcond.not.i.i53.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bk
  %i.mg = add nsw i64 %i.fq, -7
  br label %bb.bo

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i50.i.i.i.i.i.i.i
  %.sroa.858.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.858.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.858.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.858.sroa.6.0..sroa.858.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.858.sroa.7.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.858.sroa.7.0..sroa.858.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.861.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.861.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.964.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.964.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  br label %bb.bs

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i42.i.i.i.i.i.i.i
  %.sroa.858.sroa.0.0.copyload115.i.i.i.i.i.i = load ptr, ptr %.sroa.858.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.858.sroa.6.0.copyload116.i.i.i.i.i.i = load i64, ptr %.sroa.858.sroa.6.0..sroa.858.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.858.sroa.7.0.copyload117.i.i.i.i.i.i = load i64, ptr %.sroa.858.sroa.7.0..sroa.858.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.964.0.copyload66.i.i.i.i.i.i = load i64, ptr %.sroa.964.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326
  %.sroa.1067.0.copyload69.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !67326
  br label %bb.bs

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i.i.i.i, %bb.bk, %bb.bl, %bb.bd
  %lpad.loopexit.split-lp514 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mh = icmp eq i64 %.sroa.03.0202.i.i.i.i.i.i, 0
  br i1 %i.mh, label %.body.i.i.i, label %bb.br

bb.br:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0201.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0201.i.i.i.i.i.i, i64 noundef %.sroa.03.0202.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !67327
  br label %.body.i.i.i

.thread139.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8d0e25be4b6655abE.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !67276
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6429c8f7476dae28E.exit.i.i.i.i"

bb.bs:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i"
  %.sroa.1067.0.i.i.i.i.i.i = phi ptr [ %i.kc, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.1067.0.copyload69.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.964.0.i.i.i.i.i.i = phi i64 [ %.sroa.964.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.964.0.copyload66.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i" ]
  %.sroa.861.0.i.i.i.i.i.i = phi ptr [ %.sroa.861.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i" ], [ %i.hy, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.858.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.858.sroa.0.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.858.sroa.0.0.copyload115.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.858.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.858.sroa.6.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.858.sroa.6.0.copyload116.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.858.sroa.7.0.i.i.i.i.i.i = phi i64 [ %.sroa.858.sroa.7.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.858.sroa.7.0.copyload117.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h707d9a105fcd510aE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.055.0.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !67326 ; 3 uses
  %.sroa.1170.0.copyload72.i.i.i.i.i.i = load i64, ptr %.sroa.1170.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67326 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !67276
  %.not16.i.i.i.i.i.i = icmp eq i64 %.sroa.055.0.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6429c8f7476dae28E.exit.i.i.i.i", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.861.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1067.0.i.i.i.i.i.i) ]
  %i.mi = load ptr, ptr %.sroa.861.0.i.i.i.i.i.i, align 8, !noalias !67293, !noundef !23 ; 2 uses
  %.not.i.i.i.i8.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i8.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.ba
  store i16 1, ptr %i.ff, align 2, !noalias !67300
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.mj, align 8, !noalias !67328
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, align 8, !noalias !67328
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !67328
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fc, i64 272
  store i64 %.sroa.913.0.lcssa.i.i.i.i.i.i, ptr %i.mk, align 8, !noalias !67300
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fc, i64 376
  store ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, ptr %i.ml, align 8, !noalias !67300
  store ptr %i.fc, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, align 8, !noalias !67329
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, i64 360
  store i16 1, ptr %i.mm, align 8, !noalias !67329
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !67264, !noalias !67273
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6429c8f7476dae28E.exit.i.i.i.i"

bb.bv:                                            ; preds = %bb.ai
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mo = icmp eq i64 %i.be, 0
  br i1 %i.mo, label %.body.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !67330
  br label %.body.i.i.i

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6429c8f7476dae28E.exit.i.i.i.i": ; preds = %bb.bs, %bb.bu, %.thread139.i.i.i.i.i.i, %bb.aw, %.thread.i.i.i.i.i.i, %bb.aj
  %i.mp = phi ptr [ %i.dn, %bb.aj ], [ %i.fc, %bb.bu ], [ %.ph, %.thread139.i.i.i.i.i.i ], [ %.ph, %bb.aw ], [ %.ph, %.thread.i.i.i.i.i.i ], [ %.ph, %bb.bs ]
  %i.mq = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.aj ], [ %.pre.i.i.i, %bb.bu ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %.thread139.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.aw ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %.thread.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.bs ]
  %i.mr = add i64 %i.mq, 1                        ; 2 uses
  store i64 %i.mr, ptr %i.ao, align 8, !alias.scope !67264, !noalias !67273
  br label %.outer

_ZN10serde_core2de9MapAccess10next_entry17hc5bc01c307ec240eE.exit.thread21.i.i.i: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !67331
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h20562ae544b4043eE.exit.i.i"

common.resume.i.i:                                ; preds = %bb.cn, %bb.cb, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ns, %bb.cn ], [ %i.nb, %bb.cb ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.bx:                                            ; preds = %.body.i.i.i
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !67237
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h20562ae544b4043eE.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17hc5bc01c307ec240eE.exit.thread21.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17ha0df9a4c0b9befdcE.exit.i.i.i"
  %.sroa.029.0.i.i = phi i64 [ 1, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17ha0df9a4c0b9befdcE.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17hc5bc01c307ec240eE.exit.thread21.i.i.i ] ; 2 uses
  %.sroa.730.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17ha0df9a4c0b9befdcE.exit.i.i.i" ], [ %.ph, %_ZN10serde_core2de9MapAccess10next_entry17hc5bc01c307ec240eE.exit.thread21.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !67232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !67228
  %i.mt = load i8, ptr %i.ae, align 8, !range !31, !alias.scope !67230, !noundef !23
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !67228
  store i64 24, ptr %i.q, align 8, !noalias !67228
  %i.mv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !67229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !67228
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mv, ptr %i.mw, align 8, !alias.scope !67229
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h2b92fd97611e2197E.exit"

bb.bz:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h20562ae544b4043eE.exit.i.i"
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !alias.scope !67230, !noundef !23
  %i.mz = add i8 %i.my, 1
  store i8 %i.mz, ptr %i.mx, align 1, !alias.scope !67230
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h20562ae544b4043eE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !67228
  store i64 %.sroa.029.0.i.i, ptr %i.p, align 8, !noalias !67228
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.730.0.i.i, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !noalias !67228
  %.sroa.931.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.931.i.i, i64 16, i1 false), !noalias !67228
  %i.na = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.cc unwind label %bb.cb, !noalias !67229 ; 9 uses

bb.cb:                                            ; preds = %bb.ca
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$C$serde_json..error..Error$GT$$GT$17h11838369b9cda65aE"(ptr noalias noundef align 8 dereferenceable(32) %i.p) #44
          to label %common.resume.i.i unwind label %bb.cj, !noalias !67229

bb.cc:                                            ; preds = %bb.ca
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i, align 8, !noalias !67228 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !67228 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !67228
  %i.nc = trunc nuw i64 %.sroa.029.0.i.i to i1
  br i1 %i.nc, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not.i.i = icmp eq ptr %i.na, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  br i1 %.not.i.i, label %bb.co, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.730.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.931.i.i)
  %.not47.i.i = icmp eq ptr %i.na, null
  br i1 %.not47.i.i, label %.thread41.i.i, label %bb.ck

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67332
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.730.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !67333, !noalias !67332
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.730.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !67333, !noalias !67332
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !67333, !noalias !67332
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !67333, !noalias !67332
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.730.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !67333, !noalias !67332
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !67333, !noalias !67332
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i": ; preds = %bb.cg, %bb.cf
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.cg ], [ 0, %bb.cf ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.cg ], [ 0, %bb.cf ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !67333, !noalias !67332
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.nd, align 8, !alias.scope !67333, !noalias !67332
  %i.ne = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.ne, align 8, !alias.scope !67333, !noalias !67332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67334
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h7df026de81aad76dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !67229
  %i.nf = load ptr, ptr %i.b, align 8, !noalias !67334, !noundef !23 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread44.i.i, label %.lr.ph.i.i.i.i25.i.i

.lr.ph.i.i.i.i25.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.ch

bb.ch:                                            ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i25.i.i
  %i.ng = phi ptr [ %i.nf, %.lr.ph.i.i.i.i25.i.i ], [ %i.nl, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !67334
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67336)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !67337, !noalias !67338 ; 2 uses
  %i.nj = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nj, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nk, align 8, !alias.scope !67337, !noalias !67338, !nonnull !23, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !67339
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i": ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67334
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h7df026de81aad76dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !67229
  %i.nl = load ptr, ptr %i.b, align 8, !noalias !67334, !noundef !23 ; 2 uses
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i26.i.i, label %.thread44.i.i, label %bb.ch

.thread44.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h18f811f933db128dE.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5e8981c7be8da031E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67332
  br label %.thread41.i.i

bb.cj:                                            ; preds = %bb.cb
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !67229
  unreachable

bb.ck:                                            ; preds = %bb.ce
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67341)
  %i.nn = load i64, ptr %i.na, align 8, !range !51, !alias.scope !67342, !noalias !67343, !noundef !23
  switch i64 %i.nn, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i" [
    i64 0, label %bb.cl
    i64 1, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.no = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.no, align 8, !alias.scope !67342, !noalias !67343, !noundef !23 ; 2 uses
end_hunk_19
begin_hunk_20_@"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17h58c8f92ff19f9201E":bb.a
  %.sroa.528.i.i.i = alloca [39 x i8], align 1    ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 13 uses
  %i.g = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = getelementptr i8, ptr %.0.val, i64 8
  %.val = load ptr, ptr %i.h, align 8, !nonnull !23, !noundef !23
  %i.i = getelementptr i8, ptr %.0.val, i64 16
  %.val1 = load i64, ptr %i.i, align 8, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  call void @llvm.experimental.noalias.scope.decl(metadata !81675)
  call void @llvm.experimental.noalias.scope.decl(metadata !81676)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.528.i.i.i)
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !81675, !nonnull !23, !align !33, !noundef !23 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !81675, !noundef !23 ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !81676, !nonnull !23, !align !33, !noundef !23 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !81676, !noundef !23 ; 2 uses
  %i.p = icmp eq i64 %i.l, %i.o
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !98, !alias.scope !81675, !noundef !23 ; 2 uses
  %.not37.i.i.i = icmp eq i8 %i.r, 6
  br i1 %.not37.i.i.i, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.t = load i8, ptr %i.s, align 8, !range !57, !alias.scope !81675, !noundef !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.v = load i8, ptr %i.u, align 8, !range !57, !alias.scope !81676, !noundef !23
  %i.w = icmp eq i8 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.y = load i8, ptr %i.x, align 1, !range !57, !alias.scope !81675
  %i.z = icmp eq i8 %i.y, 2
  %or.cond.i.i.i = select i1 %i.w, i1 %i.z, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.ab = load i8, ptr %i.aa, align 1, !range !57, !alias.scope !81676
  %i.ac = icmp eq i8 %i.ab, 2
  %or.cond9.i.i.i = select i1 %or.cond.i.i.i, i1 %i.ac, i1 false
  br i1 %or.cond9.i.i.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !98, !alias.scope !81675, !noundef !23
  %switch.i.i.i = icmp samesign ult i8 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !98, !alias.scope !81676, !noundef !23
  %i.ah = icmp samesign ugt i8 %i.ag, 2
  %.sroa.011.0.not.i.i.i = xor i1 %switch.i.i.i, %i.ah
  br i1 %.sroa.011.0.not.i.i.i, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.j, ptr nonnull %i.m, i64 %i.l), !noalias !81677
  %i.ai = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ai, label %"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h23b56c2489edafd7E.exit", label %bb.b

bb.f:                                             ; preds = %bb.b
  %.sroa.528.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.528.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.528.0..sroa_idx.i.i.i, i64 39, i1 false), !noalias !81676
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !range !31, !alias.scope !81675, !noundef !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.am = load i8, ptr %i.al, align 8, !range !57, !alias.scope !81675, !noundef !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.ao = load i8, ptr %i.an, align 1, !range !57, !alias.scope !81675, !noundef !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aq = load i8, ptr %i.ap, align 8, !range !98, !alias.scope !81676, !noundef !23 ; 2 uses
  %.not38.i.i.i = icmp eq i8 %i.aq, 6
  br i1 %.not38.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.5.0..sroa_idx31.i.i.i, i64 39, i1 false), !noalias !81675
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !range !31, !alias.scope !81676, !noundef !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.au = load i8, ptr %i.at, align 8, !range !57, !alias.scope !81676, !noundef !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.aw = load i8, ptr %i.av, align 1, !range !57, !alias.scope !81676, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !81678
  store ptr %i.j, ptr %i.e, align 8, !noalias !81679
  %.sroa.4.0..sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx42.i.i.i, align 8, !noalias !81679
  %.sroa.543.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.r, ptr %.sroa.543.0..sroa_idx.i.i.i, align 8, !noalias !81679
  %.sroa.6.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx44.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.528.i.i.i, i64 39, i1 false), !noalias !81677
  %.sroa.7.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.am, ptr %.sroa.7.0..sroa_idx45.i.i.i, align 8, !noalias !81679
  %.sroa.8.0..sroa_idx46.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i8 %i.ao, ptr %.sroa.8.0..sroa_idx46.i.i.i, align 1, !noalias !81679
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i8 %i.ak, ptr %.sroa.9.0..sroa_idx.i.i.i, align 2, !noalias !81679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !81678
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !81680, !noalias !81681
  %.sroa.448.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %.sroa.448.0..sroa_idx.i.i.i, align 8, !alias.scope !81680, !noalias !81681
  %.sroa.549.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.aq, ptr %.sroa.549.0..sroa_idx.i.i.i, align 8, !alias.scope !81680, !noalias !81681
  %.sroa.650.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.650.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i, i64 39, i1 false), !noalias !81677
  %.sroa.751.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 %i.au, ptr %.sroa.751.0..sroa_idx.i.i.i, align 8, !alias.scope !81680, !noalias !81681
  %.sroa.852.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  store i8 %i.aw, ptr %.sroa.852.0..sroa_idx.i.i.i, align 1, !alias.scope !81680, !noalias !81681
  %.sroa.953.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  store i8 %i.as, ptr %.sroa.953.0..sroa_idx.i.i.i, align 2, !alias.scope !81680, !noalias !81681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81682
  call void @"_ZN95_$LT$std..path..Components$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hbcbc922bc972d0e1E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !81683
  %i.ax = load i8, ptr %i.b, align 8, !range !121, !noalias !81682, !noundef !23 ; 2 uses
  %.not17.i.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 10
  br i1 %.not17.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.712.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ay = phi i8 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bt, %bb.u ] ; 4 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !81682 ; 2 uses
  %.sroa.49.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !81682 ; 10 uses
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !81682 ; 10 uses
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !81682 ; 4 uses
  %.sroa.712.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !81682 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81684
  call void @"_ZN95_$LT$std..path..Components$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hbcbc922bc972d0e1E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !81685
  %i.az = load i8, ptr %i.a, align 8, !range !121, !noalias !81684, !noundef !23 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.az, 10
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !81684 ; 2 uses
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !81684 ; 10 uses
  %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !81684 ; 5 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !81684 ; 4 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !81684 ; 2 uses
  %i.ba = icmp samesign ugt i8 %i.ay, 5
  %i.bb = zext nneg i8 %i.ay to i64
  %i.bc = add nsw i64 %i.bb, -5
  %i.bd = select i1 %i.ba, i64 %i.bc, i64 0       ; 2 uses
  %i.be = icmp samesign ult i8 %i.az, 6           ; 2 uses
  %i.bf = zext nneg i8 %i.az to i64
  %i.bg = add nsw i64 %i.bf, -5
  %i.bh = select i1 %i.be, i64 0, i64 %i.bg
  %i.bi = icmp eq i64 %i.bd, %i.bh
  br i1 %i.bi, label %bb.l, label %.loopexit.sink.split.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  switch i64 %i.bd, label %"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.thread21.i.i.i.i.i.i.i.i.i.i" [
    i64 0, label %bb.m
    i64 4, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %bb.n, label %"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.thread21.i.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp eq i8 %i.ay, %i.az
  br i1 %i.bj, label %bb.o, label %.loopexit.sink.split.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  switch i8 %i.ay, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %.split29.i.i.i.i.i.i.i.i.i.i
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %.split27.i.i.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split25.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i

.split25.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.49.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !81686, !noalias !81687
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  br i1 %i.bk, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %.not.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.loopexit.sink.split.i.i.i.i.i.i.i.i

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.49.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !81688, !noalias !81687
  %i.bl = icmp eq i32 %bcmp.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not.i.i53.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.712.0.copyload.i.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bl, i1 %.not.i.i53.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.i.i.i.i.i.i.i.i.i.i", label %.loopexit.sink.split.i.i.i.i.i.i.i.i

.split29.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.o
  %i.bm = icmp eq i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  %cond.fr30.i.i.i.i.i.i.i.i.i.i = freeze i1 %i.bm
  br i1 %cond.fr30.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %.not.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split31.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i

.split31.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.49.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !81689, !noalias !81687
  %bcmp.i.i47.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = icmp eq i32 %bcmp.i.i47.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  br i1 %i.bn, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %.not.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit52.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.loopexit.sink.split.i.i.i.i.i.i.i.i

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit52.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.49.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !81690, !noalias !81687
  %i.bo = icmp eq i32 %bcmp.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.712.0.copyload.i.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bo, i1 %.not.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i

.split27.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.o
  %i.bp = icmp eq i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  %cond.fr28.i.i.i.i.i.i.i.i.i.i = freeze i1 %i.bp
  br i1 %cond.fr28.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit52.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.611.0.copyload.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i59.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.611.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.712.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !81691, !noalias !81687
  %bcmp.i.i59.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i59.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = icmp eq i32 %bcmp.i.i59.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  br i1 %i.bq, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

bb.t:                                             ; preds = %bb.l
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split33.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i

.split33.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.49.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !81692, !noalias !81693
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  br i1 %i.br, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.thread21.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  br label %bb.u

"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.611.0.copyload.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.611.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.712.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !81694, !noalias !81687
  %bcmp.i.i55.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bs = icmp eq i32 %bcmp.i.i55.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  br i1 %i.bs, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

.loopexit.sink.split.i.i.i.i.i.i.i.i:             ; preds = %bb.t, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit52.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.s, %bb.r, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hdfe05b9293734643E.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.q, %bb.p, %bb.n, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81684
  br label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i

bb.u:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.thread21.i.i.i.i.i.i.i.i.i.i", %.split33.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i.i, %.split25.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81682
  call void @"_ZN95_$LT$std..path..Components$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hbcbc922bc972d0e1E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !81678
  %i.bt = load i8, ptr %i.b, align 8, !range !121, !noalias !81682, !noundef !23 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bt, 10
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.j

_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator5eq_by7compare28_$u7b$$u7b$closure$u7d$$u7d$17hbc0811b625294ef2E.exit.i.i.i.i.i.i.i.i.i.i", %.split33.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i.i, %.split25.i.i.i.i.i.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81682
  br label %_ZN4core4iter6traits8iterator8Iterator5eq_by17hb7f97d43335871b7E.exit.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.u, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !81695
  call void @"_ZN95_$LT$std..path..Components$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hbcbc922bc972d0e1E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !81678
  %i.bu = load i8, ptr %i.c, align 8, !range !121, !noalias !81695, !noundef !23
  %.not5.i.not.i.i.i.i = icmp eq i8 %i.bu, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !81695
  br label %_ZN4core4iter6traits8iterator8Iterator5eq_by17hb7f97d43335871b7E.exit.i.i.i

_ZN4core4iter6traits8iterator8Iterator5eq_by17hb7f97d43335871b7E.exit.i.i.i: ; preds = %.loopexit.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %.not5.i.not.i.i.i.i, %.loopexit.i.i.i.i.i ], [ false, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hf3984dcefe228e6eE.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !81678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !81678
  br label %"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h23b56c2489edafd7E.exit"

"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h23b56c2489edafd7E.exit": ; preds = %bb.e, %_ZN4core4iter6traits8iterator8Iterator5eq_by17hb7f97d43335871b7E.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.sroa.0.0.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator5eq_by17hb7f97d43335871b7E.exit.i.i.i ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hae6cd72d6c6b78a9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81735)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !81735, !noundef !23 ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !81735, !noundef !23 ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  %i.j = add i64 %i.h, 1                          ; 7 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %.sroa.03.0.i = select i1 %i.i, i64 %i.h, i64 %i.l ; 2 uses
  %i.m = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.e, %i.m
  br i1 %.not.i.not, label %bb.o, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext true), !noalias !81736
  %i.o = extractvalue { i64, i64 } %i.n, 0
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hf6091e93d16ddb57E.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i64 @llvm.umax.i64(i64 %.sroa.03.0.i, i64 %i.e) ; 4 uses
  %.sroa.0.0.i9 = add nuw nsw i64 %i.p, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81738
  %i.q = icmp ult i64 %i.p, 14
  br i1 %i.q, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %i.p, 2305843009213693950
  br i1 %i.r, label %bb.j, label %bb.f, !prof !26

.thread.i:                                        ; preds = %bb.d
  %i.s = icmp samesign ult i64 %i.p, 3
  %i.t = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.t, 8
  %.sroa.03.0.i.i = select i1 %i.s, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %.sroa.0.0.i9, 3
  %i.v = udiv i64 %i.u, 7
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = lshr i64 -1, %i.x                        ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %or.cond7.i.i = icmp samesign ugt i64 %i.y, 2305843009213693949
  br i1 %or.cond7.i.i, label %bb.h, label %bb.g, !prof !81739

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.z, %bb.f ] ; 5 uses
  %i.aa = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.ab = add nuw i64 %i.aa, 8
  %i.ac = and i64 %i.ab, -16                      ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16  ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.h, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i, !prof !34

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !81740
  %i.ah = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !81740 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext true), !noalias !81740
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit.thread

bb.i:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i
  %i.ak = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ae), !noalias !81740
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext true), !noalias !81741
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit.thread

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit: ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 7 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.09.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ad, i1 false), !noalias !81741
  store ptr %i.c, ptr %i.b, align 8, !noalias !81738
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !81738
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !81738
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !81738
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.an, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81738
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81738
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81738
  %i.ar = load i64, ptr %i.d, align 8, !alias.scope !81742, !noundef !23 ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = ptrtoint ptr %i.aq to i64
  br i1 %i.as, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit.._crit_edge64_crit_edge, label %.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit.._crit_edge64_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !81743
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64

.preheader.lr.ph:                                 ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !81742, !nonnull !23, !noundef !23 ; 5 uses
  %.val640 = load <16 x i8>, ptr %i.au, align 16
  %i.av = icmp sgt <16 x i8> %.val640, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  br label %.preheader

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h8119ab87e132bb76E.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.al, %bb.j ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ]
  %.sroa.7.037 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81738
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hf6091e93d16ddb57E.exit

bb.k:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h81c6f7d93d8a0cc9E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #44
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN9hashbrown3raw13RawTableInner17find_insert_index17h99bc1c42481e7e5dE.exit
  %.sroa.020.063 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.020.1.lcssa, %_ZN9hashbrown3raw13RawTableInner17find_insert_index17h99bc1c42481e7e5dE.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_ZN9hashbrown3raw13RawTableInner17find_insert_index17h99bc1c42481e7e5dE.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.ar, %.preheader.lr.ph ], [ %i.bv, %_ZN9hashbrown3raw13RawTableInner17find_insert_index17h99bc1c42481e7e5dE.exit ]
  %.sroa.13.060 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bt, %_ZN9hashbrown3raw13RawTableInner17find_insert_index17h99bc1c42481e7e5dE.exit ] ; 2 uses
  %.not.i255 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i255, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.020.157 = phi ptr [ %i.ay, %.noexc3 ], [ %.sroa.020.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.bb, %.noexc3 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.157) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.020.157, i64 16 ; 3 uses
  %.val541 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val541, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
end_hunk_20
