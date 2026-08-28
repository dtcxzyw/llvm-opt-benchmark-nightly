Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/tower-21355ed5550aa44b.tower.edcb24ae892e7d3d-cgu.0?download=true
inline.NumInlined: 89
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN76_$LT$tower..retry..backoff..InvalidBackoff$u20$as$u20$core..fmt..Display$GT$3fmt17h7144be6ad1140d71E":_ZN4core3fmt9Formatter9write_fmt17h96efc16903c15f64E.exit
_ZN4core3fmt9Formatter9write_fmt17h96efc16903c15f64E.exit:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt2rt8Argument11new_display17h19d2c6b6d07d00fcE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbef88af14ff79fc4E"(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 @53, ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.h = call zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1 %i.g, ptr align 8 %i.f, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bdaddfb96b83709E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN80_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$core..fmt..Debug$GT$3fmt17hedfeb6cbc1bc70a4E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull align 1 @54, i64 6)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr nonnull align 8 %i.b, ptr nonnull align 1 @55, i64 7, ptr nonnull align 1 %i.c, ptr nonnull align 8 @56)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8 %i.d, ptr nonnull align 1 @57, i64 8, ptr nonnull align 1 %i.e, ptr nonnull align 8 @56)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.l, 1
  br i1 %i.n, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.u, %.preheader.i ]
  %.sroa.09.0.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.v, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i, i64 %i.p)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load atomic i64, ptr %i.s seq_cst, align 8
  %i.u = call i64 @llvm.sadd.sat.i64(i64 %i.q, i64 %i.t) ; 3 uses
  %i.v = add nuw i64 %.sroa.09.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", label %.preheader.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa": ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i", label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", %.preheader.i.preheader
  %.sroa.07.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.u, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ]
  %.sroa.09.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.v, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod2 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod2)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i.epil.init
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.epil.init, i64 %i.x)
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", %.preheader.i.epil.preheader
  %.lcssa = phi i64 [ %i.u, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ], [ %i.y, %.preheader.i.epil.preheader ]
  %i.z = call i64 @llvm.sadd.sat.i64(i64 %i.h, i64 %.lcssa)
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit

_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit: ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i"
  %.sroa.04.0.i.i.i = phi i64 [ %i.h, %bb.a ], [ %i.z, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i" ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.0.i.i.i, i64 %i.ab)
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8 %i.f, ptr nonnull align 1 @58, i64 7, ptr nonnull align 1 %i.a, ptr nonnull align 8 @56)
  %i.ae = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr align 8 %i.ad)
  ret i1 %i.ae
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$core..default..Default$GT$7default17h51d493777488b92eE"(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN5tower5retry6budget10tps_budget9TpsBudget3new17h89d875e3cc15e9c4E(ptr sret([96 x i8]) align 8 %0, i64 10, i32 0, i32 10, float 2.000000e-01)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d3795f9784e7353E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.c, align 8
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.h, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr nonnull align 1 %i.b, i8 1, i8 0)
  br label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit

_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr align 4 %i.i)
  br label %bb.f

bb.f:                                             ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i32, i32 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hee4156b79bb1a688E"(ptr nofree align 4 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4                ; 3 uses
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp ult i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %i.b, 1
  store i32 %i.e, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %i.b, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @"_ZN89_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he99cd75f06d17dd5E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$tower..retry..backoff..ExponentialBackoffMaker$u20$as$u20$core..default..Default$GT$7default17h810a484a26cb1e09E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h20b1683c80098471E"(ptr nonnull align 8 @46) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 50000000, ptr %i.f, align 8
  store i64 18446744073709551, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 615000000, ptr %i.g, align 8
  %i.h = call zeroext i1 @_ZN4core3cmp10PartialOrd2gt17h7f7bd5745ca9fae4E(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b)
  br i1 %i.h, label %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8           ; 2 uses
  %.val4.i = load i32, ptr %i.g, align 8          ; 3 uses
  %i.i = icmp eq i64 %.val.i, 0
  %i.j = icmp eq i32 %.val4.i, 0
  %spec.select.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %spec.select.i.i, label %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread", label %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit"

