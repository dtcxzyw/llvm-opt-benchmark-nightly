Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@"_ZN115_$LT$heed..iterator..prefix..RoPrefix$LT$KC$C$DC$C$C$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb60273a02255c0bE":bb.a
  br i1 %i.bl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.40.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.40.copyload) ]
  store i32 3, ptr %0, align 8
  %.sroa.04.sroa.10.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.40.copyload, ptr %.sroa.04.sroa.10.0..sroa_idx24, align 8
  %.sroa.04.sroa.12.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.40.copyload, ptr %.sroa.04.sroa.12.0..sroa_idx26, align 8
  %.sroa.85.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 2, ptr %.sroa.85.0..sroa_idx6, align 1
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit"

bb.x:                                             ; preds = %bb.v
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false)
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.767.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.bm = ptrtoint ptr %.sroa.13.40.copyload to i64
  %.sroa.13.44.extract.trunc = trunc i64 %i.bm to i32
  store i8 %i.bi, ptr %0, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.544.0.copyload, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0.copyload, ptr %.sroa.666.0..sroa_idx, align 8
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.10.40.copyload, ptr %.sroa.868.0..sroa_idx, align 8
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store ptr %.sroa.11.40.copyload, ptr %.sroa.969.0..sroa_idx, align 4
  %.sroa.1070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.13.44.extract.trunc, ptr %.sroa.1070.0..sroa_idx, align 4
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit"

bb.y:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.544.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  store i32 3, ptr %0, align 8
  %.sroa.04.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.544.0.copyload, ptr %.sroa.04.sroa.10.0..sroa_idx, align 8
  %.sroa.04.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0.copyload, ptr %.sroa.04.sroa.12.0..sroa_idx, align 8
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 2, ptr %.sroa.85.0..sroa_idx, align 1
  %i.bn = trunc nuw i32 %.sroa.750.40.copyload to i1
  br i1 %i.bn, label %bb.aa, label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit"

common.resume:                                    ; preds = %bb.ad, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.bw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.bw, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit": ; preds = %bb.x, %bb.w, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.ac, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.k

bb.aa:                                            ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.40.copyload) ]
  %i.bp = load ptr, ptr %.sroa.13.40.copyload, align 8, !invariant.load !26 ; 2 uses
  %.not.i41 = icmp eq ptr %i.bp, null
  br i1 %.not.i41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.40.copyload) ]
  invoke void %i.bp(ptr noundef nonnull %.sroa.11.40.copyload)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.13.40.copyload, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !27, !invariant.load !26 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.13.40.copyload, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !861, !invariant.load !26 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, -9223372036854775807
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i64 %i.br, 0
  br i1 %i.bv, label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.40.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.40.copyload, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bt) #49
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit"

bb.ad:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.13.40.copyload, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !27, !invariant.load !26 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.13.40.copyload, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !861, !invariant.load !26 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, -9223372036854775807
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.by, 0
  br i1 %i.cc, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.40.copyload, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #49
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN116_$LT$meilisearch_auth..error..AuthControllerError$u20$as$u20$core..convert..From$LT$serde_json..error..Error$GT$$GT$4from17he97571f0a48c1ec3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !862
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #49 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ccee352b21bc803E.exit", !prof !187

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #51
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ccee352b21bc803E.exit": ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @42, ptr %i.g, align 8
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN119_$LT$meilisearch_auth..error..AuthControllerError$u20$as$u20$core..convert..From$LT$core..str..error..Utf8Error$GT$$GT$4from17h3c7df478ab1b981dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !865
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !865 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !187

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #50, !noalias !865
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @44, ptr %i.d, align 8
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq28_$u7b$$u7b$closure$u7d$$u7d$17h930156074dcc7fdeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 12), (16, 17)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !26, !align !208, !noundef !26
  %i.b = load i8, ptr %i.a, align 1, !noundef !26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !26, !align !208, !noundef !26
  %i.e = load i8, ptr %i.d, align 1, !noundef !26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !26, !align !208, !noundef !26
  %i.h = load i8, ptr %i.g, align 1, !noundef !26 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !26, !align !868, !noundef !26
  %i.k = load i32, ptr %i.j, align 4, !noundef !26 ; 2 uses
  %i.l = icmp ugt i8 %i.b, 23
  br i1 %i.l, label %bb.e, label %bb.b, !prof !282

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i8 %i.e, 59
  br i1 %i.m, label %bb.e, label %bb.c, !prof !282

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i8 %i.h, 59
  br i1 %i.n, label %bb.e, label %bb.d, !prof !282

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ugt i32 %i.k, 999999999
  br i1 %i.o, label %bb.e, label %_ZN4time4time4Time13from_hms_nano17h1d19fffb3214f07cE.exit, !prof !282

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.sroa.0.sroa.13.0.ph.in.in = phi i64 [ ptrtoint (ptr @265 to i64), %bb.d ], [ ptrtoint (ptr @269 to i64), %bb.c ], [ ptrtoint (ptr @270 to i64), %bb.b ], [ ptrtoint (ptr @271 to i64), %bb.a ]
  %.sroa.14.0.ph = phi i64 [ 10, %bb.d ], [ 6, %bb.c ], [ 6, %bb.b ], [ 4, %bb.a ]
  store i64 %.sroa.0.sroa.13.0.ph.in.in, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.14.0.ph, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

_ZN4time4time4Time13from_hms_nano17h1d19fffb3214f07cE.exit: ; preds = %bb.d
  %.sroa.0.sroa.0.0.insert.ext = zext nneg i32 %i.k to i64
  %.sroa.0.sroa.12.0.insert.ext = zext nneg i8 %i.h to i64
  %.sroa.0.sroa.12.0.insert.shift = shl nuw nsw i64 %.sroa.0.sroa.12.0.insert.ext, 32
  %.sroa.0.sroa.11.0.insert.ext = zext nneg i8 %i.e to i64
  %.sroa.0.sroa.11.0.insert.shift = shl nuw nsw i64 %.sroa.0.sroa.11.0.insert.ext, 40
  %.sroa.0.sroa.10.0.insert.ext = zext nneg i8 %i.b to i64
  %.sroa.0.sroa.10.0.insert.shift = shl nuw nsw i64 %.sroa.0.sroa.10.0.insert.ext, 48
  %.sroa.0.sroa.10.0.insert.insert = or disjoint i64 %.sroa.0.sroa.11.0.insert.shift, %.sroa.0.sroa.10.0.insert.shift
  %.sroa.0.sroa.0.5.insert.insert = or disjoint i64 %.sroa.0.sroa.10.0.insert.insert, %.sroa.0.sroa.12.0.insert.shift
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.0.5.insert.insert, %.sroa.0.sroa.0.0.insert.ext
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN4time4time4Time13from_hms_nano17h1d19fffb3214f07cE.exit, %bb.e
  %.sink = phi i8 [ 2, %_ZN4time4time4Time13from_hms_nano17h1d19fffb3214f07cE.exit ], [ 0, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.p, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN13generic_array3hex91_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$generic_array..GenericArray$LT$u8$C$T$GT$$GT$3fmt17h6644b5317b067314E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !noundef !26
  %i.d = and i32 %i.c, 268435456
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i64
  %.sroa.01.0 = select i1 %i.e, i64 64, i64 %i.h  ; 6 uses
  %i.i = lshr i64 %.sroa.01.0, 1
  %i.j = sub nuw nsw i64 %.sroa.01.0, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !alias.scope !869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 32) ; 2 uses
  %.not.i = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not.i, label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = load ptr, ptr @_ZN13generic_array3hex11LOWER_CHARS17hb110f58be8abcfacE, align 8, !noalias !875, !nonnull !26, !align !208 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i.1", %.lr.ph.i
  %.sroa.0.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aa, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i.1" ] ; 5 uses
  %i.l = shl nuw nsw i64 %.sroa.0.011.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.011.i, 32
  br i1 %exitcond.not.i, label %bb.c, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i"

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #50, !noalias !877
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i": ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.011.i
  %.val9.i = load i8, ptr %i.m, align 1, !noalias !875 ; 2 uses
  %i.n = or disjoint i64 %.sroa.0.011.i, 1        ; 3 uses
  %i.o = lshr i8 %.val9.i, 4
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !877, !noundef !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l ; 2 uses
  store i8 %i.r, ptr %i.s, align 1, !alias.scope !872, !noalias !880
  %i.t = and i8 %.val9.i, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !877, !noundef !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.w, ptr %i.x, align 1, !alias.scope !872, !noalias !880
  %exitcond13.not.i = icmp eq i64 %i.n, %.sroa.0.0.i.i
  br i1 %exitcond13.not.i, label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i.1"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i.1": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i"
  %i.y = shl nuw nsw i64 %i.n, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.val9.i.1 = load i8, ptr %i.z, align 1, !noalias !875 ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.0.011.i, 2       ; 2 uses
  %i.ab = lshr i8 %.val9.i.1, 4
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !877, !noundef !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y ; 2 uses
  store i8 %i.ae, ptr %i.af, align 1, !alias.scope !872, !noalias !880
  %i.ag = and i8 %.val9.i.1, 15
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !877, !noundef !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !alias.scope !872, !noalias !880
  %exitcond13.not.i.1 = icmp eq i64 %i.aa, %.sroa.0.0.i.i
  br i1 %exitcond13.not.i.1, label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit", label %bb.b

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i.1", %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17he3d9dfb81fa89327E.exit.i"
  %i.al = icmp samesign ult i64 %.sroa.01.0, 65
  br i1 %i.al, label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit.thread", label %bb.d, !prof !881

bb.d:                                             ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.01.0, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50
  unreachable

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit.thread": ; preds = %bb.a, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h559fd84453af5478E.exit"
  %i.am = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.01.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.am
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules19is_index_authorized17h62ee72586ae31201E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !795, !noundef !26
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.d ], [ true, %bb.b ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules19is_index_authorized17h62ee72586ae31201E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZN16meilisearch_auth10AuthFilter22all_indexes_authorized17h83a7f551004c1de0E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules22all_indexes_authorized17hb7c7d7920b9abe1cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !795, !noundef !26
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.d ], [ true, %bb.b ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules22all_indexes_authorized17hb7c7d7920b9abe1cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16meilisearch_auth10AuthFilter22get_index_search_rules17h11af61214be2396eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.554.i.i = alloca [7 x i8], align 1       ; 5 uses
  %.sroa.523.i.i = alloca [7 x i8], align 1       ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules19is_index_authorized17h62ee72586ae31201E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  br i1 %i.d, label %bb.b, label %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread3

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !range !795, !alias.scope !882, !noalias !885, !noundef !26
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread, label %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit

_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit: ; preds = %bb.b
  %i.g = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules19is_index_authorized17h62ee72586ae31201E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  br i1 %i.g, label %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread, label %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread3

_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread3: ; preds = %bb.a, %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.y

_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread: ; preds = %bb.b, %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit
  %. = phi ptr [ %1, %bb.b ], [ %i.e, %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = load i64, ptr %., align 8, !range !513, !alias.scope !890, !noalias !892, !noundef !26
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %., i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !897, !noalias !898, !nonnull !26, !noundef !26 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !900
  %i.m = getelementptr inbounds nuw i8, ptr %., i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !897, !noalias !898, !noundef !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523.i.i)
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.s = icmp eq i64 %i.ag, 0
  br i1 %i.s, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.t = phi i64 [ %i.n, %.lr.ph ], [ %i.ag, %bb.d ]
end_hunk_0
begin_hunk_1_@"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !8827
  br label %.invoke.i

bb.am:                                            ; preds = %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !8827
  br label %.noexc19.i

bb.an:                                            ; preds = %.noexc17.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !8827
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8931
  store i128 -170141183460469231731687303715884105728, ptr %i.g, align 16, !noalias !8954
  %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i, align 16, !noalias !8954
  %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i, align 4, !noalias !8954
  %.sroa.9.0..sroa_idx11.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i32 -1, ptr %.sroa.9.0..sroa_idx11.i.i.i.i.i.i.i.i, align 8, !noalias !8954
  %.sroa.10.0..sroa_idx15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  store i16 -32768, ptr %.sroa.10.0..sroa_idx15.i.i.i.i.i.i.i.i, align 4, !noalias !8954
  %.sroa.11.0..sroa_idx19.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 30 ; 2 uses
  store i16 -32768, ptr %.sroa.11.0..sroa_idx19.i.i.i.i.i.i.i.i, align 2, !noalias !8954
  %.sroa.12.0..sroa_idx23.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx23.i.i.i.i.i.i.i.i, align 16, !noalias !8954
  %.sroa.13.0..sroa_idx27.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34 ; 2 uses
  %.sroa.14.0..sroa_idx31.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %.sroa.15.0..sroa_idx35.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %.sroa.16.0..sroa_idx39.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  %.sroa.17.0..sroa_idx43.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 38 ; 2 uses
  store i32 -1, ptr %.sroa.13.0..sroa_idx27.i.i.i.i.i.i.i.i, align 2, !noalias !8955
  %.sroa.18.0..sroa_idx47.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 39
  %.sroa.19.0..sroa_idx51.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.20.0..sroa_idx55.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %.sroa.21.0..sroa_idx59.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 42
  %.sroa.22.0..sroa_idx63.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 43
  %.sroa.23.0..sroa_idx67.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %.sroa.24.0..sroa_idx71.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 45
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx43.i.i.i.i.i.i.i.i, align 2, !noalias !8954
  %.sroa.25.0..sroa_idx75.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 46 ; 2 uses
  %.sroa.26.0..sroa_idx79.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 47
  %.sroa.27.0..sroa_idx83.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.28.0..sroa_idx87.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx75.i.i.i.i.i.i.i.i, align 2, !noalias !8954
  %.sroa.29.0..sroa_idx91.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 50 ; 2 uses
  %.sroa.30.0..sroa_idx95.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 51
  %.sroa.31.0..sroa_idx99.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %.sroa.32.0..sroa_idx103.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 53
  store i32 0, ptr %.sroa.29.0..sroa_idx91.i.i.i.i.i.i.i.i, align 2, !noalias !8955
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8931
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @68, ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ec, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i)
          to label %.noexc28.i unwind label %bb.ji, !noalias !8778

