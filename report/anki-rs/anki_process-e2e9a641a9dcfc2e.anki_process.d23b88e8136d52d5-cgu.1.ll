Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki_process-e2e9a641a9dcfc2e.anki_process.d23b88e8136d52d5-cgu.1?download=true
inline.NumInlined: 63
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [1 x i8] c" ", align 1
@1 = private unnamed_addr constant [19 x i8] c"Failed to execute: ", align 1
@2 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@3 = private unnamed_addr constant [15 x i8] c"Failed to run (", align 1
@4 = private unnamed_addr constant [3 x i8] c"): ", align 1
@5 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @3, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@6 = private unnamed_addr constant [2 x i8] c": ", align 1
@7 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @3, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @6, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@8 = private unnamed_addr constant [37 x i8] c"Couldn't decode stdout/stderr as utf8", align 1
@9 = private unnamed_addr constant [1 x i8] c"?", align 1
@10 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN106_$LT$anki_process..InvalidUtf8Snafu$LT$__T0$GT$$u20$as$u20$snafu..IntoError$LT$anki_process..Error$GT$$GT$10into_error17hecc88be5fd228f4cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 72)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 -9223372036854775805, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN108_$LT$anki_process..DidNotExecuteSnafu$LT$__T0$GT$$u20$as$u20$snafu..IntoError$LT$anki_process..Error$GT$$GT$10into_error17h33b11fb990f4d365E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN12anki_process11get_cmdline17h78419ccbd1973713E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call { ptr, i64 } @_ZN3std7process7Command11get_program17he2b8ccb78959e068E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_ZN5alloc6string6String15from_utf8_lossy17hd451b7a0cabe9799E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.e)
  %i.f = invoke { ptr, ptr } @_ZN3std7process7Command8get_args17h269d66c7facb93aaE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.g, ptr %i.i, align 8, !alias.scope !38, !noalias !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !38, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN9itertools9Itertools4join17h8dab460dc7acc39fE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #15
          to label %common.resume unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !range !4, !alias.scope !39, !noundef !5
  %i.m = icmp slt i64 %i.l, -9223372036854775805
  br i1 %i.m, label %"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3389aff1859119f2E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !40, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !41, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !42
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !40, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !41, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !43
  br label %"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE.exit"

common.resume:                                    ; preds = %bb.c, %bb.i, %bb.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.n, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.k, %bb.c ], [ %i.t, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE.exit": ; preds = %bb.d, %bb.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.i, %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h0a4b2268ce08ba1fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #15
          to label %common.resume unwind label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN12anki_process32ReturnedSnafu$LT$__T0$C$__T1$GT$5build17hd7000c5e2fc8532bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.d, ptr %i.c, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN12anki_process56ReturnedWithOutputSnafu$LT$__T0$C$__T1$C$__T2$C$__T3$GT$5build17h39b6de4692bfdb9bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.g, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd1a0d507b2134058E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !50, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.e = load i32, ptr %i.d, align 4, !range !7, !alias.scope !51, !noalias !52, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit.i, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11.i

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !51, !noalias !52, !noundef !5
  store i32 %i.h, ptr %i.c, align 4, !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53
  store ptr %i.c, ptr %i.a, align 8, !noalias !53
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hf9cd6342de4889e1E", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !53
  store ptr @10, ptr %i.b, align 8, !noalias !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.j, align 8, !noalias !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.k, align 8, !noalias !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.l, align 8, !noalias !53
  %.val5.i = load ptr, ptr %1, align 8, !alias.scope !52, !noalias !51, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6.i = load ptr, ptr %i.m, align 8, !alias.scope !52, !noalias !51, !nonnull !5, !noundef !5
  %i.n = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val5.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val6.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53
  br label %"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E.exit"

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !52, !noalias !51, !nonnull !5, !noundef !5
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !52, !noalias !51, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !noalias !54, !nonnull !5
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 1), !noalias !54, !inline_history !49
  br label %"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E.exit"

