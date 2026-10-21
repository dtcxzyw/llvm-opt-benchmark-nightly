Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE":bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @"_ZN4core3ptr43drop_in_place$LT$jiff..error..ErrorKind$GT$17h995fa9c5c8c89169E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.f unwind label %bb.b, !inline_history !5

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load i64, ptr %i.b, align 8, !range !53, !alias.scope !11203, !noundef !11
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11204)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !11205, !noundef !11 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !11206
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.j, !inline_history !11191

bb.f:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.b, align 8, !range !53, !alias.scope !11207, !noundef !11
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr44drop_in_place$LT$jiff..error..ErrorInner$GT$17had26247eaa5dd275E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11208)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !11209, !noundef !11 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %"_ZN4core3ptr44drop_in_place$LT$jiff..error..ErrorInner$GT$17had26247eaa5dd275E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !11210
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %"_ZN4core3ptr44drop_in_place$LT$jiff..error..ErrorInner$GT$17had26247eaa5dd275E.exit"

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr44drop_in_place$LT$jiff..error..ErrorInner$GT$17had26247eaa5dd275E.exit" unwind label %bb.k, !inline_history !11202

bb.j:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !inline_history !5
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.e, %bb.d, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  %i.u = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit", label %bb.l

bb.l:                                             ; preds = %.body
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.m, label %"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit"

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #44
  br label %"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit"

"_ZN4core3ptr44drop_in_place$LT$jiff..error..ErrorInner$GT$17had26247eaa5dd275E.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.h
  %i.y = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.y, label %"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit2", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr44drop_in_place$LT$jiff..error..ErrorInner$GT$17had26247eaa5dd275E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = atomicrmw add ptr %i.z, i64 -1 release, align 8
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.o, label %"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit2"

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #44
  br label %"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit2"

"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit2": ; preds = %"_ZN4core3ptr44drop_in_place$LT$jiff..error..ErrorInner$GT$17had26247eaa5dd275E.exit", %bb.n, %bb.o
  ret void

"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Weak$LT$jiff..error..ErrorInner$C$$RF$alloc..alloc..Global$GT$$GT$17h6bac60550c2d1faaE.exit": ; preds = %bb.m, %bb.l, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc66d1eb56d3b66d3E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr166drop_in_place$LT$alloc..sync..Weak$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hbfc4b7c6fb6f7245E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr166drop_in_place$LT$alloc..sync..Weak$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hbfc4b7c6fb6f7245E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 104, i64 noundef 8) #44
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..sync..Weak$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hbfc4b7c6fb6f7245E.exit"

"_ZN4core3ptr166drop_in_place$LT$alloc..sync..Weak$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hbfc4b7c6fb6f7245E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17haa4a6953bb14243eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #44
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !11, !noundef !11
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #44
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #44
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5730fa9574623344E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !50, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11215)
  %i.d = shl nuw i64 %i.c, 1                      ; 2 uses
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 3 uses
  %i.f = shl i64 %i.e, 1                          ; 2 uses
  %i.g = or i64 %i.f, %i.e
  %or.cond.i.i.not = icmp sgt i64 %i.g, -1
  br i1 %or.cond.i.i.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, label %bb.d, !prof !77

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11215
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.h, align 8, !alias.scope !11215, !nonnull !11, !noundef !11
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !11216, !noalias !11215
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11216, !noalias !11215
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 1, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !11216, !noalias !11215
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17haa4a6953bb14243eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !11215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11215
  %i.k = load i64, ptr %i.b, align 8, !range !53, !noalias !11215, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !15, !noalias !11215, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !11215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11215
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #45
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !11215, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11215
  store ptr %i.q, ptr %i.h, align 8, !alias.scope !11215
  store i64 %i.e, ptr %0, align 8, !alias.scope !11215
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h828e1f8374976c25E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !50, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11221)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp samesign ugt i64 %i.c, 1152921504606846975
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h, !prof !24
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11221
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.i, align 8, !alias.scope !11221, !nonnull !11, !noundef !11
  %i.k = shl nuw nsw i64 %i.c, 3
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !11222, !noalias !11221
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11222, !noalias !11221
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.l, align 8, !alias.scope !11222, !noalias !11221
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17haa4a6953bb14243eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !11221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11221
  %i.m = load i64, ptr %i.b, align 8, !range !53, !noalias !11221, !noundef !11
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.p = load i64, ptr %i.o, align 8, !range !15, !noalias !11221, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !11221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11221
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.r, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #45
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.s = load ptr, ptr %i.o, align 8, !noalias !11221, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11221
  store ptr %i.s, ptr %i.i, align 8, !alias.scope !11221
  store i64 %i.e, ptr %0, align 8, !alias.scope !11221
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8d660a8cdebc49aaE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !50, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11227)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp samesign ugt i64 %i.c, 1152921504606846975
  %i.h = icmp ugt i64 %i.f, 9223372036854775804
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h, !prof !24
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11227
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.i, align 8, !alias.scope !11227, !nonnull !11, !noundef !11
  %i.k = shl nuw nsw i64 %i.c, 3
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !11228, !noalias !11227
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11228, !noalias !11227
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 4, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.l, align 8, !alias.scope !11228, !noalias !11227
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17haa4a6953bb14243eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 4, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !11227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11227
  %i.m = load i64, ptr %i.b, align 8, !range !53, !noalias !11227, !noundef !11
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.p = load i64, ptr %i.o, align 8, !range !15, !noalias !11227, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !11227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11227
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.r, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #45
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.s = load ptr, ptr %i.o, align 8, !noalias !11227, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11227
  store ptr %i.s, ptr %i.i, align 8, !alias.scope !11227
  store i64 %i.e, ptr %0, align 8, !alias.scope !11227
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hee43ba5d95537f42E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !50, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11233)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp samesign ugt i64 %i.c, 1152921504606846975
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h, !prof !24
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11233
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.i, align 8, !alias.scope !11233, !nonnull !11, !noundef !11
  %i.k = shl nuw nsw i64 %i.c, 3
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !11234, !noalias !11233
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11234, !noalias !11233
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.l, align 8, !alias.scope !11234, !noalias !11233
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17haa4a6953bb14243eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !11233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11233
  %i.m = load i64, ptr %i.b, align 8, !range !53, !noalias !11233, !noundef !11
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.p = load i64, ptr %i.o, align 8, !range !15, !noalias !11233, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !11233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11233
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.r, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #45
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.s = load ptr, ptr %i.o, align 8, !noalias !11233, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11233
  store ptr %i.s, ptr %i.i, align 8, !alias.scope !11233
  store i64 %i.e, ptr %0, align 8, !alias.scope !11233
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11239)
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.b, !prof !23

end_hunk_0