.noexc28.i:                                       ; preds = %bb.an
  %i.er = load i64, ptr %i.f, align 8, !range !269, !noalias !8931, !noundef !26 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.noexc28.i
  %i.es = load ptr, ptr %i.ep, align 8, !noalias !8931, !nonnull !26, !align !208, !noundef !26
  %i.et = load i64, ptr %i.eq, align 8, !noalias !8931, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8931
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.es, i64 noundef %i.et)
          to label %.noexc29.i unwind label %bb.ji, !noalias !8778

.noexc29.i:                                       ; preds = %bb.ao
  %i.eu = load i64, ptr %i.f, align 8, !range !269, !noalias !8931, !noundef !26 ; 2 uses
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eu, 3
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.noexc29.i
  %i.ev = load ptr, ptr %i.ep, align 8, !noalias !8931, !nonnull !26, !align !208, !noundef !26
  %i.ew = load i64, ptr %i.eq, align 8, !noalias !8931, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8931
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ev, i64 noundef %i.ew)
          to label %.noexc30.i unwind label %bb.ji, !noalias !8778

.noexc30.i:                                       ; preds = %bb.ap
  %i.ex = load i64, ptr %i.f, align 8, !range !269, !noalias !8931, !noundef !26 ; 2 uses
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ex, 3
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.noexc30.i
  %i.ey = load ptr, ptr %i.ep, align 8, !noalias !8931, !nonnull !26, !align !208, !noundef !26
  %i.ez = load i64, ptr %i.eq, align 8, !noalias !8931, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8931
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ey, i64 noundef %i.ez)
          to label %.noexc31.i unwind label %bb.ji, !noalias !8778

.noexc31.i:                                       ; preds = %bb.aq
  %i.fa = load i64, ptr %i.f, align 8, !range !269, !noalias !8931, !noundef !26 ; 2 uses
  %.not.i.3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fa, 3
  br i1 %.not.i.3.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.noexc31.i
  %i.fb = load ptr, ptr %i.ep, align 8, !noalias !8931, !nonnull !26, !align !208, !noundef !26
  %i.fc = load i64, ptr %i.eq, align 8, !noalias !8931, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8931
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fb, i64 noundef %i.fc)
          to label %.noexc32.i unwind label %bb.ji, !noalias !8778

.noexc32.i:                                       ; preds = %bb.ar
  %i.fd = load i64, ptr %i.f, align 8, !range !269, !noalias !8931, !noundef !26 ; 2 uses
  %.not.i.4.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, 3
  br i1 %.not.i.4.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc32.i, %.noexc31.i, %.noexc30.i, %.noexc29.i, %.noexc28.i
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.er, %.noexc28.i ], [ %i.eu, %.noexc29.i ], [ %i.ex, %.noexc30.i ], [ %i.fa, %.noexc31.i ], [ %i.fd, %.noexc32.i ]
  %.sroa.515.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !8931
  %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !8931 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8931
  %i.fe = ptrtoint ptr %.sroa.515.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.fe to i32
  %.sroa.11.sroa.7.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %i.fe, 32
  %.sroa.11.sroa.7.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.11.sroa.7.0.extract.shift.i.i.i.i.i.i.i to i32
  %.sroa.14.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i32
  %.sroa.14.sroa.7.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.14.sroa.7.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.14.sroa.7.0.extract.shift.i.i.i.i.i.i.i to i16
  %.sroa.14.sroa.8.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 48
  %.sroa.14.sroa.8.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.14.sroa.8.0.extract.shift.i.i.i.i.i.i.i to i16
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i

bb.at:                                            ; preds = %.noexc32.i
  %i.ff = load i64, ptr %i.eq, align 8, !noalias !8931, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8931
  %.sroa.0.0.copyload2.i22.i.i.i.i.i.i.i = load i64, ptr %i.g, align 16, !noalias !8956 ; 3 uses
  %.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload2.i23.i.i.i.i.i.i.i = load i64, ptr %.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !8956 ; 3 uses
  %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i, align 16, !noalias !8954 ; 7 uses
  %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i, align 4, !noalias !8954 ; 7 uses
  %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx11.i.i.i.i.i.i.i.i, align 8, !noalias !8954 ; 7 uses
  %.sroa.10.0.copyload18.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.10.0..sroa_idx15.i.i.i.i.i.i.i.i, align 4, !noalias !8954 ; 3 uses
  %.sroa.11.0.copyload22.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.11.0..sroa_idx19.i.i.i.i.i.i.i.i, align 2, !noalias !8954 ; 3 uses
  %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.12.0..sroa_idx23.i.i.i.i.i.i.i.i, align 16, !noalias !8954 ; 4 uses
  %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.13.0..sroa_idx27.i.i.i.i.i.i.i.i, align 2, !noalias !8954 ; 3 uses
  %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.14.0..sroa_idx31.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 3 uses
  %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.15.0..sroa_idx35.i.i.i.i.i.i.i.i, align 4, !noalias !8954 ; 3 uses
  %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.16.0..sroa_idx39.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 3 uses
  %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.17.0..sroa_idx43.i.i.i.i.i.i.i.i, align 2, !noalias !8954 ; 3 uses
  %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.18.0..sroa_idx47.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 5 uses
  %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.19.0..sroa_idx51.i.i.i.i.i.i.i.i, align 8, !noalias !8954 ; 5 uses
  %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.20.0..sroa_idx55.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 6 uses
  %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.21.0..sroa_idx59.i.i.i.i.i.i.i.i, align 2, !noalias !8954 ; 4 uses
  %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx63.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 5 uses
  %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.23.0..sroa_idx67.i.i.i.i.i.i.i.i, align 4, !noalias !8954 ; 9 uses
  %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.24.0..sroa_idx71.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 5 uses
  %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.25.0..sroa_idx75.i.i.i.i.i.i.i.i, align 2, !noalias !8954 ; 5 uses
  %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.26.0..sroa_idx79.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 5 uses
  %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.27.0..sroa_idx83.i.i.i.i.i.i.i.i, align 16, !noalias !8954 ; 5 uses
  %.sroa.28.0.copyload90.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.28.0..sroa_idx87.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 2 uses
  %.sroa.29.0.copyload94.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.29.0..sroa_idx91.i.i.i.i.i.i.i.i, align 2, !noalias !8954
  %.sroa.30.0.copyload98.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.30.0..sroa_idx95.i.i.i.i.i.i.i.i, align 1, !noalias !8954
  %.sroa.31.0.copyload102.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.31.0..sroa_idx99.i.i.i.i.i.i.i.i, align 4, !noalias !8954
  %.sroa.32.0.copyload106.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.32.0..sroa_idx103.i.i.i.i.i.i.i.i, align 1, !noalias !8954 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8931
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc832a904ce2adf28E.exit.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i

_ZN4time7parsing8parsable6sealed6Sealed5parse17hc832a904ce2adf28E.exit.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.fh = icmp eq i8 %.sroa.32.0.copyload106.i.i.i.i.i.i.i.i, 2
  br i1 %i.fh, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc832a904ce2adf28E.exit.i.i.i.i.i.i.i
  %.sroa.011.sroa.0.0.insert.ext.i.i.i.i.i.i.i = zext i64 %.sroa.0.0.copyload2.i22.i.i.i.i.i.i.i to i128
  %.sroa.011.sroa.0.8.insert.ext.i.i.i.i.i.i.i = zext i64 %.sroa.0.0.copyload2.i23.i.i.i.i.i.i.i to i128
  %.sroa.011.sroa.0.8.insert.shift.i.i.i.i.i.i.i = shl nuw i128 %.sroa.011.sroa.0.8.insert.ext.i.i.i.i.i.i.i, 64 ; 2 uses
  %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i = or disjoint i128 %.sroa.011.sroa.0.8.insert.shift.i.i.i.i.i.i.i, %.sroa.011.sroa.0.0.insert.ext.i.i.i.i.i.i.i ; 4 uses
  %i.fi = icmp eq i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i, -170141183460469231731687303715884105728
  br i1 %i.fi, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fj = icmp sgt i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i, -377705116800000000001
  call void @llvm.assume(i1 %i.fj), !noalias !8957
  %i.fk = icmp slt i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i, 253402300800000000000
  call void @llvm.assume(i1 %i.fk), !noalias !8957
  %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i.frozen = freeze i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i ; 2 uses
  %i.fl = sdiv i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i.frozen, 1000000000 ; 2 uses
  %i.fm = mul i128 %i.fl, 1000000000
  %.decomposed = sub i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i.frozen, %i.fm ; 4 uses
  %i.fn = icmp eq i128 %.decomposed, 0
  %i.fo = ashr i128 %.sroa.011.sroa.0.8.insert.shift.i.i.i.i.i.i.i, 127
  %i.fp = select i1 %i.fn, i128 0, i128 %i.fo
  %.sroa.0.0.off0.v.i.i.i.i.i.i.i.i.i = add nsw i128 %i.fp, %i.fl
  %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i = trunc nsw i128 %.sroa.0.0.off0.v.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, -377705116800
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.ay, !prof !282