"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E.exit": ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11.i
  %.sroa.0.0.in.i = phi i1 [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit.i ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !77, !noundef !5
  %i.b = icmp slt i64 %i.a, -9223372036854775805
  br i1 %i.b, label %"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3389aff1859119f2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !78, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc07e33ca5998540fE.exit.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !80
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc07e33ca5998540fE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !78, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i.i.i": ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !81
  br label %"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E.exit"

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc07e33ca5998540fE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.c
  resume { ptr, i32 } %i.c

"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr89drop_in_place$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h0a4b2268ce08ba1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !100, !alias.scope !101, !noundef !5
  %switch.i.i.i = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch.i.i.i, label %"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3389aff1859119f2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !102, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.c, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc07e33ca5998540fE.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !103, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !104
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc07e33ca5998540fE.exit.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !102, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i": ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !103, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !105
  br label %"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE.exit"

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc07e33ca5998540fE.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i.i.i", %bb.c
  resume { ptr, i32 } %i.b

"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i4.i.i.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN58_$LT$anki_process..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hc4f951b4d000aaf9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = load i64, ptr %0, align 8, !range !108, !noundef !5 ; 3 uses
  %i.o = icmp ne i64 %i.n, -9223372036854775806
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.n, -9223372036854775808
  %i.q = icmp slt i64 %i.n, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 2
  switch i64 %i.r, label %bb.b [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit39
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit44
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit49
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6533f8cde83c7cb3E", ptr %.sroa.411.0..sroa_idx, align 8
  store ptr @2, ptr %i.l, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.k, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %i.w, align 8
  %.val33 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.y = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit39: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aa, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd1a0d507b2134058E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.ab, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6533f8cde83c7cb3E", ptr %.sroa.415.0..sroa_idx, align 8
  store ptr @5, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 2, ptr %i.af, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit44: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ai, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd1a0d507b2134058E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.al, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6533f8cde83c7cb3E", ptr %.sroa.419.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.am, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6533f8cde83c7cb3E", ptr %.sroa.423.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.an, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6533f8cde83c7cb3E", ptr %.sroa.427.0..sroa_idx, align 8
  store ptr @7, ptr %i.b, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 4, ptr %i.ar, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  %i.at = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit49: ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !5, !noalias !109, !nonnull !5
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 37), !noalias !109, !inline_history !0
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit49, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit44, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit39, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.y, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.ah, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit39 ], [ %i.at, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit44 ], [ %i.ax, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit49 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17ha2c892494615803bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, -1
  %i.b = add nuw i64 %i.a, %3
  %i.c = sub i64 0, %2
  %i.d = and i64 %i.b, %i.c
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 %1) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0         ; 7 uses
  %i.g = extractvalue { i64, i1 } %i.e, 1
  %i.h = sub nuw i64 -9223372036854775808, %2
  %i.i = icmp ugt i64 %i.f, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i, !prof !8
  br i1 %or.cond.i, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit, !prof !8

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit: ; preds = %bb.a
  %i.j = icmp eq i64 %.0.val, 0
  br i1 %i.j, label %bb.b, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb887f9774142ee0fE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb887f9774142ee0fE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit
  %i.k = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.l = icmp uge i64 %i.f, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #16
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit
  %i.n = icmp eq i64 %i.f, 0
  br i1 %i.n, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit.thread", label %bb.c

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit.thread": ; preds = %bb.b
  %i.o = inttoptr i64 %2 to ptr
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.p = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2) #16
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb887f9774142ee0fE.exit"
  %.pn15 = phi ptr [ %i.m, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb887f9774142ee0fE.exit" ], [ %i.p, %bb.c ] ; 2 uses
  %i.q = icmp eq ptr %.pn15, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.r, align 8
  br label %bb.f

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit.thread", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit"
  %.pn1517 = phi ptr [ %i.o, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit.thread" ], [ %.pn15, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit" ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn1517, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.sink20 = phi i64 [ 16, %bb.d ], [ 16, %bb.e ], [ 8, %bb.a ]
  %.sink18 = phi i64 [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.d ], [ 0, %bb.e ], [ 1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sink20
  store i64 %.sink18, ptr %i.t, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h88c33b52c47c1ad7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %3, -1
  %i.b = add nuw i64 %i.a, %4
  %i.c = sub i64 0, %3
  %i.d = and i64 %i.b, %i.c
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 %1) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0         ; 5 uses
  %i.g = extractvalue { i64, i1 } %i.e, 1
  %i.h = sub nuw i64 -9223372036854775808, %3
  %i.i = icmp ugt i64 %i.f, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i, !prof !8
  br i1 %or.cond.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8
  br label %bb.e

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit: ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit
  %i.l = inttoptr i64 %3 to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  br i1 %2, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit"

bb.e:                                             ; preds = %bb.b, %bb.h, %bb.i, %bb.c
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, -9223372036854775807) %3) #16
  br label %bb.g

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit": ; preds = %bb.d
  %i.p = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit"
  %.pn17 = phi ptr [ %i.o, %bb.f ], [ %i.p, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17he7adbb10b1940b33E.exit" ] ; 2 uses
  %i.q = icmp eq ptr %.pn17, null
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.s, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.g
  %i.t = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn17, ptr %i.v, align 8
  br label %bb.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he3c2f162a1a6462fE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !6, !alias.scope !112, !noundef !5 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !112
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17ha2c892494615803bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !112
  %i.j = load i64, ptr %i.a, align 8, !range !114, !noalias !112, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !115, !noalias !112, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #18
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !112, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !112
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !112
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i32, ptr %0, align 4, !range !7, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = load i32, ptr %i.f, align 4, !noundef !5
  store i32 %i.g, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hf9cd6342de4889e1E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @10, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.k, align 8
  %.val5 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val6, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !noalias !118, !nonnull !5
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 1), !noalias !118, !inline_history !0
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h32b47ae90dac0dc9E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h32b47ae90dac0dc9E.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h32b47ae90dac0dc9E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std7process7Command11get_program17he2b8ccb78959e068E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc6string6String15from_utf8_lossy17hd451b7a0cabe9799E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_ZN3std7process7Command8get_args17h269d66c7facb93aaE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9itertools9Itertools4join17h8dab460dc7acc39fE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3389aff1859119f2E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6533f8cde83c7cb3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #12

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hf9cd6342de4889e1E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { cold }
attributes #16 = { nounwind }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!4 = !{i64 0, i64 -9223372036854775805}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i32 0, i32 2}
!8 = !{!"branch_weights", i32 2002, i32 2000}
!9 = distinct !{!9, i1 false, !"_ZN4core4iter6traits8iterator8Iterator5chain17h477c073366aa7684E"}
!10 = distinct !{!10, !9, !"_ZN4core4iter6traits8iterator8Iterator5chain17h477c073366aa7684E: argument 1"}
!11 = distinct !{!11, !9, !"_ZN4core4iter6traits8iterator8Iterator5chain17h477c073366aa7684E: argument 0"}
!12 = distinct !{!12, i1 false, !"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE"}
!13 = distinct !{!13, !12, !"_ZN4core3ptr254drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$core..iter..adapters..map..Map$LT$std..process..CommandArgs$C$anki_process..get_cmdline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0d418118aa68e3ebE: argument 0"}
!14 = distinct !{!14, i1 false, !"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E"}
!15 = distinct !{!15, !14, !"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E: argument 0"}
!16 = distinct !{!16, i1 false, !"_ZN4core3ptr89drop_in_place$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h0a4b2268ce08ba1fE"}
!17 = distinct !{!17, !16, !"_ZN4core3ptr89drop_in_place$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h0a4b2268ce08ba1fE: argument 0"}
!18 = distinct !{!18, i1 false, !"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE"}
!19 = distinct !{!19, !18, !"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE: argument 0"}
!20 = distinct !{!20, i1 false, !"_ZN4core3ptr76drop_in_place$LT$core..option..Item$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hed282f4933d111f3E"}
!21 = distinct !{!21, !20, !"_ZN4core3ptr76drop_in_place$LT$core..option..Item$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hed282f4933d111f3E: argument 0"}
!22 = distinct !{!22, i1 false, !"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h465d5b8467d84837E"}
!23 = distinct !{!23, !22, !"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h465d5b8467d84837E: argument 0"}
!24 = distinct !{!24, i1 false, !"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7975c461ccb12cb9E"}
!25 = distinct !{!25, !24, !"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7975c461ccb12cb9E: argument 0"}
!26 = distinct !{!26, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h149082c9869ced73E"}
!27 = distinct !{!27, !26, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h149082c9869ced73E: argument 0"}
!28 = distinct !{!28, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h90d53b9346a480d5E"}
!29 = distinct !{!29, !28, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h90d53b9346a480d5E: argument 0"}
!30 = distinct !{!30, i1 false, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E"}
!31 = distinct !{!31, !30, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E"}
!33 = distinct !{!33, !32, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E"}
!35 = distinct !{!35, !34, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E: argument 0"}
!36 = !{!10}
!37 = !{!11, !10}
!38 = !{!11}
!39 = !{!15, !13}
!40 = !{!31, !29, !27, !25, !23, !21, !19, !17, !15, !13}
!41 = !{!29, !27, !25, !23, !21, !19, !17, !15, !13}
!42 = !{!33}
!43 = !{!35}
!44 = distinct !{!44, i1 false, !"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E"}
!45 = distinct !{!45, !44, !"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E: argument 0"}
!46 = distinct !{!46, !44, !"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E: argument 1"}
!47 = distinct !{!47, i1 false, !"_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE"}
!48 = distinct !{!48, !47, !"_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE: argument 0"}
!49 = distinct !{ptr @"_ZN64_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17h0ec57c001949d868E", null}
!50 = !{i64 4}
!51 = !{!45}
!52 = !{!46}
!53 = !{!45, !46}
!54 = !{!48, !45, !46}
!55 = distinct !{!55, i1 false, !"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E"}
!56 = distinct !{!56, !55, !"_ZN4core3ptr117drop_in_place$LT$core..option..Option$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$$GT$17h5bc70de114f1ca44E: argument 0"}
!57 = distinct !{!57, i1 false, !"_ZN4core3ptr89drop_in_place$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h0a4b2268ce08ba1fE"}
!58 = distinct !{!58, !57, !"_ZN4core3ptr89drop_in_place$LT$core..iter..sources..once..Once$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h0a4b2268ce08ba1fE: argument 0"}
!59 = distinct !{!59, i1 false, !"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE"}
!60 = distinct !{!60, !59, !"_ZN4core3ptr80drop_in_place$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1fd442cefc56d16dE: argument 0"}
!61 = distinct !{!61, i1 false, !"_ZN4core3ptr76drop_in_place$LT$core..option..Item$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hed282f4933d111f3E"}
!62 = distinct !{!62, !61, !"_ZN4core3ptr76drop_in_place$LT$core..option..Item$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hed282f4933d111f3E: argument 0"}
!63 = distinct !{!63, i1 false, !"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h465d5b8467d84837E"}
!64 = distinct !{!64, !63, !"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h465d5b8467d84837E: argument 0"}
!65 = distinct !{!65, i1 false, !"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7975c461ccb12cb9E"}
!66 = distinct !{!66, !65, !"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7975c461ccb12cb9E: argument 0"}
!67 = distinct !{!67, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h149082c9869ced73E"}
!68 = distinct !{!68, !67, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h149082c9869ced73E: argument 0"}
!69 = distinct !{!69, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h90d53b9346a480d5E"}
!70 = distinct !{!70, !69, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h90d53b9346a480d5E: argument 0"}
!71 = distinct !{!71, i1 false, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E"}
!72 = distinct !{!72, !71, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E: argument 0"}
!73 = distinct !{!73, i1 false, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E"}
!74 = distinct !{!74, !73, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E: argument 0"}
!75 = distinct !{!75, i1 false, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E"}
!76 = distinct !{!76, !75, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe1eaf95b2ab43e7E: argument 0"}
!77 = !{!56}
!78 = !{!72, !70, !68, !66, !64, !62, !60, !58, !56}
!79 = !{!70, !68, !66, !64, !62, !60, !58, !56}
!80 = !{!74}
end_hunk_0