"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread": ; preds = %bb.a, %bb.b
  %.sroa.0.0.ph = phi i64 [ ptrtoint (ptr @41 to i64), %bb.b ], [ ptrtoint (ptr @42 to i64), %bb.a ]
  %.sink9.i.ph = phi i64 [ 24, %bb.b ], [ 37, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.c

"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit": ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8
  %i.l = load i32, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = icmp eq i32 %.val4.i, 1000000000
  br i1 %i.m, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf460c4453691c5b8E.exit"

bb.c:                                             ; preds = %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread", %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit"
  %.sroa.5.0 = phi i64 [ %.sink9.i.ph, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread" ], [ %i.e, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit" ]
  %.sroa.0.013 = phi i64 [ %.sroa.0.0.ph, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread" ], [ 4607092346807469998, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit" ]
  %i.n = inttoptr i64 %.sroa.0.013 to ptr
  store ptr %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %i.o, align 8
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @59, i64 35, ptr nonnull align 1 %i.a, ptr nonnull align 8 @17, ptr nonnull align 8 @61) #25
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf460c4453691c5b8E.exit": ; preds = %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit"
  %i.p = extractvalue { i64, i64 } %i.d, 1
  store i64 4607092346807469998, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.2.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.9.sroa.2.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.l, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val.i, ptr %.sroa.114.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.val4.i, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind nonlazybind uwtable
define i64 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E"(ptr %0, ptr %1, i64 %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.07.0 = phi i64 [ %2, %.new ], [ %i.m, %bb.c ]
  %.sroa.09.0 = phi i64 [ 0, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8
  %i.i = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0, i64 %i.h)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = tail call i64 @llvm.sadd.sat.i64(i64 %i.i, i64 %i.l) ; 3 uses
  %i.n = add nuw i64 %.sroa.09.0, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %i.o = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.b
  %.sroa.07.0.epil.init = phi i64 [ %2, %bb.b ], [ %i.m, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.09.0.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0.epil.init
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.epil.init, i64 %i.q)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  %.sroa.04.0 = phi i64 [ %2, %bb.a ], [ %i.m, %.loopexit.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  ret i64 %.sroa.04.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @"_ZN92_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hf526521649e8e9bfE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN92_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$tower..retry..budget..Budget$GT$7deposit17hed8c7054f3e4ad18E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8
  tail call fastcc void @_ZN5tower5retry6budget10tps_budget9TpsBudget6expire17h90c49f74785091f1E(ptr align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = atomicrmw add ptr %i.c, i64 %i.b seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN92_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$tower..retry..budget..Budget$GT$8withdraw17h739ce30717fc556cE"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  tail call fastcc void @_ZN5tower5retry6budget10tps_budget9TpsBudget6expire17h90c49f74785091f1E(ptr align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.h, 1
  br i1 %i.j, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.q, %.preheader.i.i ]
  %.sroa.09.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.r, %.preheader.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.i, i64 %i.l)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = tail call i64 @llvm.sadd.sat.i64(i64 %i.m, i64 %i.p) ; 3 uses
  %i.r = add nuw i64 %.sroa.09.0.i.i.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", label %.preheader.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.07.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.q, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ]
  %.sroa.09.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.r, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ]
  %lcmp.mod3 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i.epil.init
  %i.t = load atomic i64, ptr %i.s seq_cst, align 8
  %i.u = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.i.epil.init, i64 %i.t)
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.q, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ], [ %i.u, %.preheader.i.i.epil.preheader ]
  %i.v = tail call i64 @llvm.sadd.sat.i64(i64 %i.d, i64 %.lcssa)
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i

_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i", %bb.a
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.v, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i" ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.0.i.i.i.i, i64 %i.x)
  %.not.i = icmp sge i64 %i.y, %i.b               ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN5tower5retry6budget10tps_budget9TpsBudget7try_get17h7a41976427cf8ce2E.exit

bb.b:                                             ; preds = %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i
  %i.z = atomicrmw sub ptr %i.c, i64 %i.b seq_cst, align 8 ; 0 uses
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget7try_get17h7a41976427cf8ce2E.exit

_ZN5tower5retry6budget10tps_budget9TpsBudget7try_get17h7a41976427cf8ce2E.exit: ; preds = %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i, %bb.b
  ret i1 %.not.i
}

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr, i8) unnamed_addr #6

; Function Attrs: cold noinline nonlazybind uwtable
declare zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE() unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr, i8, i8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_ZN4core4sync6atomic11atomic_load17hc4710425ff9d998bE(ptr, i8) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hd63cb86e8894341eE(ptr, i32, i32, i8, i8) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr align 4) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$isize$GT$3fmt17haaa73a96c4db1c53E"(ptr align 8, ptr align 8) unnamed_addr #1

end_hunk_0