bb.aw:                                            ; preds = %bb.au
  %i.fq = trunc nuw i8 %.sroa.32.0.copyload106.i.i.i.i.i.i.i.i to i1
  br i1 %i.fq, label %bb.az, label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %.sroa.0.sroa.2.0.insert.insert.i.i.i.i.i.i.i.i.i = and i64 ptrtoint (ptr @260 to i64), -4294967296
  %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 ptrtoint (ptr @260 to i32) to i64
  %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.0.sroa.2.0.insert.insert.i.i.i.i.i.i.i.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.av
  %i.fr = sdiv i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, 86400
  %i.fs = srem i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, 86400 ; 4 uses
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = ashr i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, 63
  %i.fv = select i1 %i.ft, i64 0, i64 %i.fu
  %.sroa.03.0.i.i.i.i.i.i.i.i.i.i = add nsw i64 %i.fv, %i.fr
  %i.fw = trunc nsw i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i to i32
  %i.fx = add nsw i32 %i.fw, 869850581            ; 2 uses
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = mul nuw nsw i64 %i.fy, 3853261555       ; 2 uses
  %i.ga = lshr i64 %i.fz, 15
  %i.gb = lshr i64 %i.fz, 47
  %i.gc = trunc nuw nsw i64 %i.gb to i32          ; 3 uses
  %i.gd = trunc i64 %i.ga to i32
  %i.ge = icmp ugt i32 %i.gd, 42920275
  %i.gf = and i32 %i.gc, 3
  %i.gg = icmp eq i32 %i.gf, 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.ge, %i.gg ; 2 uses
  %i.gh = lshr i32 %i.gc, 2
  %i.gi = add nuw nsw i32 %i.fx, %i.gc
  %i.gj = sub nuw nsw i32 %i.gi, %i.gh
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = mul nuw nsw i64 %i.gk, 3010298776       ; 2 uses
  %i.gm = lshr i64 %i.gl, 8
  %i.gn = lshr i64 %i.gl, 40
  %i.go = trunc nuw nsw i64 %i.gn to i32          ; 2 uses
  %i.gp = and i64 %i.gm, 4294967295
  %i.gq = mul nuw nsw i64 %i.gp, 1461
  %i.gr = lshr i64 %i.gq, 34
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = zext i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.gu = add nuw nsw i32 %i.gs, %i.gt
  %i.gv = and i32 %i.go, 3
  %i.gw = icmp eq i32 %i.gv, 0
  %i.gx = and i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %i.gw
  %i.gy = shl nuw i32 %i.go, 10
  %i.gz = add nsw i32 %i.gy, 1858256896
  %i.ha = select i1 %i.gx, i32 512, i32 0
  %i.hb = or disjoint i32 %i.ha, %i.gz
  %i.hc = or i32 %i.hb, %i.gu                     ; 2 uses
  %i.hd = icmp ne i32 %i.hc, 0
  call void @llvm.assume(i1 %i.hd), !noalias !8957
  %i.he = icmp slt i64 %i.fs, 0
  %i.hf = add nsw i64 %i.fs, 86400
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.he, i64 %i.hf, i64 %i.fs ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.hg = udiv i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 3600
  %i.hh = urem i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 3600
  %.lhs.trunc20.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.hh to i16
  %i.hi = udiv i16 %.lhs.trunc20.i.i.i.i.i.i.i.i.i.i, 60
  %i.hj = urem i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 60
  %i.hk = icmp ult i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, 86400
  call void @llvm.assume(i1 %i.hk), !noalias !8957
  %.sroa.0.sroa.2.0.extract.trunc21.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.hj to i64
  %.sroa.0.sroa.3.0.extract.trunc23.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.hi to i64
  %.sroa.0.sroa.4.0.extract.trunc25.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.hg to i64
  %i.hl = icmp slt i128 %.decomposed, 0
  %i.hm = add nsw i128 %.decomposed, 1000000000
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.hl, i128 %i.hm, i128 %.decomposed ; 2 uses
  %i.hn = trunc nuw nsw i128 %spec.select.i.i.i.i.i.i.i.i.i.i to i32
  %i.ho = icmp samesign ult i32 %i.hn, 1000000000
  call void @llvm.assume(i1 %i.ho), !noalias !8957
  %.sroa.4.0.insert.shift.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.sroa.4.0.extract.trunc25.i.i.i.i.i.i.i.i.i, 48
  %.sroa.3.0.insert.shift.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.extract.trunc23.i.i.i.i.i.i.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i.i.i.i.i.i.i.i, %.sroa.4.0.insert.shift.i.i.i.i.i.i.i.i.i.i
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.sroa.2.0.extract.trunc21.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i
  %3 = trunc nuw nsw i128 %spec.select.i.i.i.i.i.i.i.i.i.i to i64
  %i.hp = icmp eq i32 %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, -1
  %.sroa.6255.0.i.i.i.i.i.i.i.i.a = zext nneg i32 %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i to i64
  %spec.select371.i.i.i.i.i.i.i.i = select i1 %i.hp, i64 %3, i64 %.sroa.6255.0.i.i.i.i.i.i.i.i.a
  %.sroa.0252.0.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i.i.i.i.i.i.i.i, %spec.select371.i.i.i.i.i.i.i.i
  %i.hq = zext i32 %i.hc to i64
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.aw
  %cond.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, -1
  br i1 %cond.i.i.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hr = icmp ult i8 %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, 61
  call void @llvm.assume(i1 %i.hr), !noalias !8957
  %i.hs = icmp eq i8 %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, 60
  br i1 %i.hs, label %4, label %bb.bb

bb.bb:                                            ; preds = %4, %bb.ba, %bb.az, %bb.aw
  %.sroa.1957.0.i.i.i.i.i.i.i = phi i8 [ -1, %bb.az ], [ 59, %4 ], [ %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, %bb.ba ], [ %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, %bb.aw ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, %bb.az ], [ 999999999, %4 ], [ %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, %bb.ba ], [ %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, %bb.aw ] ; 4 uses
  %.sroa.023.0.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.az ], [ true, %4 ], [ false, %bb.ba ], [ false, %bb.aw ]
  %.not294.i.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, -2147483648 ; 2 uses
  br i1 %.not294.i.i.i.i.i.i.i.i.i, label %bb.bc, label %.thread.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.ht = icmp sgt i32 %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, -10000
  call void @llvm.assume(i1 %i.ht), !noalias !8957
  %i.hu = icmp slt i32 %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, 10000
  call void @llvm.assume(i1 %i.hu), !noalias !8957
  br label %.thread.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bc, %bb.bb
  %.not295.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.0.copyload18.i.i.i.i.i.i.i.i, -32768
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not295.i.i.i.i.i.i.i.i.i, i8 2, i8 %.sroa.30.0.copyload98.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.thread391.i.i.i.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.hv = icmp ult i8 %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i, 100
  call void @llvm.assume(i1 %i.hv), !noalias !8957
  %.not296.i.i.i.i.i.i.i.i.i = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i, 2
  %or.cond325.i.i.i.i.i.i.i.i.i = or i1 %.not294.i.i.i.i.i.i.i.i.i, %.not296.i.i.i.i.i.i.i.i.i
  br i1 %or.cond325.i.i.i.i.i.i.i.i.i, label %.thread391.i.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hw = trunc nuw i8 %spec.select.i.i.i.i.i.i.i.i to i1
  %i.hx = sext i16 %.sroa.10.0.copyload18.i.i.i.i.i.i.i.i to i32
  %i.hy = mul nsw i32 %i.hx, 100
  %i.hz = zext nneg i8 %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.ia = sub nsw i32 0, %i.hz
  %.sroa.07.0.p.i.i.i.i.i.i.i.i.i = select i1 %i.hw, i32 %i.ia, i32 %i.hz
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = add nsw i32 %.sroa.07.0.p.i.i.i.i.i.i.i.i.i, %i.hy ; 2 uses
  %i.ib = add nsw i32 %.sroa.07.0.i.i.i.i.i.i.i.i.i, 9999
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ib, 19999
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i32 %.sroa.07.0.i.i.i.i.i.i.i.i.i, i32 -2147483648
  br label %.thread391.i.i.i.i.i.i.i.i.i

.thread391.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.be, %bb.bd, %.thread.i.i.i.i.i.i.i.i.i
  %i.ic = phi i32 [ %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, %bb.bd ], [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.be ] ; 18 uses
  %.not298.i.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, -2147483648 ; 2 uses
  br i1 %.not298.i.i.i.i.i.i.i.i.i, label %bb.bf, label %.thread397.i.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %.thread391.i.i.i.i.i.i.i.i.i
  %i.id = icmp sgt i32 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, -10000
  call void @llvm.assume(i1 %i.id), !noalias !8957
  %i.ie = icmp slt i32 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, 10000
  call void @llvm.assume(i1 %i.ie), !noalias !8957
  br label %.thread397.i.i.i.i.i.i.i.i.i

.thread397.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bf, %.thread391.i.i.i.i.i.i.i.i.i
  %.not299.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.11.0.copyload22.i.i.i.i.i.i.i.i, -32768
  %spec.select368.i.i.i.i.i.i.i.i = select i1 %.not299.i.i.i.i.i.i.i.i.i, i8 2, i8 %.sroa.31.0.copyload102.i.i.i.i.i.i.i.i ; 2 uses
  %.not297.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i, -1
  br i1 %.not297.i.i.i.i.i.i.i.i.i, label %.thread398.i.i.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.thread397.i.i.i.i.i.i.i.i.i
  %i.if = icmp ult i8 %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i, 100
  call void @llvm.assume(i1 %i.if), !noalias !8957
  %.not300.i.i.i.i.i.i.i.i.i = icmp eq i8 %spec.select368.i.i.i.i.i.i.i.i, 2
  %or.cond328.i.i.i.i.i.i.i.i.i = or i1 %.not298.i.i.i.i.i.i.i.i.i, %.not300.i.i.i.i.i.i.i.i.i
  br i1 %or.cond328.i.i.i.i.i.i.i.i.i, label %.thread398.i.i.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ig = trunc nuw i8 %spec.select368.i.i.i.i.i.i.i.i to i1
  %i.ih = sext i16 %.sroa.11.0.copyload22.i.i.i.i.i.i.i.i to i32
  %i.ii = mul nsw i32 %i.ih, 100
  %i.ij = zext nneg i8 %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.ik = sub nsw i32 0, %i.ij
  %.sroa.019.0.p.i.i.i.i.i.i.i.i.i = select i1 %i.ig, i32 %i.ik, i32 %i.ij
  %.sroa.019.0.i.i.i.i.i.i.i.i.i = add nsw i32 %.sroa.019.0.p.i.i.i.i.i.i.i.i.i, %i.ii ; 2 uses
  %i.il = add nsw i32 %.sroa.019.0.i.i.i.i.i.i.i.i.i, 9999
  %or.cond1.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.il, 19999
  %spec.select339.i.i.i.i.i.i.i.i.i = select i1 %or.cond1.i.i.i.i.i.i.i.i.i, i32 %.sroa.019.0.i.i.i.i.i.i.i.i.i, i32 -2147483648
  br label %.thread398.i.i.i.i.i.i.i.i.i

.thread398.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bh, %bb.bg, %.thread397.i.i.i.i.i.i.i.i.i
  %i.im = phi i32 [ %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, %.thread397.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, %bb.bg ], [ %spec.select339.i.i.i.i.i.i.i.i.i, %bb.bh ] ; 4 uses
  %.not301.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ic, -2147483648 ; 6 uses
  br i1 %.not301.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.thread511.i.i.i.i.i.i.i.i.i

.thread511.i.i.i.i.i.i.i.i.i:                     ; preds = %.thread398.i.i.i.i.i.i.i.i.i
  %i.in = icmp sgt i32 %i.ic, -10000
  call void @llvm.assume(i1 %i.in), !noalias !8957
  %i.io = icmp slt i32 %i.ic, 10000
  call void @llvm.assume(i1 %i.io), !noalias !8957
  %i.ip = icmp eq i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i, 0
  br i1 %i.ip, label %.critedge.i.i.i.i.i.i.i.i.i, label %bb.bi, !prof !28

bb.bi:                                            ; preds = %.thread511.i.i.i.i.i.i.i.i.i
  %i.iq = icmp ult i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i, 367
  call void @llvm.assume(i1 %i.iq), !noalias !8957
  %.sroa.010.0.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.ir = mul i32 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.is = and i32 %i.ir, 100695055
  %i.it = icmp samesign ult i32 %i.is, 31745      ; 2 uses
  %or.cond1.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i, 366
  br i1 %or.cond1.i.i.i.i.i.i.i.i.i.i, label %bb.bl, label %bb.bj, !prof !270

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.it, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.sroa.0191.sroa.15.0.extract.shift.i.i.i.i.i.i.i.i = lshr i64 ptrtoint (ptr @266 to i64), 32
  br label %bb.cn

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.iu = shl nsw i32 %i.ic, 10
  %i.iv = select i1 %i.it, i32 512, i32 0
  %i.iw = or disjoint i32 %i.iv, %i.iu
  %i.ix = zext nneg i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i to i32
  %i.iy = or disjoint i32 %i.iw, %i.ix
  br label %bb.co

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.thread398.i.i.i.i.i.i.i.i.i, %.thread511.i.i.i.i.i.i.i.i.i
  %i.iz = icmp eq i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, 0
  br i1 %i.iz, label %.thread423.i.i.i.i.i.i.i.i.i, label %bb.bm, !prof !28

bb.bm:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i
  %i.ja = icmp ult i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, 32
  call void @llvm.assume(i1 %i.ja), !noalias !8957
  %.not304.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i, 0
  %or.cond331.i.i.i.i.i.i.i.i.i = or i1 %.not304.i.i.i.i.i.i.i.i.i, %.not301.i.i.i.i.i.i.i.i.i
  br i1 %or.cond331.i.i.i.i.i.i.i.i.i, label %.thread423.i.i.i.i.i.i.i.i.i, label %bb.bn

.thread423.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bm, %.critedge.i.i.i.i.i.i.i.i.i
  %.not306.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.im, -2147483648 ; 2 uses
  br i1 %.not306.i.i.i.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.jb = add i32 %i.ic, -10000
  %or.cond.i340.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.jb, -19999
  br i1 %or.cond.i340.i.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bo, !prof !282

bb.bo:                                            ; preds = %bb.bn
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.jc = mul i32 %.sroa.012.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.jd = and i32 %i.jc, 100695055
  %i.je = icmp samesign ult i32 %i.jd, 31745      ; 3 uses
  %or.cond1.i341.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, 29
  br i1 %or.cond1.i341.i.i.i.i.i.i.i.i.i, label %bb.br, label %bb.bp, !prof !270

bb.bp:                                            ; preds = %bb.bo
  %i.jf = icmp eq i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i, 2
  %i.jg = lshr i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i, 3
  %i.jh = xor i8 %i.jg, %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i
  %i.ji = or i8 %i.jh, 30
  %..i.i.i.i.i.i.i.i.i.i = select i1 %i.je, i8 29, i8 28
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.jf, i8 %..i.i.i.i.i.i.i.i.i.i, i8 %i.ji
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, %.sroa.05.0.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %.sroa.0370.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ @267, %bb.bp ], [ @241, %bb.bn ]
  %.sroa.8371.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 3, %bb.bp ], [ 4, %bb.bn ]
  %.sink.i342.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.bp ], [ 0, %bb.bn ]
  %i.jj = ptrtoint ptr %.sroa.0370.0.ph.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %i.jj to i32
  %.sroa.0191.sroa.15.0.extract.shift197.i.i.i.i.i.i.i.i = lshr i64 %i.jj, 32
  br label %bb.cn

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %i.jk = zext nneg i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i to i64
  %.sroa.sel.i.i.i.i.i.i.i.i.i.i = select i1 %i.je, ptr getelementptr inbounds nuw (i8, ptr @268, i64 24), ptr @268
  %i.jl = getelementptr [2 x i8], ptr %.sroa.sel.i.i.i.i.i.i.i.i.i.i, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 -2
  %i.jn = load i16, ptr %i.jm, align 2, !noalias !8958, !noundef !26
  %i.jo = zext nneg i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i to i16
  %i.jp = add i16 %i.jn, %i.jo
  %i.jq = shl nsw i32 %i.ic, 10
  %i.jr = select i1 %i.je, i32 512, i32 0
  %i.js = or disjoint i32 %i.jr, %i.jq
  %i.jt = zext i16 %i.jp to i32
  %i.ju = or i32 %i.js, %i.jt                     ; 2 uses
  %i.jv = icmp ne i32 %i.ju, 0
  call void @llvm.assume(i1 %i.jv), !noalias !8957
  br label %bb.co

bb.bs:                                            ; preds = %.thread423.i.i.i.i.i.i.i.i.i
  %i.jw = icmp sgt i32 %i.im, -10000
  call void @llvm.assume(i1 %i.jw), !noalias !8957
  %i.jx = icmp slt i32 %i.im, 10000
  call void @llvm.assume(i1 %i.jx), !noalias !8957
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.thread423.i.i.i.i.i.i.i.i.i
  %i.jy = icmp eq i8 %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i, 0
  br i1 %i.jy, label %.thread444.i.i.i.i.i.i.i.i.i, label %bb.bu, !prof !28

.thread444.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bt
  %.not308448.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i, 7
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jz = icmp ult i8 %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i, 54
  call void @llvm.assume(i1 %i.jz), !noalias !8957
  %.not308.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %or.cond334.i.i.i.i.i.i.i.i.i = or i1 %.not308.i.i.i.i.i.i.i.i.i, %.not306.i.i.i.i.i.i.i.i.i
  br i1 %or.cond334.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %.thread444.i.i.i.i.i.i.i.i.i
  %.not308450.i.i.i.i.i.i.i.i.i = phi i1 [ %.not308448.i.i.i.i.i.i.i.i.i, %.thread444.i.i.i.i.i.i.i.i.i ], [ %.not308.i.i.i.i.i.i.i.i.i, %bb.bu ] ; 2 uses
  br i1 %.not301.i.i.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8967
  invoke void @_ZN4time4date4Date18from_iso_week_date17h82d4ed19514e9fc5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %i.im, i8 noundef %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i, i8 noundef %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i)
          to label %.noexc33.i unwind label %bb.ji, !noalias !8778

.noexc33.i:                                       ; preds = %bb.bw
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.kb = load i8, ptr %i.ka, align 8, !range !3069, !noalias !8967, !noundef !26 ; 2 uses
  %.not319.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.kb, 2
  %i.kc = load i32, ptr %i.e, align 8, !noalias !8967 ; 2 uses
  br i1 %.not319.i.i.i.i.i.i.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.noexc33.i
  %.sroa.4183.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.0191.sroa.15.4.copyload203.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4183.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !8968
  %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.17.4.copyload193.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8968
  %.sroa.6185.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.34.i.i.sroa.0.0.copyload.i.i.i.i.i.i = load i24, ptr %.sroa.6185.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !noalias !8956
  %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.34.i.i.sroa.4.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i, align 4, !noalias !8956
  %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.sroa.34.i.i.sroa.5.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i, align 2, !noalias !8956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8967
  %i.kd = zext i32 %.sroa.0191.sroa.15.4.copyload203.i.i.i.i.i.i.i.i to i64
  %i.ke = zext i24 %.sroa.34.i.i.sroa.0.0.copyload.i.i.i.i.i.i to i32
  br label %bb.cn

bb.by:                                            ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8967
  br label %bb.co

bb.bz:                                            ; preds = %bb.bv
  %i.kf = icmp sgt i32 %i.ic, -10000
  call void @llvm.assume(i1 %i.kf), !noalias !8957
  %i.kg = icmp slt i32 %i.ic, 10000
  call void @llvm.assume(i1 %i.kg), !noalias !8957
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bv
  %.not309.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i, -1
  br i1 %.not309.i.i.i.i.i.i.i.i.i, label %.thread456.i.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kh = icmp ult i8 %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i, 54
  call void @llvm.assume(i1 %i.kh), !noalias !8957
  %or.cond336.i.i.i.i.i.i.i.i.i = or i1 %.not301.i.i.i.i.i.i.i.i.i, %.not308450.i.i.i.i.i.i.i.i.i
  br i1 %or.cond336.i.i.i.i.i.i.i.i.i, label %.thread456.i.i.i.i.i.i.i.i.i, label %switch.lookup

.thread456.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cb, %bb.ca
  br i1 %.not301.i.i.i.i.i.i.i.i.i, label %bb.ch, label %bb.cg

switch.lookup:                                    ; preds = %bb.cb
  %i.ki = zext nneg i8 %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i to i16
  %i.kj = mul nuw nsw i16 %i.ki, 7
  %i.kk = zext nneg i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E", i64 %i.kk
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.kl = add nuw nsw i16 %i.kj, %switch.ext
  %i.km = shl i32 %i.ic, 10                       ; 2 uses
  %i.kn = ashr exact i32 %i.km, 10
  %i.ko = add nsw i32 %i.kn, 999999               ; 3 uses
  %.neg.i.i.i.i.i.i.i.i.i.i.i = sdiv i32 %i.ko, -100
  %i.kp = add nsw i32 %.neg.i.i.i.i.i.i.i.i.i.i.i, -363521074
  %i.kq = sdiv i32 %i.ko, 400
  %i.kr = add nsw i32 %i.kp, %i.kq
  %i.ks = sext i32 %i.ko to i64
  %i.kt = mul nsw i64 %i.ks, 1461
  %i.ku = sdiv i64 %i.kt, 4
  %i.kv = trunc nsw i64 %i.ku to i32
  %i.kw = add nsw i32 %i.kr, %i.kv
  %i.kx = srem i32 %i.kw, 7
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr [2 x i8], ptr @"switch.table._ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E.615", i64 %i.ky
  %switch.gep211 = getelementptr i8, ptr %i.kz, i64 12
  %switch.load212 = load i16, ptr %switch.gep211, align 2
  %i.la = add nsw i16 %i.kl, %switch.load212      ; 2 uses
  %i.lb = add nsw i16 %i.la, 1                    ; 2 uses
  %i.lc = add i32 %i.ic, -10000
  %or.cond.i344.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.lc, -19999
  br i1 %or.cond.i344.i.i.i.i.i.i.i.i.i, label %bb.ce, label %bb.cc, !prof !282

bb.cc:                                            ; preds = %switch.lookup
  %.sroa.010.0.i345.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.ld = mul i32 %.sroa.010.0.i345.i.i.i.i.i.i.i.i.i, 33555415
  %i.le = and i32 %i.ld, 100695055
  %i.lf = icmp samesign ult i32 %i.le, 31745      ; 2 uses
  %or.cond1.i346.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.la, 365
  br i1 %or.cond1.i346.i.i.i.i.i.i.i.i.i, label %bb.cf, label %bb.cd, !prof !270

bb.cd:                                            ; preds = %bb.cc
  %i.lg = icmp eq i16 %i.lb, 366
  %brmerge.not.i347.i.i.i.i.i.i.i.i.i = and i1 %i.lf, %i.lg
  br i1 %brmerge.not.i347.i.i.i.i.i.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %switch.lookup
  %.sroa.0377.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ @266, %bb.cd ], [ @241, %switch.lookup ]
  %.sroa.8378.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 7, %bb.cd ], [ 4, %switch.lookup ]
  %.sink.i349.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.cd ], [ 0, %switch.lookup ]
  %i.lh = ptrtoint ptr %.sroa.0377.0.ph.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc195.i.i.i.i.i.i.i.i = trunc i64 %i.lh to i32
  %.sroa.0191.sroa.15.0.extract.shift199.i.i.i.i.i.i.i.i = lshr i64 %i.lh, 32
  br label %bb.cn

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.li = select i1 %i.lf, i32 512, i32 0
  %i.lj = zext nneg i16 %i.lb to i32
  %i.lk = or i32 %i.li, %i.lj
  %i.ll = or i32 %i.lk, %i.km                     ; 2 uses
  %i.lm = icmp ne i32 %i.ll, 0
  call void @llvm.assume(i1 %i.lm), !noalias !8957
  br label %bb.co

bb.cg:                                            ; preds = %.thread456.i.i.i.i.i.i.i.i.i
  %i.ln = icmp sgt i32 %i.ic, -10000
  call void @llvm.assume(i1 %i.ln), !noalias !8957
  %i.lo = icmp slt i32 %i.ic, 10000
  call void @llvm.assume(i1 %i.lo), !noalias !8957
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread456.i.i.i.i.i.i.i.i.i
  %.not312.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i, -1
  br i1 %.not312.i.i.i.i.i.i.i.i.i, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lp = icmp ult i8 %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i, 54
  call void @llvm.assume(i1 %i.lp), !noalias !8957
  %or.cond338.i.i.i.i.i.i.i.i.i = or i1 %.not301.i.i.i.i.i.i.i.i.i, %.not308450.i.i.i.i.i.i.i.i.i
  br i1 %or.cond338.i.i.i.i.i.i.i.i.i, label %bb.cn, label %switch.lookup206

switch.lookup206:                                 ; preds = %bb.ci
  %i.lq = zext nneg i8 %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i to i16
  %i.lr = mul nuw nsw i16 %i.lq, 7
  %i.ls = zext nneg i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i to i16
  %i.lt = add nuw nsw i16 %i.lr, %i.ls
  %i.lu = shl i32 %i.ic, 10                       ; 2 uses
  %i.lv = ashr exact i32 %i.lu, 10
  %i.lw = add nsw i32 %i.lv, 999999               ; 3 uses
  %.neg.i.i353.i.i.i.i.i.i.i.i.i = sdiv i32 %i.lw, -100
  %i.lx = add nsw i32 %.neg.i.i353.i.i.i.i.i.i.i.i.i, -363521074
  %i.ly = sdiv i32 %i.lw, 400
  %i.lz = add nsw i32 %i.lx, %i.ly
  %i.ma = sext i32 %i.lw to i64
  %i.mb = mul nsw i64 %i.ma, 1461
  %i.mc = sdiv i64 %i.mb, 4
  %i.md = trunc nsw i64 %i.mc to i32
  %i.me = add nsw i32 %i.lz, %i.md
  %i.mf = srem i32 %i.me, 7
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr [2 x i8], ptr @"switch.table._ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E.615", i64 %i.mg
  %switch.gep207 = getelementptr i8, ptr %i.mh, i64 12
  %switch.load208 = load i16, ptr %switch.gep207, align 2
  %i.mi = add nsw i16 %i.lt, %switch.load208      ; 2 uses
  %i.mj = add nsw i16 %i.mi, 1                    ; 2 uses
  %i.mk = add i32 %i.ic, -10000
  %or.cond.i358.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.mk, -19999
  br i1 %or.cond.i358.i.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.cj, !prof !282

bb.cj:                                            ; preds = %switch.lookup206
  %.sroa.010.0.i359.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.ml = mul i32 %.sroa.010.0.i359.i.i.i.i.i.i.i.i.i, 33555415
  %i.mm = and i32 %i.ml, 100695055
  %i.mn = icmp samesign ult i32 %i.mm, 31745      ; 2 uses
  %or.cond1.i360.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.mi, 365
  br i1 %or.cond1.i360.i.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.ck, !prof !270

bb.ck:                                            ; preds = %bb.cj
  %i.mo = icmp eq i16 %i.mj, 366
  %brmerge.not.i361.i.i.i.i.i.i.i.i.i = and i1 %i.mn, %i.mo
  br i1 %brmerge.not.i361.i.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %switch.lookup206
  %.sroa.0384.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ @266, %bb.ck ], [ @241, %switch.lookup206 ]
  %.sroa.8385.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 7, %bb.ck ], [ 4, %switch.lookup206 ]
  %.sink.i363.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.ck ], [ 0, %switch.lookup206 ]
  %i.mp = ptrtoint ptr %.sroa.0384.0.ph.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc196.i.i.i.i.i.i.i.i = trunc i64 %i.mp to i32
  %.sroa.0191.sroa.15.0.extract.shift201.i.i.i.i.i.i.i.i = lshr i64 %i.mp, 32
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.mq = select i1 %i.mn, i32 512, i32 0
  %i.mr = zext nneg i16 %i.mj to i32
  %i.ms = or i32 %i.mq, %i.mr
  %i.mt = or i32 %i.ms, %i.lu                     ; 2 uses
  %i.mu = icmp ne i32 %i.mt, 0
  call void @llvm.assume(i1 %i.mu), !noalias !8957
  br label %bb.co

4:                                                ; preds = %bb.ba
  br label %bb.bb

bb.cn:                                            ; preds = %bb.cl, %bb.ci, %bb.ch, %bb.ce, %bb.bx, %bb.bq, %bb.bk
  %.sroa.34.i.i.sroa.5.1.i.i.i.i.i.i = phi i16 [ undef, %bb.ch ], [ undef, %bb.ci ], [ undef, %bb.cl ], [ undef, %bb.ce ], [ %.sroa.34.i.i.sroa.5.0.copyload.i.i.i.i.i.i, %bb.bx ], [ undef, %bb.bq ], [ undef, %bb.bk ]
  %.sroa.34.i.i.sroa.4.1.i.i.i.i.i.i = phi i16 [ undef, %bb.ch ], [ undef, %bb.ci ], [ undef, %bb.cl ], [ undef, %bb.ce ], [ %.sroa.34.i.i.sroa.4.0.copyload.i.i.i.i.i.i, %bb.bx ], [ undef, %bb.bq ], [ undef, %bb.bk ]
  %.sroa.34.i.i.sroa.0.1.i.i.i.i.i.i = phi i32 [ 0, %bb.ch ], [ 0, %bb.ci ], [ 0, %bb.cl ], [ 0, %bb.ce ], [ %i.ke, %bb.bx ], [ 0, %bb.bq ], [ 0, %bb.bk ]
  %.sroa.0191.sroa.15.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ch ], [ 0, %bb.ci ], [ %.sroa.0191.sroa.15.0.extract.shift201.i.i.i.i.i.i.i.i, %bb.cl ], [ %.sroa.0191.sroa.15.0.extract.shift199.i.i.i.i.i.i.i.i, %bb.ce ], [ %i.kd, %bb.bx ], [ %.sroa.0191.sroa.15.0.extract.shift197.i.i.i.i.i.i.i.i, %bb.bq ], [ %.sroa.0191.sroa.15.0.extract.shift.i.i.i.i.i.i.i.i, %bb.bk ]
  %.sroa.0191.sroa.0.0.ph.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.ch ], [ undef, %bb.ci ], [ %.sroa.0191.sroa.0.0.extract.trunc196.i.i.i.i.i.i.i.i, %bb.cl ], [ %.sroa.0191.sroa.0.0.extract.trunc195.i.i.i.i.i.i.i.i, %bb.ce ], [ %i.kc, %bb.bx ], [ %.sroa.0191.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i, %bb.bq ], [ ptrtoint (ptr @266 to i32), %bb.bk ]
  %.sroa.21.0.ph.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.ch ], [ 2, %bb.ci ], [ %.sink.i363.ph.i.i.i.i.i.i.i.i.i, %bb.cl ], [ %.sink.i349.ph.i.i.i.i.i.i.i.i.i, %bb.ce ], [ %i.kb, %bb.bx ], [ %.sink.i342.ph.i.i.i.i.i.i.i.i.i, %bb.bq ], [ 1, %bb.bk ]
  %.sroa.17.0.ph.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.ch ], [ undef, %bb.ci ], [ %.sroa.8385.0.ph.i.i.i.i.i.i.i.i.i, %bb.cl ], [ %.sroa.8378.0.ph.i.i.i.i.i.i.i.i.i, %bb.ce ], [ %.sroa.17.4.copyload193.i.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.8371.0.ph.i.i.i.i.i.i.i.i.i, %bb.bq ], [ 7, %bb.bk ]
  %.sroa.01.sroa.0.0.insert.ext.i.i.i.i.i.i.i = zext i32 %.sroa.0191.sroa.0.0.ph.i.i.i.i.i.i.i.i to i64
  %.sroa.01.sroa.0.4.insert.shift.i.i.i.i.i.i.i = shl nuw i64 %.sroa.0191.sroa.15.0.ph.i.i.i.i.i.i.i.i, 32
  %.sroa.01.sroa.0.4.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.01.sroa.0.4.insert.shift.i.i.i.i.i.i.i, %.sroa.01.sroa.0.0.insert.ext.i.i.i.i.i.i.i
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cm, %bb.cf, %bb.by, %bb.br, %bb.bl
  %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.kc, %bb.by ], [ %i.ju, %bb.br ], [ %i.mt, %bb.cm ], [ %i.iy, %bb.bl ], [ %i.ll, %bb.cf ] ; 5 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, -1 ; 2 uses
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mv = icmp ult i8 %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, 24
  call void @llvm.assume(i1 %i.mv), !noalias !8957
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.not.i168.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i168.i.i.i.i.i.i.i.i, label %bb.cs, label %bb.cr, !prof !28

bb.cr:                                            ; preds = %bb.cq
  %i.mw = icmp ult i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 13
  call void @llvm.assume(i1 %i.mw), !noalias !8957
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.ct, label %.thread313.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %.not233.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.28.0.copyload90.i.i.i.i.i.i.i.i, 2
  %or.cond.i170.i.i.i.i.i.i.i.i = or i1 %.not.i168.i.i.i.i.i.i.i.i, %.not233.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i170.i.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %.critedge.i171.i.i.i.i.i.i.i.i

.critedge.i171.i.i.i.i.i.i.i.i:                   ; preds = %bb.ct
  %i.mx = trunc nuw i8 %.sroa.28.0.copyload90.i.i.i.i.i.i.i.i to i1
  %i.my = icmp eq i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 12 ; 2 uses
  %i.mz = add nuw nsw i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 12
  %spec.select.i172.i.i.i.i.i.i.i.i = select i1 %i.my, i8 12, i8 %i.mz
  %..sroa.011.0.i.i.i.i.i.i.i.i.i = select i1 %i.my, i8 0, i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = select i1 %i.mx, i8 %spec.select.i172.i.i.i.i.i.i.i.i, i8 %..sroa.011.0.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.na = icmp samesign ult i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 13
  call void @llvm.assume(i1 %i.na), !noalias !8957
  %.not235.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i, -1
  br i1 %.not235.i.i.i.i.i.i.i.i.i, label %.critedge252.i.i.i.i.i.i.i.i.i, label %.thread313.thread360.i.i.i.i.i.i.i.i.i

.thread313.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cs
  %i.nb = icmp samesign ult i8 %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, 24
  call void @llvm.assume(i1 %i.nb), !noalias !8957
  %.not238.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i, -1
  br i1 %.not238.i.i.i.i.i.i.i.i.i, label %.thread313.thread.i.i.i.i.i.i.i.i.i, label %bb.cv

.thread313.thread360.i.i.i.i.i.i.i.i.i:           ; preds = %.critedge.i171.i.i.i.i.i.i.i.i
  %i.nc = icmp ult i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.nc), !noalias !8957
  br label %bb.cv

.critedge252.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.i171.i.i.i.i.i.i.i.i
  %.not236.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.1957.0.i.i.i.i.i.i.i, -1
  %.not237.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.4.0.i.i.i.i.i.i.i, -1
  %or.cond = select i1 %.not236.i.i.i.i.i.i.i.i.i, i1 %.not237.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.cu, label %.thread313.thread.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %.critedge252.i.i.i.i.i.i.i.i.i
  %.sroa.0.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  br label %bb.dk

bb.cv:                                            ; preds = %.thread313.thread360.i.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i
  %.sroa.0.0312363.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %.thread313.thread360.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i ]
  %i.nd = zext nneg i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i to i64
  %i.ne = shl nuw nsw i64 %i.nd, 40
  br label %.thread313.thread.i.i.i.i.i.i.i.i.i

.thread313.thread.i.i.i.i.i.i.i.i.i:              ; preds = %bb.cv, %.critedge252.i.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i
  %.not238359.i.i.i.i.i.i.i.i.i = phi i1 [ true, %.thread313.i.i.i.i.i.i.i.i.i ], [ false, %bb.cv ], [ true, %.critedge252.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0312358.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0312363.i.i.i.i.i.i.i.i.i, %bb.cv ], [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %.critedge252.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i = phi i64 [ 280375465082880, %.thread313.i.i.i.i.i.i.i.i.i ], [ %i.ne, %bb.cv ], [ 280375465082880, %.critedge252.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not239.i.i.i.i.i.i.i.i.i = icmp ne i8 %.sroa.1957.0.i.i.i.i.i.i.i, -1 ; 3 uses
  br i1 %.not239.i.i.i.i.i.i.i.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.thread313.thread.i.i.i.i.i.i.i.i.i
  %i.nf = icmp ult i8 %.sroa.1957.0.i.i.i.i.i.i.i, 61
  call void @llvm.assume(i1 %i.nf), !noalias !8957
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread313.thread.i.i.i.i.i.i.i.i.i
  %.not244.i.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.4.0.i.i.i.i.i.i.i, -1 ; 4 uses
  br i1 %.not244.i.i.i.i.i.i.i.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ng = icmp ult i32 %.sroa.4.0.i.i.i.i.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.ng), !noalias !8957
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %.not238359.i.i.i.i.i.i.i.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not239.i.i.i.i.i.i.i.i.i, label %bb.dd, label %bb.de

bb.db:                                            ; preds = %bb.cz
  %brmerge.i.i.i.i.i.i.i.i.i = or i1 %.not239.i.i.i.i.i.i.i.i.i, %.not244.i.i.i.i.i.i.i.i.i
  br i1 %brmerge.i.i.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.0294.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0294.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  br label %bb.dk

bb.dd:                                            ; preds = %bb.da
  %i.nh = icmp samesign ugt i8 %.sroa.1957.0.i.i.i.i.i.i.i, 59 ; 2 uses
  br i1 %.not244.i.i.i.i.i.i.i.i.i, label %bb.dg, label %bb.dh

bb.de:                                            ; preds = %bb.da
  br i1 %.not244.i.i.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.0299.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0299.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  %.sroa.0299.6.insert.insert.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i
  br label %bb.dk

bb.dg:                                            ; preds = %bb.dd
  br i1 %i.nh, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.dj, !prof !282

bb.dh:                                            ; preds = %bb.dd
  br i1 %i.nh, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.di, !prof !282

bb.di:                                            ; preds = %bb.dh
  %.sroa.0302.4.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i.i.i.i.i.i to i64
  %.sroa.0302.4.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0302.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0302.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  %i.ni = or disjoint i64 %.sroa.0302.6.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.0302.4.insert.shift.i.i.i.i.i.i.i.i.i
  %.sroa.0302.6.insert.insert.i.i.i.i.i.i.i.i.i = or i64 %i.ni, %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dg
  %.sroa.0306.0.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i32 %.sroa.4.0.i.i.i.i.i.i.i to i64
  %.sroa.0306.4.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i.i.i.i.i.i to i64
  %.sroa.0306.4.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %i.nj = or disjoint i64 %.sroa.0306.4.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.0306.0.insert.ext.i.i.i.i.i.i.i.i.i
  %.sroa.0306.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0306.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  %i.nk = or disjoint i64 %.sroa.0306.6.insert.shift.i.i.i.i.i.i.i.i.i, %i.nj
  %.sroa.0306.6.insert.insert.i.i.i.i.i.i.i.i.i = or i64 %i.nk, %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.df, %bb.dc, %bb.cu
  %.sroa.0214.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0302.6.insert.insert.i.i.i.i.i.i.i.i.i, %bb.di ], [ %.sroa.0299.6.insert.insert.i.i.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.0306.6.insert.insert.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.0294.6.insert.shift.i.i.i.i.i.i.i.i.i, %bb.dc ], [ %.sroa.0.6.insert.shift.i.i.i.i.i.i.i.i.i, %bb.cu ] ; 7 uses
  %i.nl = icmp eq i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, -128
  br i1 %i.nl, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nm = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, -24
  call void @llvm.assume(i1 %i.nm), !noalias !8957
  %i.nn = icmp slt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 24
  call void @llvm.assume(i1 %i.nn), !noalias !8957
  %.not.i173.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i, -128
  br i1 %.not.i173.i.i.i.i.i.i.i.i, label %.thread51.i.i.i.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.no = icmp sgt i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i, -60
  call void @llvm.assume(i1 %i.no), !noalias !8957
  %i.np = icmp slt i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.np), !noalias !8957
  %i.nq = trunc nuw i8 %.sroa.29.0.copyload94.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.nr = sub nsw i8 0, %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i
  %spec.select.i.i174.i.i.i.i.i.i.i.i = select i1 %i.nq, i8 %i.nr, i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i ; 4 uses
  %.not65.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i, -128
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ns = icmp sgt i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i, -60
  call void @llvm.assume(i1 %i.ns), !noalias !8957
  %i.nt = icmp slt i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.nt), !noalias !8957
  %i.nu = sub nsw i8 0, %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i
  %spec.select.i19.i.i.i.i.i.i.i.i.i = select i1 %i.nq, i8 %i.nu, i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %spec.select.i175.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.dm ], [ %spec.select.i19.i.i.i.i.i.i.i.i.i, %bb.dn ] ; 3 uses
  %i.nv = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.nw = icmp slt i8 %spec.select.i.i174.i.i.i.i.i.i.i.i, 0
  %or.cond40.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.nv, %i.nw
  br i1 %or.cond40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.nx = icmp slt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 0
  %i.ny = icmp sgt i8 %spec.select.i.i174.i.i.i.i.i.i.i.i, 0
  %or.cond41.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.nx, %i.ny
  br i1 %or.cond41.i.i.i.i.i.i.i.i.i.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.nz = sub nsw i8 0, %spec.select.i.i174.i.i.i.i.i.i.i.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i174.i.i.i.i.i.i.i.i, %bb.dp ], [ %i.nz, %bb.dq ] ; 2 uses
  %i.oa = icmp slt i8 %spec.select.i175.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %or.cond42.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.nv, %i.oa
  br i1 %or.cond42.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, label %.thread51.i.i.i.i.i.i.i.i.i

bb.ds:                                            ; preds = %.thread51.i.i.i.i.i.i.i.i.i, %bb.dr
  %.sroa.0.1.i.i59.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i, %bb.dr ]
  %.sroa.05.030374256.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.05.030374255.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ], [ %spec.select.i175.i.i.i.i.i.i.i.i, %bb.dr ]
  %i.ob = sub nsw i8 0, %.sroa.05.030374256.i.i.i.i.i.i.i.i.i
  br label %bb.dt

.thread51.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.dr, %bb.dl
  %i.oc = phi i1 [ %i.oa, %bb.dr ], [ false, %bb.dl ]
  %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i, %bb.dr ], [ 0, %bb.dl ] ; 4 uses
  %.sroa.05.030374255.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i175.i.i.i.i.i.i.i.i, %bb.dr ], [ 0, %bb.dl ] ; 3 uses
  %i.od = icmp slt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 0
  %i.oe = icmp sgt i8 %.sroa.05.030374255.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.od, %i.oe
  %i.of = icmp sgt i8 %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, 0
  %or.cond38.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.oc, %i.of
  %i.og = icmp slt i8 %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, 0
  %or.cond39.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.og, %i.oe
  %i.oh = or i1 %or.cond38.i.i.i.i.i.i.i.i.i.i.i, %or.cond39.i.i.i.i.i.i.i.i.i.i.i
  %or.cond44.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.oh
  br i1 %or.cond44.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, label %bb.dt

bb.dt:                                            ; preds = %.thread51.i.i.i.i.i.i.i.i.i, %bb.ds
  %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i59.i.i.i.i.i.i.i.i.i, %bb.ds ], [ %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ob, %bb.ds ], [ %.sroa.05.030374255.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i to i64
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i8 %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i to i64
  %.sroa.012.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i to i64
  br i1 %.sroa.023.0.i.i.i.i.i.i.i.i, label %bb.du, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i, %bb.dt
  %.sroa.13.8.insert.ext.i.i.i.i.i.i.i = zext i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i to i64
  %i.oi = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 40
  %i.oj = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 48
  %i.ok = shl nuw nsw i64 %.sroa.012.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.ol = or disjoint i64 %i.ok, %i.oj
  %.sroa.13.12.insert.shift.i.i.i.i.i.i.i = or disjoint i64 %i.ol, %i.oi
  %.sroa.13.12.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.13.12.insert.shift.i.i.i.i.i.i.i, %.sroa.13.8.insert.ext.i.i.i.i.i.i.i
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.dt
  %.sroa.0332.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.om = icmp ult i32 %.sroa.0332.0.extract.trunc.i.i.i.i.i.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.om), !noalias !8957
  %i.on = icmp eq i32 %.sroa.0332.0.extract.trunc.i.i.i.i.i.i.i.i, 999999999
  br i1 %i.on, label %bb.dv, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.oo = or i8 %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i, %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i
  %i.op = or i8 %i.oo, %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i
  %i.oq = icmp eq i8 %i.op, 0
  br i1 %i.oq, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.sroa.0332.4.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 32
  %.sroa.0332.4.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %.sroa.0332.4.extract.shift.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.or = icmp ult i8 %.sroa.0332.4.extract.trunc.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.or), !noalias !8957
  %i.os = sub nsw i8 %.sroa.0332.4.extract.trunc.i.i.i.i.i.i.i.i, %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ot = icmp sgt i8 %i.os, -1
  br i1 %i.ot, label %bb.dz, label %bb.dy, !prof !791

bb.dx:                                            ; preds = %bb.dv
  %i.ou = ashr i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i, 10
  %i.ov = trunc i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i to i16
  %i.ow = and i16 %i.ov, 511
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.ox = add nsw i8 %i.os, 60
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dw
  %i.oy = icmp samesign ult i8 %i.os, 60
  br i1 %i.oy, label %bb.ea, label %bb.eb, !prof !791

bb.ea:                                            ; preds = %bb.eb, %bb.dz, %bb.dy
  %.sroa.030.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ -1, %bb.dy ], [ 1, %bb.eb ], [ 0, %bb.dz ]
  %.sroa.029.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ox, %bb.dy ], [ %i.pd, %bb.eb ], [ %i.os, %bb.dz ]
  %.sroa.0332.5.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 40
  %.sroa.0332.5.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %.sroa.0332.5.extract.shift.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.oz = icmp ult i8 %.sroa.0332.5.extract.trunc.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.oz), !noalias !8957
  %i.pa = sub nsw i8 %.sroa.0332.5.extract.trunc.i.i.i.i.i.i.i.i, %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i
  %i.pb = add nsw i8 %.sroa.030.0.i.i.i.i.i.i.i.i.i.i, %i.pa ; 5 uses
  %i.pc = icmp sgt i8 %i.pb, -1
  br i1 %i.pc, label %bb.ed, label %bb.ec, !prof !791

bb.eb:                                            ; preds = %bb.dz
  %i.pd = add nsw i8 %i.os, -60
  br label %bb.ea

bb.ec:                                            ; preds = %bb.ea
  %i.pe = add nsw i8 %i.pb, 60
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %i.pf = icmp samesign ult i8 %i.pb, 60
  br i1 %i.pf, label %bb.ee, label %bb.ef, !prof !791

bb.ee:                                            ; preds = %bb.ef, %bb.ed, %bb.ec
  %.sroa.031.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.pe, %bb.ec ], [ %i.pk, %bb.ef ], [ %i.pb, %bb.ed ]
  %.sroa.032.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ -1, %bb.ec ], [ 1, %bb.ef ], [ 0, %bb.ed ]
  %.sroa.0332.6.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 48
  %.sroa.0332.6.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.0332.6.extract.shift.i.i.i.i.i.i.i.i to i8
  %i.pg = icmp samesign ult i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.pg), !noalias !8957
  %i.ph = sub nsw i8 %.sroa.0332.6.extract.trunc.i.i.i.i.i.i.i.i, %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i
  %i.pi = add nsw i8 %.sroa.032.0.i.i.i.i.i.i.i.i.i.i, %i.ph ; 5 uses
  %i.pj = icmp sgt i8 %i.pi, -1
  br i1 %i.pj, label %bb.eg, label %bb.eh, !prof !791

bb.ef:                                            ; preds = %bb.ed
  %i.pk = add nsw i8 %i.pb, -60
  br label %bb.ee

bb.eg:                                            ; preds = %bb.ee
  %i.pl = icmp samesign ult i8 %i.pi, 24
  br i1 %i.pl, label %bb.ei, label %bb.ej, !prof !791

bb.eh:                                            ; preds = %bb.ee
  %i.pm = add nsw i8 %i.pi, 24
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ej, %bb.eh, %bb.eg
  %.sroa.033.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.pi, %bb.eg ], [ %i.pv, %bb.ej ], [ %i.pm, %bb.eh ]
  %.sroa.034.0.i.i.i.i.i.i.i.i.i.i = phi i16 [ 0, %bb.eg ], [ 1, %bb.ej ], [ -1, %bb.eh ]
  %i.pn = ashr i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i, 10 ; 6 uses
  %i.po = trunc i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i to i16
  %i.pp = and i16 %i.po, 511
  %i.pq = add nsw i16 %.sroa.034.0.i.i.i.i.i.i.i.i.i.i, %i.pp ; 5 uses
  %.sroa.026.0.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.pn, i1 true)
  %i.pr = mul i32 %.sroa.026.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.ps = and i32 %i.pr, 100695055
  %i.pt = icmp samesign ult i32 %i.ps, 31745
  %.sroa.016.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.pt, i16 366, i16 365 ; 2 uses
  %i.pu = icmp sgt i16 %i.pq, %.sroa.016.0.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pu, label %bb.ek, label %bb.el, !prof !28

bb.ej:                                            ; preds = %bb.eg
  %i.pv = add nsw i8 %i.pi, -24
  br label %bb.ei

bb.ek:                                            ; preds = %bb.ei
  %i.pw = sub nuw nsw i16 %i.pq, %.sroa.016.0.i.i.i.i.i.i.i.i.i.i
  %i.px = add nsw i32 %i.pn, 1
  br label %bb.en

bb.el:                                            ; preds = %bb.ei
  %i.py = icmp slt i16 %i.pq, 1
  br i1 %i.py, label %bb.em, label %bb.en, !prof !28

bb.em:                                            ; preds = %bb.el
  %i.pz = add nsw i32 %i.pn, -1                   ; 2 uses
  %i.qa = icmp slt i32 %i.pn, 1
  %i.qb = sub nsw i32 1, %i.pn
  %.sroa.027.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.qa, i32 %i.qb, i32 %i.pz
  %i.qc = mul i32 %.sroa.027.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.qd = and i32 %i.qc, 100695055
  %i.qe = icmp samesign ult i32 %i.qd, 31745
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.qe, i16 366, i16 365
  %i.qf = add nsw i16 %i.pq, %.sroa.017.0.i.i.i.i.i.i.i.i.i.i
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.pw, %bb.ek ], [ %i.qf, %bb.em ], [ %i.pq, %bb.el ]
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.px, %bb.ek ], [ %i.pz, %bb.em ], [ %i.pn, %bb.el ]
  %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.033.0.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i177.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.031.0.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i178.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i177.i.i.i.i.i.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i178.i.i.i.i.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i179.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.029.0.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i180.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i179.i.i.i.i.i.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i181.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i180.i.i.i.i.i.i.i.i
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i

_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.en, %bb.dx
  %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, %bb.en ], [ %i.ou, %bb.dx ] ; 3 uses
  %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.011.0.i.i.i.i.i.i.i.i.i.i, %bb.en ], [ %i.ow, %bb.dx ] ; 3 uses
  %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i181.i.i.i.i.i.i.i.i, %bb.en ], [ %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, %bb.dx ] ; 4 uses
  %.sroa.611.12.extract.shift.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.611.12.extract.trunc.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.611.12.extract.shift.i.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %.sroa.611.13.extract.shift.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 40
  %.sroa.611.13.extract.trunc.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.611.13.extract.shift.i.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.qg = add nsw i32 %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i, -10000
  %or.cond.i.i182.i.i.i.i.i.i.i.i = icmp ult i32 %i.qg, -19999
  br i1 %or.cond.i.i182.i.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.eo, !prof !282

bb.eo:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i
  %.sroa.010.0.i.i183.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.qh = mul i32 %.sroa.010.0.i.i183.i.i.i.i.i.i.i.i, 33555415
  %i.qi = and i32 %i.qh, 100695055
  %i.qj = icmp samesign ult i32 %i.qi, 31745      ; 2 uses
  %i.qk = add nsw i16 %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i, -1
  %or.cond1.i.i184.i.i.i.i.i.i.i.i = icmp ult i16 %i.qk, 365
  br i1 %or.cond1.i.i184.i.i.i.i.i.i.i.i, label %bb.eq, label %bb.ep, !prof !270

bb.ep:                                            ; preds = %bb.eo
  %i.ql = icmp eq i16 %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i, 366
  %brmerge.not.i.i.i.i.i.i.i.i.i.i = and i1 %i.ql, %i.qj
  br i1 %brmerge.not.i.i.i.i.i.i.i.i.i.i, label %bb.eq, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.qm = shl nsw i32 %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i, 10
  %i.qn = select i1 %i.qj, i32 512, i32 0
  %i.qo = or disjoint i32 %i.qn, %i.qm
  %i.qp = zext nneg i16 %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.qq = or i32 %i.qo, %i.qp                     ; 2 uses
  %i.qr = icmp ne i32 %i.qq, 0
  call void @llvm.assume(i1 %i.qr), !noalias !8957
  %i.qs = icmp samesign ult i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.qs), !noalias !8957
  %.sroa.611.14.extract.shift.i.mask.i.i.i.i.i.i.i.i = and i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 8725724278030336
  %i.qt = icmp eq i64 %.sroa.611.14.extract.shift.i.mask.i.i.i.i.i.i.i.i, 6473924464345088
  br i1 %i.qt, label %bb.er, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.qu = icmp ult i8 %.sroa.611.13.extract.trunc.i.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.qu), !noalias !8957
  %i.qv = icmp eq i8 %.sroa.611.13.extract.trunc.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.qv, label %bb.es, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.qw = icmp ult i8 %.sroa.611.12.extract.trunc.i.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.qw), !noalias !8957
  %i.qx = icmp eq i8 %.sroa.611.12.extract.trunc.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.qx, label %bb.et, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.et:                                            ; preds = %bb.es
  %i.qy = lshr i32 %i.qq, 9
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.qy, 1
  %i.qz = add nuw nsw i32 %.lobit.i.i.i.i.i.i.i.i.i.i, 59 ; 2 uses
  %.not.i.i185.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.qz, %i.qp ; 2 uses
  %..i.i186.i.i.i.i.i.i.i.i = select i1 %.not.i.i185.i.i.i.i.i.i.i.i, i32 %i.qz, i32 0
  %i.ra = sub nsw i32 %i.qp, %..i.i186.i.i.i.i.i.i.i.i ; 2 uses
  %i.rb = mul nsw i32 %i.ra, 268
  %i.rc = add nsw i32 %i.rb, 8028
  %i.rd = lshr i32 %i.rc, 13                      ; 2 uses
  %i.re = mul nuw nsw i32 %i.rd, 3917
  %i.rf = add nuw nsw i32 %i.re, 28902
  %i.rg = lshr i32 %i.rf, 7
  %i.rh = sub nsw i32 %i.ra, %i.rg
  %i.ri = trunc i32 %i.rh to i8
  %..i10.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i185.i.i.i.i.i.i.i.i, i32 2, i32 0
  %i.rj = add nuw nsw i32 %i.rd, %..i10.i.i.i.i.i.i.i.i.i
  %i.rk = trunc i32 %i.rj to i8                   ; 4 uses
  %i.rl = icmp ne i8 %i.rk, 0
  call void @llvm.assume(i1 %i.rl), !noalias !8957
  %i.rm = icmp eq i8 %i.rk, 2
  br i1 %i.rm, label %bb.eu, label %bb.ev, !prof !28

bb.eu:                                            ; preds = %bb.et
  %.sroa.06.0.i.i.i.i.i.i.i.i.i = zext nneg i32 %.sroa.010.0.i.i183.i.i.i.i.i.i.i.i to i64
  %i.rn = mul i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i, 4611686019114582671
  %i.ro = and i64 %i.rn, -4611685951855394801
  %i.rp = icmp ult i64 %i.ro, 66571993089
  %..i.i.i.i.i.i.i.i.i = select i1 %i.rp, i8 29, i8 28
  br label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.rq = lshr i8 %i.rk, 3
  %i.rr = xor i8 %i.rq, %i.rk
  %i.rs = or i8 %i.rr, 30
  br label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i

_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ev, %bb.eu
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.rs, %bb.ev ], [ %..i.i.i.i.i.i.i.i.i, %bb.eu ]
  %i.rt = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.ri
  br i1 %i.rt, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i: ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i, %bb.es, %bb.er, %bb.eq, %bb.ep, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i, %bb.du, %bb.dk, %bb.dh, %bb.dg, %bb.de, %bb.db, %bb.ct, %bb.cn, %bb.ax
  %.sroa.34.i.i.sroa.5.0.i.i.i.i.i.i = phi i16 [ %.sroa.34.i.i.sroa.5.1.i.i.i.i.i.i, %bb.cn ], [ undef, %bb.ct ], [ undef, %bb.dk ], [ undef, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i ], [ undef, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i ], [ undef, %bb.es ], [ undef, %bb.er ], [ undef, %bb.eq ], [ undef, %bb.ep ], [ undef, %bb.du ], [ undef, %bb.db ], [ undef, %bb.dg ], [ undef, %bb.dh ], [ undef, %bb.de ], [ undef, %bb.ax ]
  %.sroa.34.i.i.sroa.4.0.i.i.i.i.i.i = phi i16 [ %.sroa.34.i.i.sroa.4.1.i.i.i.i.i.i, %bb.cn ], [ undef, %bb.ct ], [ undef, %bb.dk ], [ undef, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i ], [ undef, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i ], [ undef, %bb.es ], [ undef, %bb.er ], [ undef, %bb.eq ], [ undef, %bb.ep ], [ undef, %bb.du ], [ undef, %bb.db ], [ undef, %bb.dg ], [ undef, %bb.dh ], [ undef, %bb.de ], [ undef, %bb.ax ]
  %.sroa.34.i.i.sroa.0.0.i.i.i.i.i.i = phi i32 [ %.sroa.34.i.i.sroa.0.1.i.i.i.i.i.i, %bb.cn ], [ 0, %bb.ct ], [ 0, %bb.dk ], [ 0, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.es ], [ 0, %bb.er ], [ 0, %bb.eq ], [ 0, %bb.ep ], [ 0, %bb.du ], [ 0, %bb.db ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 0, %bb.de ], [ 0, %bb.ax ]
  %.sroa.01.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.sroa.0.4.insert.insert.i.i.i.i.i.i.i, %bb.cn ], [ ptrtoint (ptr @269 to i64), %bb.ct ], [ undef, %bb.dk ], [ ptrtoint (ptr @269 to i64), %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i ], [ ptrtoint (ptr @269 to i64), %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i ], [ ptrtoint (ptr @269 to i64), %bb.es ], [ ptrtoint (ptr @269 to i64), %bb.er ], [ ptrtoint (ptr @269 to i64), %bb.eq ], [ ptrtoint (ptr @269 to i64), %bb.ep ], [ ptrtoint (ptr @269 to i64), %bb.du ], [ ptrtoint (ptr @269 to i64), %bb.db ], [ ptrtoint (ptr @269 to i64), %bb.dg ], [ ptrtoint (ptr @269 to i64), %bb.dh ], [ ptrtoint (ptr @269 to i64), %bb.de ], [ %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i, %bb.ax ]
  %.sroa.20.0.ph.i.i.i.i.i.i.i = phi i8 [ %.sroa.21.0.ph.i.i.i.i.i.i.i.i, %bb.cn ], [ 2, %bb.ct ], [ 2, %bb.dk ], [ 1, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i ], [ 1, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i ], [ 1, %bb.es ], [ 1, %bb.er ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.du ], [ 2, %bb.db ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 2, %bb.de ], [ 0, %bb.ax ]
  %.sroa.13.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.17.0.ph.i.i.i.i.i.i.i.i, %bb.cn ], [ 6, %bb.ct ], [ undef, %bb.dk ], [ 6, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i ], [ 6, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i ], [ 6, %bb.es ], [ 6, %bb.er ], [ 6, %bb.eq ], [ 6, %bb.ep ], [ 6, %bb.du ], [ 6, %bb.db ], [ 6, %bb.dg ], [ 6, %bb.dh ], [ 6, %bb.de ], [ 9, %bb.ax ] ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc6.i.i.i.i.i.i = trunc i64 %.sroa.13.0.ph.i.i.i.i.i.i.i to i32
  %.sroa.10.sroa.7.0.extract.shift11.i.i.i.i.i.i = lshr i64 %.sroa.13.0.ph.i.i.i.i.i.i.i, 32
  %.sroa.10.sroa.7.0.extract.trunc12.i.i.i.i.i.i = trunc nuw i64 %.sroa.10.sroa.7.0.extract.shift11.i.i.i.i.i.i to i32
  br label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.thread.i.i.i.i.i"

_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.ay
  %.sroa.01.sroa.12.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0252.0.i.i.i.i.i.i.i.i, %bb.ay ]
  %.sroa.13.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.13.12.insert.insert.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.hq, %bb.ay ] ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.13.0.i.i.i.i.i.i.i to i32
  %.sroa.10.sroa.7.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.13.0.i.i.i.i.i.i.i, 32
  %.sroa.10.sroa.7.0.extract.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.10.sroa.7.0.extract.shift.i.i.i.i.i.i to i32
  br label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i"

_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.sroa.827.0144.i.ph.i.i.i.i.i.i = phi i64 [ 2, %bb.at ], [ %.lcssa.i.i.i.i.i.i.i.i.i.i, %bb.as ]
  %.sroa.14.sroa.0.0143.i.ph.i.i.i.i.i.i = phi i32 [ undef, %bb.at ], [ %.sroa.14.sroa.0.0.extract.trunc.i.i.i.i.i.i.i, %bb.as ] ; 2 uses
  %.sroa.14.sroa.7.0142.i.ph.i.i.i.i.i.i = phi i16 [ undef, %bb.at ], [ %.sroa.14.sroa.7.0.extract.trunc.i.i.i.i.i.i.i, %bb.as ]
  %.sroa.14.sroa.8.0141.i.ph.i.i.i.i.i.i = phi i16 [ undef, %bb.at ], [ %.sroa.14.sroa.8.0.extract.trunc.i.i.i.i.i.i.i, %bb.as ]
  %.sroa.11.sroa.0.0140.i.ph.i.i.i.i.i.i = phi i32 [ undef, %bb.at ], [ %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i.i.i, %bb.as ]
  %.sroa.11.sroa.7.0139.i.ph.i.i.i.i.i.i = phi i32 [ undef, %bb.at ], [ %.sroa.11.sroa.7.0.extract.trunc.i.i.i.i.i.i.i, %bb.as ]
  %.sroa.14.sroa.0.0.extract.trunc70.i.i.i.i.i.i = trunc i32 %.sroa.14.sroa.0.0143.i.ph.i.i.i.i.i.i to i8
  %.sroa.14.sroa.5.0.extract.shift71.i.i.i.i.i.i = lshr i32 %.sroa.14.sroa.0.0143.i.ph.i.i.i.i.i.i, 8
  br label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.thread.i.i.i.i.i"

_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i: ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc832a904ce2adf28E.exit.i.i.i.i.i.i.i
  %.sroa.14.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i32 %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i to i8
  %.sroa.14.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i32 %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, 8
  %.not.i3.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload2.i22.i.i.i.i.i.i.i, 2
  br i1 %.not.i3.i.i.i.i.i, label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i", label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.thread.i.i.i.i.i"

"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i
  %.sroa.10.sroa.0.024.i.i.i.i.i.i = phi i32 [ %.sroa.10.sroa.0.0.extract.trunc.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i ], [ %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ]
  %.sroa.10.sroa.7.023.i.i.i.i.i.i = phi i32 [ %.sroa.10.sroa.7.0.extract.trunc.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ]
  %.sroa.0.sroa.7.022.i.i.i.i.i.i = phi i64 [ %.sroa.01.sroa.12.0.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.0.copyload2.i23.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.sroa.7.0.insert.ext7.i.i.i.i.i.i = zext i32 %.sroa.10.sroa.7.023.i.i.i.i.i.i to i64
  %.sroa.10.sroa.7.0.insert.shift8.i.i.i.i.i.i = shl nuw i64 %.sroa.10.sroa.7.0.insert.ext7.i.i.i.i.i.i, 32
  %.sroa.10.sroa.0.0.insert.ext3.i.i.i.i.i.i = zext i32 %.sroa.10.sroa.0.024.i.i.i.i.i.i to i64
  %.sroa.10.sroa.0.0.insert.insert5.i.i.i.i.i.i = or disjoint i64 %.sroa.10.sroa.7.0.insert.shift8.i.i.i.i.i.i, %.sroa.10.sroa.0.0.insert.ext3.i.i.i.i.i.i ; 2 uses
  %i.ru = and i64 %.sroa.0.sroa.7.022.i.i.i.i.i.i, 72057594037927936
  %.not.i.i.i.i.i = icmp eq i64 %i.ru, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !8827
  br i1 %.not.i.i.i.i.i, label %"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i", label %.thread201.i.i.i.i.i.i, !prof !1504

"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.thread.i.i.i.i.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i
  %.sroa.17.042.i.i.i.i.i.i = phi i16 [ %.sroa.34.i.i.sroa.4.0.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.10.0.copyload18.i.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ %.sroa.14.sroa.7.0142.i.ph.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.18.041.i.i.i.i.i.i = phi i16 [ %.sroa.34.i.i.sroa.5.0.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.11.0.copyload22.i.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ %.sroa.14.sroa.8.0141.i.ph.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.14.sroa.0.040.i.i.i.i.i.i = phi i8 [ %.sroa.20.0.ph.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.14.sroa.0.0.extract.trunc.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ %.sroa.14.sroa.0.0.extract.trunc70.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.14.sroa.5.sroa.0.039.i.i.i.i.i.i = phi i32 [ %.sroa.34.i.i.sroa.0.0.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.14.sroa.5.0.extract.shift.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ %.sroa.14.sroa.5.0.extract.shift71.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.10.sroa.0.038.i.i.i.i.i.i = phi i32 [ %.sroa.10.sroa.0.0.extract.trunc6.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ %.sroa.11.sroa.0.0140.i.ph.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.10.sroa.7.037.i.i.i.i.i.i = phi i32 [ %.sroa.10.sroa.7.0.extract.trunc12.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ %.sroa.11.sroa.7.0139.i.ph.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.0.sroa.0.036.i.i.i.i.i.i = phi i64 [ 0, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.0.0.copyload2.i22.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ 1, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.0.sroa.7.035.i.i.i.i.i.i = phi i64 [ %.sroa.01.sroa.0.0.ph.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i ], [ %.sroa.0.0.copyload2.i23.i.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i ], [ %.sroa.827.0144.i.ph.i.i.i.i.i.i, %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i ]
  %.sroa.0.sroa.7.0.insert.ext.i.i.i.i.i.i = zext i64 %.sroa.0.sroa.7.035.i.i.i.i.i.i to i128
  %.sroa.0.sroa.7.0.insert.shift.i.i.i.i.i.i = shl nuw i128 %.sroa.0.sroa.7.0.insert.ext.i.i.i.i.i.i, 64
  %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i64 %.sroa.0.sroa.0.036.i.i.i.i.i.i to i128
  %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i128 %.sroa.0.sroa.7.0.insert.shift.i.i.i.i.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i
  store i128 %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.h, align 16, !noalias !8969
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.10.sroa.7.0.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.10.sroa.7.037.i.i.i.i.i.i to i64
  %.sroa.10.sroa.7.0.insert.shift.i.i.i.i.i.i = shl nuw i64 %.sroa.10.sroa.7.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.10.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.10.sroa.0.038.i.i.i.i.i.i to i64
  %.sroa.10.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.10.sroa.7.0.insert.shift.i.i.i.i.i.i, %.sroa.10.sroa.0.0.insert.ext.i.i.i.i.i.i
  store i64 %.sroa.10.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !8969
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.14.sroa.5.0.insert.shift.i.i.i.i.i.i = shl nuw i32 %.sroa.14.sroa.5.sroa.0.039.i.i.i.i.i.i, 8
  %.sroa.14.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.14.sroa.0.040.i.i.i.i.i.i to i32
  %.sroa.14.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i32 %.sroa.14.sroa.5.0.insert.shift.i.i.i.i.i.i, %.sroa.14.sroa.0.0.insert.ext.i.i.i.i.i.i
  store i32 %.sroa.14.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !8969
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i16 %.sroa.17.042.i.i.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !8969
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 30
  store i16 %.sroa.18.041.i.i.i.i.i.i, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !8969
  %i.rv = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17he077385b891c3c7dE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %.noexc34.i unwind label %bb.ji, !noalias !8778

.noexc34.i:                                       ; preds = %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.thread.i.i.i.i.i"
  %i.rw = ptrtoint ptr %i.rv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !8827
  br label %.thread201.i.i.i.i.i.i

.thread201.i.i.i.i.i.i:                           ; preds = %.noexc85.i, %.thread200.i.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i.i.i.i.i", %bb.if, %bb.ie, %.noexc34.i, %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i"
  %.sroa.18.0.i.i.i.i.i = phi i64 [ %i.aaf, %.noexc85.i ], [ %.sroa.10.sroa.0.0.insert.insert5.i.i.i.i.i.i, %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i" ], [ %i.rw, %.noexc34.i ], [ %i.zl, %bb.if ], [ %i.zl, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i.i.i.i.i" ], [ %i.zk, %bb.ie ], [ %i.aac, %.thread200.i.i.i.i.i.i ]
  %i.rx = inttoptr i64 %.sroa.18.0.i.i.i.i.i to ptr
  br label %.invoke.i

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  store i8 127, ptr %i.bu, align 1, !alias.scope !8908, !noalias !8831
  %i.ry = add i64 %i.cb, 1
  store i64 %i.ry, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8970, !noalias !8831
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0121.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !8827
  store ptr %i.br, ptr %i.ay, align 8, !noalias !8973
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 1, ptr %i.rz, align 8, !noalias !8973
  call void @llvm.experimental.noalias.scope.decl(metadata !8977)
  call void @llvm.experimental.noalias.scope.decl(metadata !8980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8983
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h0542a0ab27d56229E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %.noexc36.i unwind label %bb.ji, !noalias !8778

.noexc36.i:                                       ; preds = %bb.ew
  %i.sa = load i8, ptr %i.af, align 8, !range !231, !noalias !8983, !noundef !26
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.noexc36.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !8983, !nonnull !26, !align !191, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8983
  br label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h6e2d21889ce6f08eE.exit.i.i.i.i.i.i"

bb.ey:                                            ; preds = %.noexc36.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.sf = load i8, ptr %i.se, align 1, !range !231, !noalias !8983, !noundef !26
  %i.sg = trunc nuw i8 %i.sf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8983
  br i1 %i.sg, label %bb.ez, label %.critedge.i.i.i.i.i.i.invoke.i

bb.ez:                                            ; preds = %bb.ey
  %i.sh = load ptr, ptr %i.ay, align 8, !alias.scope !8986, !noalias !8987, !nonnull !26, !align !191, !noundef !26 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8988)
  call void @llvm.experimental.noalias.scope.decl(metadata !8991)
  call void @llvm.experimental.noalias.scope.decl(metadata !8994)
  call void @llvm.experimental.noalias.scope.decl(metadata !8997)
  call void @llvm.experimental.noalias.scope.decl(metadata !9000)
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 40 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sk = load i64, ptr %i.sj, align 8, !alias.scope !9003, !noalias !9006, !noundef !26 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.si, align 8, !alias.scope !9013, !noalias !9014 ; 2 uses
  %i.sl = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.sk
  br i1 %i.sl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ez
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !alias.scope !9003, !noalias !9006, !nonnull !26, !align !208, !noundef !26
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.so = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sr, %bb.fb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9015)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !noalias !9016, !noundef !26 ; 2 uses
  switch i8 %i.sq, label %bb.fd [
    i8 32, label %bb.fb
    i8 10, label %bb.fb
    i8 9, label %bb.fb
    i8 13, label %bb.fb
    i8 45, label %bb.fc
  ]

bb.fb:                                            ; preds = %bb.fa, %bb.fa, %bb.fa, %bb.fa
  %i.sr = add i64 %i.so, 1                        ; 3 uses
  store i64 %i.sr, ptr %i.si, align 8, !alias.scope !9017, !noalias !9014
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sr, %i.sk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fa

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.fb, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9020
  store i64 5, ptr %i.ae, align 8, !noalias !9020
  %i.ss = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.sh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae)
          to label %.noexc37.i unwind label %bb.ji, !noalias !8778

.noexc37.i:                                       ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9020
  br label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h6e2d21889ce6f08eE.exit.i.i.i.i.i.i"

bb.fc:                                            ; preds = %bb.fa
  %i.st = add i64 %i.so, 1
  store i64 %i.st, ptr %i.si, align 8, !alias.scope !9021, !noalias !9024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9020
  invoke fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h76a32c9c47bfead0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.sh, i1 noundef zeroext false)
          to label %.noexc38.i unwind label %bb.ji, !noalias !8778

.noexc38.i:                                       ; preds = %bb.fc
  %i.su = load i64, ptr %i.ad, align 8, !range !269, !noalias !9020, !noundef !26 ; 2 uses
  %i.sv = icmp eq i64 %i.su, 3
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.sv, label %bb.fe, label %bb.ff

bb.fd:                                            ; preds = %bb.fa
  %i.sx = add i8 %i.sq, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.sx, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fo, label %bb.fn, !prof !270

bb.fe:                                            ; preds = %.noexc38.i
  %i.sy = load ptr, ptr %i.sw, align 8, !noalias !9020, !nonnull !26, !align !191, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9020
  br label %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h6e2d21889ce6f08eE.exit.i.i.i.i.i.i"

bb.ff:                                            ; preds = %.noexc38.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.sw, align 8, !noalias !9020 ; 6 uses
  switch i64 %i.su, label %default.unreachable [
    i64 0, label %bb.fg
    i64 1, label %bb.fh
    i64 2, label %bb.fj
  ]

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9025
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.sz, align 8, !noalias !9025
  store i8 3, ptr %i.ab, align 8, !noalias !9025
  %i.ta = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ab, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
          to label %.noexc39.i unwind label %bb.ji, !noalias !8778

.noexc39.i:                                       ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9025
  br label %bb.fl

bb.fh:                                            ; preds = %bb.ff
  %i.tb = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 2147483647
  br i1 %i.tb, label %bb.fi, label %bb.fm, !prof !28

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9031
  %i.tc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.tc, align 8, !noalias !9031
  store i8 1, ptr %i.aa, align 8, !noalias !9031
  %i.td = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
          to label %.noexc40.i unwind label %bb.ji, !noalias !8778

.noexc40.i:                                       ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9031
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ff
  %i.te = add i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -2147483648
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.te, -4294967296
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk, label %bb.fm, !prof !282

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9034
  %i.tf = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.tf, align 8, !noalias !9034
  store i8 2, ptr %i.z, align 8, !noalias !9034
  %i.tg = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
          to label %.noexc41.i unwind label %bb.ji, !noalias !8778

.noexc41.i:                                       ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9034
  br label %bb.fl

bb.fl:                                            ; preds = %.noexc41.i, %.noexc40.i, %.noexc39.i
  %.sroa.18.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tg, %.noexc41.i ], [ %i.td, %.noexc40.i ], [ %i.ta, %.noexc39.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9020
  br label %.invoke276.i

bb.fm:                                            ; preds = %bb.fj, %bb.fh
end_hunk_1
