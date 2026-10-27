Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h12296edd3868b808E" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00U\02\00\00", ptr @410, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h46d12b6bbc37ce3bE", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@411 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:691", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h42e36a64e12b4316E" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\B3\02\00\00", ptr @411, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@412 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:593", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h7e3119f9e97736f8E" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00Q\02\00\00", ptr @412, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17hac645a90eeab5ee4E", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@413 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:606", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17hbde0df3b0663f1ebE" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00^\02\00\00", ptr @413, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h4591ba5541d6483aE", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@414 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:641", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17hf382a07eb44c58fcE" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\81\02\00\00", ptr @414, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@415 = private unnamed_addr constant [25 x i8] c"shutting down idle worker", align 1
@416 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @415, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@417 = private unnamed_addr constant [31 x i8] c"force shutdown worker, closing ", align 1
@418 = private unnamed_addr constant [12 x i8] c" connections", align 1
@419 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @417, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @418, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@420 = private unnamed_addr constant [36 x i8] c"graceful worker shutdown; finishing ", align 1
@421 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @420, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @418, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@422 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00Y\02\00\00%\00\00\00" }>, align 8
@423 = private unnamed_addr constant [21 x i8] c"worker is unavailable", align 1
@424 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @423, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@425 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\C1\02\00\00!\00\00\00" }>, align 8
@426 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\7F\02\00\00\11\00\00\00" }>, align 8
@427 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\83\02\00\00\15\00\00\00" }>, align 8
@428 = private unnamed_addr constant [19 x i8] c" has been restarted", align 1
@429 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @146, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @428, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@430 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\86\02\00\00\11\00\00\00" }>, align 8
@431 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00{\02\00\00\1D\00\00\00" }>, align 8
@432 = private unnamed_addr constant [16 x i8] c"Can not restart ", align 1
@433 = private unnamed_addr constant [8 x i8] c" service", align 1
@434 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @432, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @433, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@435 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00y\02\00\00\19\00\00\00" }>, align 8
@436 = private unnamed_addr constant [75 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/slice.rs\00", align 1
@437 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @436, [16 x i8] c"J\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@438 = private unnamed_addr constant [21 x i8] c"called after complete", align 1
@439 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @438, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@440 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @329, [16 x i8] c"e\00\00\00\00\00\00\00\09\05\00\00\0D\00\00\00" }>, align 8
@441 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/join_all.rs\00", align 1
@442 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @441, [16 x i8] c"g\00\00\00\00\00\00\005\00\00\00'\00\00\00" }>, align 8
@443 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @441, [16 x i8] c"g\00\00\00\00\00\00\005\00\00\00\19\00\00\00" }>, align 8
@"_ZN8actix_rt7arbiter6HANDLE29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h05a7b5e4fdb050eeE" = external thread_local global { { { i64, ptr } }, i8, [7 x i8] }
@_ZN8actix_rt7arbiter5COUNT17h226b663ed74f88b9E = external global { i64 }
@444 = private unnamed_addr constant [16 x i8] c"actix-rt|system:", align 1
@445 = private unnamed_addr constant [9 x i8] c"|arbiter:", align 1
@446 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @444, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @445, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@447 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-rt-2.11.0/src/arbiter.rs\00", align 1
@448 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00|\00\00\00\18\00\00\00" }>, align 8
@449 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\99\00\00\00\19\00\00\00" }>, align 8
@450 = private unnamed_addr constant [31 x i8] c"Cannot spawn Arbiter's thread: ", align 1
@451 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @450, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@452 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\97\00\00\00#\00\00\00" }>, align 8
@453 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\8C\00\00\00'\00\00\00" }>, align 8
@454 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\8F\00\00\00\18\00\00\00" }>, align 8
@455 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\85\00\00\00.\00\00\00" }>, align 8
@456 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h371f559d1343384aE", [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$17hb2d649d431f0ba3aE" }>, align 8
@switch.table._ZN3std2io5error5Error4kind17hcef9c5606d2f7459E = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE" = private unnamed_addr constant [6 x i8] c"\02\04\04\06\08\08", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE.938" = private unnamed_addr constant [6 x ptr] [ptr @384, ptr @385, ptr @386, ptr @387, ptr @388, ptr @389], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE" = private unnamed_addr constant [4 x i8] c"\06\05\06\06", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE.939" = private unnamed_addr constant [4 x ptr] [ptr @392, ptr @393, ptr @394, ptr @395], align 8
@"switch.table._ZN72_$LT$actix_server..signals..SignalKind$u20$as$u20$core..fmt..Display$GT$3fmt17h255a8914c3332e9aE" = private unnamed_addr constant [4 x i8] c"\1D\06\07\07", align 8
@"switch.table._ZN72_$LT$actix_server..signals..SignalKind$u20$as$u20$core..fmt..Display$GT$3fmt17h255a8914c3332e9aE.941" = private unnamed_addr constant [4 x ptr] [ptr @400, ptr @401, ptr @402, ptr @403], align 8

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @"_ZN103_$LT$std..sys..thread_local..abort_on_dtor_unwind..DtorUnwindGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c3f4de280ab1089E"() unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.g, align 8
  %i.h = call fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h81b6540b7d8872e3E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.b)
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE"(ptr noalias noundef align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63d1fb350182e039E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.8.i.i.i = alloca [32 x i8], align 8      ; 2 uses
  %.sroa.4.i.i.i = alloca ptr, align 8            ; 5 uses
  %.sroa.7.i.i.i = alloca ptr, align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !117, !nonnull !12, !align !13, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.i = load i64, ptr %i.g, align 8, !alias.scope !123, !noundef !12 ; 3 uses
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !124, !noundef !12
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit"

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw i64 %i.i, 1
  store i64 %i.l, ptr %i.g, align 8, !alias.scope !125
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !127
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !128, !noalias !129, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !128, !noalias !129 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !131, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !131, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !132
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.r, 4       ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i": ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !noalias !132
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !132
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !133
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx.i.i.i.i.i, i64 noundef range(i64 1, 9) 8) #24, !noalias !133 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #35, !noalias !132
  unreachable

.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i:       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"
  store i64 %i.r, ptr %i.a, align 8, !noalias !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.x, align 8, !noalias !132
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.d, %.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.d ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !136, !nonnull !12, !align !14, !noundef !12
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !136, !nonnull !12, !align !13, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !12, !noalias !137, !nonnull !12
  %i.ad = invoke { ptr, ptr } %i.ac(ptr noundef nonnull align 1 %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.d unwind label %.body.i.i.i.i.i.i.i.i.i, !noalias !136, !inline_history !102 ; 2 uses

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !138
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ah, align 8, !noalias !138
  %i.ai = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.r
  br i1 %i.aj, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.y, align 8, !alias.scope !139, !noalias !140
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #36
          to label %common.resume.i.i.i.i unwind label %bb.e, !noalias !132

bb.e:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !132
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.j, %.body.i.i.i.i.i.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.j ], [ %i.ak, %.body.i.i.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i: ; preds = %bb.d, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i"
  %i.am = phi ptr [ %i.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i" ], [ %i.y, %bb.d ]
  store i64 %i.r, ptr %i.am, align 8, !alias.scope !139, !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !132
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i) ]
  %i.an = load ptr, ptr %.val2.i.i.i.i, align 8, !noalias !131, !nonnull !12, !noundef !12
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !131
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i"

bb.f:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %.val2.i.i.i.i, align 8, !noalias !131, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !131
  call void @_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, i64 noundef %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !130 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !130 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.as = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, null
  br i1 %i.as, label %bb.g, label %bb.i

bb.g:                                             ; preds = %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i"
  %i.at = load ptr, ptr %i.f, align 8, !alias.scope !142, !noalias !143, !noundef !12
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i" unwind label %bb.j, !noalias !144

bb.i:                                             ; preds = %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !alias.scope !145, !noalias !127
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"

bb.j:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.f, align 8, !alias.scope !119, !noalias !143
  br label %common.resume.i.i.i.i

"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i": ; preds = %bb.h, %bb.g
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.f, align 8, !alias.scope !119, !noalias !143
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit": ; preds = %bb.i, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i"
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.i ], [ %.sroa.4.i.i.i, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i" ]
  %.sroa.4.0.copyload.sink.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i.i.i.i, %bb.i ], [ null, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i" ]
  store ptr %.sroa.4.0.copyload.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !145, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !127
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !alias.scope !146, !noalias !127 ; 2 uses
  %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i = load ptr, ptr %.sroa.7.i.i.i, align 8, !alias.scope !146, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not = icmp eq ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, null
  br i1 %.not, label %"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i, i64 32, i1 false)
  store ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, ptr %0, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit"
  ret void

"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit": ; preds = %bb.a, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"
  store ptr null, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !165 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !165, !nonnull !12, !noundef !12 ; 2 uses
  %i.r = icmp eq ptr %.promoted.i, %i.q
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.52.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.538.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.433.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i", %.lr.ph.i
  %i.ag = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.ah, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i" ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr %i.ah, ptr %1, align 8, !alias.scope !165
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !168
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ai, ptr %i.o, align 8, !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !169
  %i.aj = load i32, ptr %i.ag, align 4, !alias.scope !170, !noalias !171, !noundef !12
  call void @_ZN5tokio6signal4unix6signal17hff30f32247fd52d0E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, i32 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225), !noalias !172
  %i.ak = load ptr, ptr %i.n, align 8, !noalias !169, !noundef !12 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  %i.am = load ptr, ptr %i.s, align 8, !noalias !169, !nonnull !12, !noundef !12 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !169
  store ptr %i.am, ptr %i.m, align 8, !noalias !173
  %i.an = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !173
  %i.ao = icmp ult i64 %i.an, 5
  br i1 %i.ao, label %bb.e, label %.thread47.i.i.i.i

bb.d:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.l, %.noexc42.i.i.i.i, %bb.k, %bb.i, %.thread.i.i.i.i, %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #36
          to label %bb.u unwind label %bb.t, !noalias !172

bb.e:                                             ; preds = %bb.c
  %i.aq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", i64 16) monotonic, align 8, !noalias !173 ; 3 uses
  switch i8 %i.aq, label %bb.f [
    i8 0, label %.thread47.i.i.i.i
    i8 1, label %.thread.i.i.i.i
    i8 2, label %.thread.i.i.i.i
  ], !prof !15

bb.f:                                             ; preds = %bb.e
  %i.ar = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E")
          to label %bb.g unwind label %bb.d, !noalias !174 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.thread47.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.e, %bb.g, %bb.e
  %.sroa.07.046.i.i.i.i = phi i8 [ %i.ar, %bb.g ], [ %i.aq, %bb.e ], [ %i.aq, %bb.e ]
  %i.at = load ptr, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", align 8, !noalias !173, !nonnull !12, !align !13, !noundef !12
  %i.au = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at, i8 noundef %.sroa.07.046.i.i.i.i)
          to label %bb.h unwind label %bb.d, !noalias !174

bb.h:                                             ; preds = %.thread.i.i.i.i
  br i1 %i.au, label %bb.i, label %.thread47.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !173
  %i.av = load ptr, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", align 8, !noalias !173, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !173
  store ptr %i.o, ptr %i.i, align 8, !noalias !173
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE", ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !173
  store ptr %i.m, ptr %i.t, align 8, !noalias !173
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !173
  store ptr @229, ptr %i.j, align 8, !noalias !173
  store i64 2, ptr %i.u, align 8, !noalias !173
  store ptr null, ptr %i.v, align 8, !noalias !173
  store ptr %i.i, ptr %i.w, align 8, !noalias !173
  store i64 2, ptr %i.x, align 8, !noalias !173
  store ptr %i.j, ptr %i.k, align 8, !noalias !173
  store ptr @51, ptr %i.y, align 8, !noalias !173
  store i64 1, ptr %i.l, align 8, !noalias !173
  store ptr %i.k, ptr %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !173
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !173
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !173
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !172

.noexc.i.i.i.i:                                   ; preds = %bb.i
  %i.ax = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !175
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.s

bb.j:                                             ; preds = %.noexc.i.i.i.i
  %i.az = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !175 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 6
  call void @llvm.assume(i1 %i.ba)
  %.not.i.i.i.i.i = icmp eq i64 %i.az, 0
end_hunk_0
begin_hunk_1_@"_ZN12actix_server6server11ServerInner3run28_$u7b$$u7b$closure$u7d$$u7d$17h63b75a5feaf8dcf6E":bb.a

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ec, %bb.ed
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !665 ; 2 uses
  %i.pb = icmp eq i64 %.val.i.i, 0
  br i1 %i.pb, label %.body163.i, label %bb.ee

bb.ee:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val20.i.i = load ptr, ptr %i.ok, align 8, !noalias !665, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !664
  br label %.body163.i

bb.ef:                                            ; preds = %bb.ed
  unreachable

bb.eg:                                            ; preds = %bb.dt
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.body163.i

.body163.i:                                       ; preds = %bb.eg, %bb.ee, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i
  %eh.lpad-body164.i = phi { ptr, i32 } [ %i.pc, %bb.eg ], [ %i.od, %.body.i.i ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp193, %bb.ee ]
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$alloc..vec..Vec$LT$actix_server..join_all..JoinFuture$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$$GT$17hd4314159f7882aa3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.nf)
          to label %.body177.i unwind label %bb.bg

"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.i": ; preds = %bb.ea
  %.sroa.0189.0.copyload190.pr.i = load i64, ptr %i.g, align 8, !noalias !668 ; 2 uses
  %.sroa.8191.sroa.0.0.copyload.i = load ptr, ptr %i.ok, align 8, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !665
  %i.pd = icmp eq i64 %.sroa.0189.0.copyload190.pr.i, -9223372036854775808
  br i1 %i.pd, label %.loopexit, label %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.thread269.i"

"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.thread269.i": ; preds = %bb.dr, %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.i"
  %.sroa.8191.sroa.0.0.copyload276.i = phi ptr [ %.sroa.8191.sroa.0.0.copyload.i, %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.i" ], [ inttoptr (i64 1 to ptr), %bb.dr ] ; 2 uses
  %.sroa.0189.0.copyload190275.i = phi i64 [ %.sroa.0189.0.copyload190.pr.i, %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.i" ], [ 0, %bb.dr ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$alloc..vec..Vec$LT$actix_server..join_all..JoinFuture$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$$GT$17hd4314159f7882aa3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.nf)
          to label %"_ZN4core3ptr133drop_in_place$LT$actix_server..join_all..JoinAll$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17ha046fb6f871a09c4E.exit167.i" unwind label %bb.fn

"_ZN4core3ptr133drop_in_place$LT$actix_server..join_all..JoinAll$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17ha046fb6f871a09c4E.exit167.i": ; preds = %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.thread269.i"
  %i.pe = icmp eq i64 %.sroa.0189.0.copyload190275.i, 0
  br i1 %i.pe, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17h84f285629c1bae56E.exit.i", label %bb.eh

bb.eh:                                            ; preds = %"_ZN4core3ptr133drop_in_place$LT$actix_server..join_all..JoinAll$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17ha046fb6f871a09c4E.exit167.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8191.sroa.0.0.copyload276.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8191.sroa.0.0.copyload276.i, i64 noundef %.sroa.0189.0.copyload190275.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17h84f285629c1bae56E.exit.i"

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17h84f285629c1bae56E.exit.i": ; preds = %"_ZN4core3ptr133drop_in_place$LT$actix_server..join_all..JoinAll$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17ha046fb6f871a09c4E.exit167.i", %bb.eh, %.loopexit282.i
  %i.pf = phi ptr [ %i.nd, %"_ZN4core3ptr133drop_in_place$LT$actix_server..join_all..JoinAll$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17ha046fb6f871a09c4E.exit167.i" ], [ %i.nd, %bb.eh ], [ %i.bj, %.loopexit282.i ] ; 11 uses
  %i.pg = phi ptr [ %i.ne, %"_ZN4core3ptr133drop_in_place$LT$actix_server..join_all..JoinAll$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17ha046fb6f871a09c4E.exit167.i" ], [ %i.ne, %bb.eh ], [ %i.bk, %.loopexit282.i ] ; 11 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !603, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %.sroa.0195.0.copyload196.i = load ptr, ptr %i.pj, align 8, !alias.scope !670 ; 2 uses
  store ptr null, ptr %i.pj, align 8, !alias.scope !671
  %.not.i86.i = icmp eq ptr %.sroa.0195.0.copyload196.i, null
  br i1 %.not.i86.i, label %bb.ei, label %bb.ej, !prof !18

bb.ei:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17h84f285629c1bae56E.exit.i"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35
          to label %.noexc87.i unwind label %bb.fn

.noexc87.i:                                       ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$bool$C$tokio..sync..oneshot..error..RecvError$GT$$GT$$GT$17h84f285629c1bae56E.exit.i"
  %.sroa.6197.0..sroa_idx198.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 96
  %.sroa.5200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5200.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6197.0..sroa_idx198.i, i64 16, i1 false)
  store ptr %.sroa.0195.0.copyload196.i, ptr %i.f, align 8, !noalias !603
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !673, !noalias !672, !noundef !12
  invoke void @_ZN3std3sys6thread4unix6Thread4join17h6768b35fcb3b5365E(i64 noundef %i.pl)
          to label %bb.em unwind label %bb.ek, !noalias !674

bb.ek:                                            ; preds = %bb.er, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.thread.i.i.i", %bb.ej
  %i.pm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.pn = load ptr, ptr %i.f, align 8, !alias.scope !679, !noalias !672, !nonnull !12, !noundef !12
  %i.po = atomicrmw add ptr %i.pn, i64 -1 release, align 8, !noalias !680
  %i.pp = icmp eq i64 %i.po, 1
  br i1 %i.pp, label %bb.el, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i"

bb.el:                                            ; preds = %bb.ek
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i" unwind label %bb.ev, !noalias !681

bb.em:                                            ; preds = %bb.ej
  %.val.i.i.i = load ptr, ptr %.sroa.5200.0..sroa_idx.i, align 8, !alias.scope !673, !noalias !672, !nonnull !12, !noundef !12 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 2 uses
  %i.pr = cmpxchg ptr %i.pq, i64 1, i64 -1 acquire monotonic, align 8, !noalias !674
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.pr, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.i.i.i", label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.thread.i.i.i", !prof !36

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.i.i.i": ; preds = %bb.em
  %i.ps = load atomic i64, ptr %.val.i.i.i acquire, align 8, !noalias !674
  %i.pt = icmp eq i64 %i.ps, 1
  store atomic i64 1, ptr %i.pq release, align 8, !noalias !674
  br i1 %i.pt, label %bb.en, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.thread.i.i.i", !prof !37

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.thread.i.i.i": ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.i.i.i", %bb.em
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @286, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #35
          to label %bb.eo unwind label %bb.ek, !noalias !674

bb.en:                                            ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.i.i.i"
  %i.pu = load ptr, ptr %.sroa.5200.0..sroa_idx.i, align 8, !alias.scope !673, !noalias !672, !nonnull !12, !noundef !12 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i168.i = load i64, ptr %i.pv, align 8, !noalias !674
  %.sroa.4.0..sroa_idx.i.i169.i = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  %.sroa.4.0.copyload.i.i170.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i169.i, align 8, !noalias !674 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i171.i = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %.sroa.5.0.copyload.i.i172.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i171.i, align 8, !noalias !674 ; 2 uses
  store i64 0, ptr %i.pv, align 8, !noalias !674
  %i.pw = trunc nuw i64 %.sroa.0.0.copyload.i.i168.i to i1
  br i1 %i.pw, label %bb.ep, label %bb.er, !prof !23

bb.eo:                                            ; preds = %bb.er, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h98dcb01ac76910b4E.exit.thread.i.i.i"
  unreachable

bb.ep:                                            ; preds = %bb.en
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.px = load ptr, ptr %i.f, align 8, !alias.scope !686, !noalias !672, !nonnull !12, !noundef !12
  %i.py = atomicrmw add ptr %i.px, i64 -1 release, align 8, !noalias !687
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %bb.eq, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i.i"

bb.eq:                                            ; preds = %bb.ep
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i.i" unwind label %bb.es, !noalias !681

bb.er:                                            ; preds = %bb.en
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #35
          to label %bb.eo unwind label %bb.ek, !noalias !674

bb.es:                                            ; preds = %bb.eq
  %i.qa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.qb = load ptr, ptr %.sroa.5200.0..sroa_idx.i, align 8, !alias.scope !690, !noalias !672, !nonnull !12, !noundef !12
  %i.qc = atomicrmw add ptr %i.qb, i64 -1 release, align 8, !noalias !691
  %i.qd = icmp eq i64 %i.qc, 1
  br i1 %i.qd, label %bb.et, label %.body177.i

bb.et:                                            ; preds = %bb.es
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5200.0..sroa_idx.i)
          to label %.body177.i unwind label %bb.ev, !noalias !681

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i.i": ; preds = %bb.eq, %bb.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.qe = load ptr, ptr %.sroa.5200.0..sroa_idx.i, align 8, !alias.scope !694, !noalias !672, !nonnull !12, !noundef !12
  %i.qf = atomicrmw add ptr %i.qe, i64 -1 release, align 8, !noalias !695
  %i.qg = icmp eq i64 %i.qf, 1
  br i1 %i.qg, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5200.0..sroa_idx.i)
          to label %bb.ex unwind label %bb.fn

bb.ev:                                            ; preds = %bb.ew, %bb.et, %bb.el
  %i.qh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !681
  unreachable

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i": ; preds = %bb.el, %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.qi = load ptr, ptr %.sroa.5200.0..sroa_idx.i, align 8, !alias.scope !698, !noalias !672, !nonnull !12, !noundef !12
  %i.qj = atomicrmw add ptr %i.qi, i64 -1 release, align 8, !noalias !699
  %i.qk = icmp eq i64 %i.qj, 1
  br i1 %i.qk, label %bb.ew, label %.body177.i

bb.ew:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5200.0..sroa_idx.i)
          to label %.body177.i unwind label %bb.ev, !noalias !681

bb.ex:                                            ; preds = %bb.eu, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !672
  %.not.i176.i = icmp eq ptr %.sroa.4.0.copyload.i.i170.i, null
  br i1 %.not.i176.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hdc6c7d9322b4bee3E.exit.i", label %bb.ey, !prof !23

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !603
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i172.i) ]
  store ptr %.sroa.4.0.copyload.i.i170.i, ptr %i.e, align 8, !noalias !603
  %i.ql = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload.i.i172.i, ptr %i.ql, align 8, !noalias !603
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 40, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35
          to label %bb.fa unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haceb59e96844710cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #36
          to label %.body177.i unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hdc6c7d9322b4bee3E.exit.i": ; preds = %bb.ex
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.qp = load i64, ptr %i.qo, align 8, !range !34, !noalias !603, !noundef !12
  %i.qq = trunc nuw i64 %i.qp to i1
  br i1 %i.qq, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hdc6c7d9322b4bee3E.exit.i"
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i8 0, ptr %i.qs, align 4, !noalias !603
  %i.qt = load ptr, ptr %i.qr, align 8, !noalias !603, !noundef !12
  %i.qu = invoke fastcc noundef zeroext i1 @"_ZN5tokio4sync7oneshot15Sender$LT$T$GT$4send17h6ead7fb9b088e416E"(ptr noundef %i.qt)
          to label %bb.fd unwind label %bb.fn     ; 0 uses

bb.fd:                                            ; preds = %bb.fc, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hdc6c7d9322b4bee3E.exit.i"
  %i.qv = load ptr, ptr %i.ph, align 8, !noalias !603, !nonnull !12, !align !13, !noundef !12
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 112
  %i.qx = load i8, ptr %i.qw, align 8, !range !31, !noundef !12
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.fg, label %bb.fe

.body177.i:                                       ; preds = %bb.fh, %bb.fk, %bb.fn, %bb.es, %bb.et, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i", %bb.ew, %.body163.i, %bb.dm, %"_ZN4core3ptr73drop_in_place$LT$$u5b$tokio..sync..oneshot..Receiver$LT$bool$GT$$u5d$$GT$17h5f98cbb051b4628fE.exit.i.i.i.i.i.i", %.body.i.i.i.i.i.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit.i", %bb.ez
  %i.qz = phi ptr [ %i.ro, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit.i" ], [ %i.pf, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i" ], [ %i.bj, %.body.i.i.i.i.i.i.i ], [ %i.pf, %bb.ez ], [ %i.pf, %bb.ew ], [ %i.pf, %bb.fh ], [ %i.nd, %.body163.i ], [ %i.bj, %"_ZN4core3ptr73drop_in_place$LT$$u5b$tokio..sync..oneshot..Receiver$LT$bool$GT$$u5d$$GT$17h5f98cbb051b4628fE.exit.i.i.i.i.i.i" ], [ %i.bj, %bb.dm ], [ %i.ro, %bb.fk ], [ %i.rt, %bb.fn ], [ %i.pf, %bb.es ], [ %i.pf, %bb.et ] ; 2 uses
  %i.ra = phi ptr [ %i.rp, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit.i" ], [ %i.pg, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i" ], [ %i.bk, %.body.i.i.i.i.i.i.i ], [ %i.pg, %bb.ez ], [ %i.pg, %bb.ew ], [ %i.pg, %bb.fh ], [ %i.ne, %.body163.i ], [ %i.bk, %"_ZN4core3ptr73drop_in_place$LT$$u5b$tokio..sync..oneshot..Receiver$LT$bool$GT$$u5d$$GT$17h5f98cbb051b4628fE.exit.i.i.i.i.i.i" ], [ %i.bk, %bb.dm ], [ %i.rp, %bb.fk ], [ %i.ru, %bb.fn ], [ %i.pg, %bb.es ], [ %i.pg, %bb.et ] ; 2 uses
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn33.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit.i" ], [ %i.pm, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i.i" ], [ %i.lx, %.body.i.i.i.i.i.i.i ], [ %i.qm, %bb.ez ], [ %i.pm, %bb.ew ], [ %i.rm, %bb.fh ], [ %eh.lpad-body164.i, %.body163.i ], [ %i.mg, %"_ZN4core3ptr73drop_in_place$LT$$u5b$tokio..sync..oneshot..Receiver$LT$bool$GT$$u5d$$GT$17h5f98cbb051b4628fE.exit.i.i.i.i.i.i" ], [ %i.mg, %bb.dm ], [ %i.rs, %bb.fk ], [ %i.rv, %bb.fn ], [ %i.qa, %bb.es ], [ %i.qa, %bb.et ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 403
  %i.rc = load i8, ptr %i.rb, align 1, !range !31, !noalias !603, !noundef !12
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.fw, label %.body156.i

bb.fe:                                            ; preds = %bb.fd
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.rf = load i8, ptr %i.re, align 2, !range !31, !noalias !603, !noundef !12
  %i.rg = trunc nuw i8 %i.rf to i1
  br i1 %i.rg, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit184.i", %bb.fe
  %i.rh = phi ptr [ %i.ro, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit184.i" ], [ %i.pf, %bb.fe ] ; 2 uses
  %i.ri = phi ptr [ %i.rp, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit184.i" ], [ %i.pg, %bb.fe ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 403 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 1, !range !31, !noalias !603, !noundef !12
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.fu, label %bb.ft

bb.fg:                                            ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !603
  invoke void @_ZN5tokio4time5sleep5sleep17hd300a2297f0df9bfE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ao, i64 noundef 0, i32 noundef 300000000, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !603
  br label %.body177.i

bb.fi:                                            ; preds = %bb.fg
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.rn, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.ao, i64 112, i1 false), !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !603
  br label %bb.fj

bb.fj:                                            ; preds = %bb.k, %bb.fi
  %i.ro = phi ptr [ %i.bi, %bb.k ], [ %i.pf, %bb.fi ] ; 5 uses
  %i.rp = phi ptr [ %i.bh, %bb.k ], [ %i.pg, %bb.fi ] ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.rr = invoke noundef zeroext i1 @"_ZN74_$LT$tokio..time..sleep..Sleep$u20$as$u20$core..future..future..Future$GT$4poll17h6f2a526b31508002E"(ptr noundef nonnull align 8 %i.rq, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.fl unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.rs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17hc658288c8a55198dE"(ptr noundef nonnull align 8 %i.rq) #36
          to label %.body177.i unwind label %bb.bg

bb.fl:                                            ; preds = %bb.fj
  br i1 %i.rr, label %.loopexit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17hc658288c8a55198dE"(ptr noundef nonnull align 8 %i.rq)
          to label %bb.fo unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fc, %bb.eu, %bb.ei, %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.thread269.i", %bb.fm
  %i.rt = phi ptr [ %i.pf, %bb.fc ], [ %i.pf, %bb.eu ], [ %i.pf, %bb.ei ], [ %i.nd, %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.thread269.i" ], [ %i.ro, %bb.fm ]
  %i.ru = phi ptr [ %i.pg, %bb.fc ], [ %i.pg, %bb.eu ], [ %i.pg, %bb.ei ], [ %i.ne, %"_ZN89_$LT$actix_server..join_all..JoinAll$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8b3339439acb7f62E.exit.thread269.i" ], [ %i.rp, %bb.fm ]
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body177.i

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !603
  invoke void @_ZN8actix_rt6system6System11try_current17h7a4d21717786c8a7E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.fp unwind label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.rw = load ptr, ptr %i.an, align 8, !noalias !603, !noundef !12
  %.not.i179.i = icmp eq ptr %i.rw, null
  br i1 %.not.i179.i, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit184.i", label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN8actix_rt6system6System4stop17h5ad10eedd2b8a59aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.an)
          to label %"_ZN4core6option15Option$LT$T$GT$3map17hcbec2bccd531eac5E.exitthread-pre-split.i" unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.rx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit.i" unwind label %bb.bg

"_ZN4core6option15Option$LT$T$GT$3map17hcbec2bccd531eac5E.exitthread-pre-split.i": ; preds = %bb.fq
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit184.i" unwind label %bb.fs

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit.i": ; preds = %bb.fs, %bb.fr
  %.pn33.i = phi { ptr, i32 } [ %i.ry, %bb.fs ], [ %i.rx, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !603
  br label %.body177.i

bb.fs:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$3map17hcbec2bccd531eac5E.exitthread-pre-split.i", %bb.fo
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit.i"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit184.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$3map17hcbec2bccd531eac5E.exitthread-pre-split.i", %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !603
  br label %bb.ff

bb.ft:                                            ; preds = %bb.fu, %bb.ff
  store i8 0, ptr %i.rj, align 1, !noalias !603
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i8 0, ptr %i.rz, align 4, !noalias !603
  br label %bb.gg

bb.fu:                                            ; preds = %bb.ff
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 408
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$tokio..sync..oneshot..Receiver$LT$bool$GT$$GT$$GT$17h5e860ae24538ad69E"(ptr noalias noundef align 8 dereferenceable(24) %i.sa)
          to label %bb.ft unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.cv
  %i.sb = phi ptr [ %i.rh, %bb.fu ], [ %i.bj, %bb.cv ]
  %i.sc = phi ptr [ %i.ri, %bb.fu ], [ %i.bk, %bb.cv ]
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %.body156.i

bb.fw:                                            ; preds = %.body177.i
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 408
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$tokio..sync..oneshot..Receiver$LT$bool$GT$$GT$$GT$17h5e860ae24538ad69E"(ptr noalias noundef align 8 dereferenceable(24) %i.se) #36
          to label %.body156.i unwind label %bb.bg

bb.fx:                                            ; preds = %bb.do
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.sg = load i8, ptr %i.sf, align 4, !range !31, !noalias !603, !noundef !12
  %i.sh = trunc nuw i8 %i.sg to i1
  br i1 %i.sh, label %bb.fy, label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit"

"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit": ; preds = %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i", %bb.fy, %bb.gd, %bb.fx, %bb.do
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i8 0, ptr %i.si, align 4, !noalias !603
  br label %.body.i

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %.val.i25 = load ptr, ptr %i.nc, align 8, !alias.scope !700, !noundef !12 ; 6 uses
  %.not.i.i = icmp eq ptr %.val.i25, null
  br i1 %.not.i.i, label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit", label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.sj = getelementptr inbounds nuw i8, ptr %.val.i25, i64 48
  %i.sk = invoke noundef i64 @_ZN5tokio4sync7oneshot5State12set_complete17hd7c1ac113075f48fE(ptr noundef nonnull align 8 %i.sj)
          to label %.noexc.i26 unwind label %bb.gb, !noalias !700

.noexc.i26:                                       ; preds = %bb.fz
  %i.sl = and i64 %i.sk, 5
  %or.cond.not.i.i.i = icmp eq i64 %i.sl, 1
  br i1 %or.cond.not.i.i.i, label %bb.ga, label %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i"

bb.ga:                                            ; preds = %.noexc.i26
  %i.sm = getelementptr inbounds nuw i8, ptr %.val.i25, i64 32
  %i.sn = load ptr, ptr %i.sm, align 8, !noalias !700, !nonnull !12, !align !13, !noundef !12
end_hunk_1
begin_hunk_2_@_ZN12actix_server6server11ServerInner8run_sync17h5588d64d57df2709E:bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1276
  %i.qi = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1275
  store <2 x i32> %i.qi, ptr %i.an, align 8, !noalias !1276
  %i.qj = invoke fastcc noundef ptr @_ZN3mio4poll8Registry8register17h64b1f7ab5520ea22E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef align 4 dereferenceable(8) %i.an, i64 noundef %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.dd unwind label %bb.de     ; 3 uses

bb.dd:                                            ; preds = %bb.dc
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.di, label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.qk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.qh, ptr %i.qb, align 8, !noalias !1240
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.qd, align 4, !noalias !1276
  %i.ql = call noundef i32 @close(i32 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #24, !noalias !1277 ; 0 uses
  br label %.body6.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  store ptr %i.qh, ptr %i.qb, align 8, !noalias !1240
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.qd, align 4, !noalias !1276
  %i.qm = call noundef i32 @close(i32 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #24, !noalias !1277 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1276
  %i.qn = load ptr, ptr %i.py, align 8, !alias.scope !1278, !noalias !1279, !noundef !12
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.py)
          to label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.dh, !noalias !1280

bb.dh:                                            ; preds = %bb.dg
  %i.qp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.qj, ptr %i.py, align 8, !alias.scope !1273, !noalias !1279
  br label %.body6.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dg, %bb.df
  store ptr %i.qj, ptr %i.py, align 8, !alias.scope !1273, !noalias !1279
  br label %bb.dj

.body6.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dl, %bb.dh, %bb.de
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rn, %bb.dl ], [ %i.qp, %bb.dh ], [ %i.qk, %bb.de ]
  call fastcc void @"_ZN4core3ptr347drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$usize$C$actix_server..socket..MioListener$RP$$GT$$C$actix_server..accept..Accept..new_with_sockets..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17h2f3c92a025a11c7bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ao) #36, !noalias !1281
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$actix_server..accept..ServerSocketInfo$GT$$GT$17hd7cebf4b1d762515E"(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #36, !noalias !1258
  br label %.body.i.i.i.i100.i

bb.di:                                            ; preds = %bb.dd
  %i.qq = load <2 x i32>, ptr %i.an, align 8, !noalias !1276 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1276
  %i.qr = icmp samesign ult i64 %i.qf, 288230376151711744
  call void @llvm.assume(i1 %i.qr)
  %i.qs = load i64, ptr %i.ap, align 8, !range !24, !alias.scope !1271, !noalias !1240, !noundef !12
  %i.qt = icmp eq i64 %i.qf, %i.qs
  br i1 %i.qt, label %bb.dm, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.db
  %.lcssa41.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.db ], [ %i.qh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  store ptr %.lcssa41.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.qb, align 8, !noalias !1240
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.qu = phi ptr [ %.lcssa41.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qh, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %i.qv = ptrtoint ptr %i.qa to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub nuw i64 %i.qv, %i.qw
  %i.qy = lshr exact i64 %i.qx, 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %i.qz = icmp eq ptr %i.qa, %i.qu
  br i1 %i.qz, label %"_ZN4core3ptr80drop_in_place$LT$$u5b$$LP$usize$C$actix_server..socket..MioListener$RP$$u5d$$GT$17hbdfd1c623cc93be4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.dj ] ; 2 uses
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qu, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rb = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.rc = getelementptr i8, ptr %i.ra, i64 12
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.rc, align 4, !alias.scope !1286, !noalias !1287
  %i.rd = call noundef i32 @close(i32 noundef %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #24, !noalias !1288 ; 0 uses
  %i.re = icmp eq i64 %i.rb, %i.qy
  br i1 %i.re, label %"_ZN4core3ptr80drop_in_place$LT$$u5b$$LP$usize$C$actix_server..socket..MioListener$RP$$u5d$$GT$17hbdfd1c623cc93be4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr80drop_in_place$LT$$u5b$$LP$usize$C$actix_server..socket..MioListener$RP$$u5d$$GT$17hbdfd1c623cc93be4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.rg = load i64, ptr %i.rf, align 8, !alias.scope !1289, !noalias !1240, !noundef !12 ; 2 uses
  %i.rh = icmp eq i64 %i.rg, 0
  br i1 %i.rh, label %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.i.i.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$$u5b$$LP$usize$C$actix_server..socket..MioListener$RP$$u5d$$GT$17hbdfd1c623cc93be4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ri = load ptr, ptr %i.ao, align 8, !alias.scope !1289, !noalias !1240, !nonnull !12, !noundef !12
  %i.rj = shl nuw i64 %i.rg, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ri, i64 noundef %i.rj, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1287
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.i.i.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.di
  %i.rk = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.qe, %bb.di ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [32 x i8], ptr %i.rk, i64 %i.qf ; 4 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store ptr null, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1290
  %.sroa.9.8..sroa.59.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store i32 1000000000, ptr %.sroa.9.8..sroa.59.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1290
  %.sroa.1013.8..sroa.59.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  store i64 %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.1013.8..sroa.59.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1290
  store <2 x i32> %i.qq, ptr %i.rl, align 8, !noalias !1290
  %i.rm = add nuw nsw i64 %i.qf, 1                ; 2 uses
  store i64 %i.rm, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1271, !noalias !1240
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qh, %i.qa
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dc

bb.dl:                                            ; preds = %bb.dm
  %i.rn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.qh, ptr %i.qb, align 8, !noalias !1240
  %i.ro = extractelement <2 x i32> %i.qq, i64 1
  %i.rp = call noundef i32 @close(i32 noundef %i.ro) #24, !noalias !1290 ; 0 uses
  br label %.body6.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.di
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha8d761eeec586e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %i.qf, i64 noundef range(i64 1, 0) 1, i64 noundef 32)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.dl

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dm
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1271, !noalias !1240
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdfad2e976097da79E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.cz, %bb.cw
  %.sink.i.i.i.i.i = phi i32 [ %i.pt, %bb.cz ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cw ]
  %.pn.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ps, %bb.cz ], [ %i.pd, %bb.cw ]
  %i.rq = call noundef i32 @close(i32 noundef %.sink.i.i.i.i.i) #24, !noalias !1291 ; 0 uses
  call fastcc void @"_ZN4core3ptr347drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$usize$C$actix_server..socket..MioListener$RP$$GT$$C$actix_server..accept..Accept..new_with_sockets..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17h2f3c92a025a11c7bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aq) #36, !noalias !1292
  br label %.body.i.i.i.i100.i

_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.cy, %"_ZN4core3ptr80drop_in_place$LT$$u5b$$LP$usize$C$actix_server..socket..MioListener$RP$$u5d$$GT$17hbdfd1c623cc93be4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1234
  br label %bb.dq

_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dk, %"_ZN4core3ptr80drop_in_place$LT$$u5b$$LP$usize$C$actix_server..socket..MioListener$RP$$u5d$$GT$17hbdfd1c623cc93be4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1240
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !range !24, !alias.scope !1294, !noalias !1233 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.pre17.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !alias.scope !1294, !noalias !1233 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1234
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  %i.rr = icmp ugt i64 %.pre.i.i.i.i.i.i.i.i, %.pre17.i.i.i.i.i.i.i.i
  br i1 %i.rr, label %bb.dn, label %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.._crit_edge.i.i_crit_edge.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.._crit_edge.i.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.phi.trans.insert.i.i.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.42.0.copyload.pre.i.i.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.phi.trans.insert.i.i.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !1295, !noalias !1233
  br label %bb.dq

bb.dn:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rs, align 8, !alias.scope !1299, !noalias !1233, !nonnull !12, !noundef !12 ; 2 uses
  %i.rt = shl nuw i64 %.pre.i.i.i.i.i.i.i.i, 5    ; 2 uses
  %i.ru = icmp eq i64 %.pre17.i.i.i.i.i.i.i.i, 0
  br i1 %i.ru, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1300
  br label %bb.dq

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dn
  %i.rv = shl nuw i64 %.pre17.i.i.i.i.i.i.i.i, 5  ; 2 uses
  %i.rw = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.val22.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef %i.rv) #24, !noalias !1300 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.rv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #35
          to label %.noexc.i.i.i.i.i.i.i.i103.i unwind label %bb.dp, !noalias !1301

.noexc.i.i.i.i.i.i.i.i103.i:                      ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %bb.do
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$actix_server..accept..ServerSocketInfo$GT$$GT$17hd7cebf4b1d762515E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ar) #36, !noalias !1302
  br label %.body.i.i.i.i100.i

.body.i.i.i.i100.i:                               ; preds = %bb.dp, %.body.i.i.i.i.i.i.i.i.i.i.i.i, %.body6.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ry, %bb.dp ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body6.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.rz = load ptr, ptr %i.as, align 8, !noalias !1232, !noundef !12
  %.not.i.i.i.i.i166 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i.i.i.i166, label %.body.i101.i, label %bb.dt

bb.dq:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.._crit_edge.i.i_crit_edge.i.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.thread.i.i.i.i.i.i.i.i
  %i.sa = phi i64 [ %.pre17.i.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.thread.i.i.i.i.i.i.i.i ], [ %.pre17.i.i.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.._crit_edge.i.i_crit_edge.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.thread.i.i.i.i.i.i.i.i ], [ %.sroa.42.0.copyload.pre.i.i.pre.i.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hac4c0bc5bc71823dE.exit.i.._crit_edge.i.i_crit_edge.i.i.i.i.i.i.i ] ; 6 uses
  %i.sb = icmp ult i64 %i.sa, 288230376151711744
  call void @llvm.assume(i1 %i.sb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1233
  %i.sc = load ptr, ptr %i.as, align 8, !noalias !1232, !noundef !12 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.sc, null
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i) ]
  br i1 %.not.not.i.i.i.i.i, label %bb.eb, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.sd = icmp eq i64 %i.sa, 0
  br i1 %i.sd, label %bb.du, label %.lr.ph.i.i.i.i.i.i.i167

.lr.ph.i.i.i.i.i.i.i167:                          ; preds = %bb.dr, %.lr.ph.i.i.i.i.i.i.i167
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %i.sf, %.lr.ph.i.i.i.i.i.i.i167 ], [ 0, %bb.dr ] ; 2 uses
  %i.se = getelementptr inbounds nuw [32 x i8], ptr %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i
  %i.sf = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.sg = getelementptr i8, ptr %i.se, i64 4
  %.val9.i.i.i.i.i.i.i = load i32, ptr %i.sg, align 4, !alias.scope !1303, !noalias !1304
  %i.sh = call noundef i32 @close(i32 noundef %.val9.i.i.i.i.i.i.i) #24, !noalias !1305 ; 0 uses
  %i.si = icmp eq i64 %i.sf, %i.sa
  br i1 %i.si, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i167

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i167
  %i.sj = shl nuw nsw i64 %i.sa, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.sj, i64 noundef 8) #24, !noalias !1304
  br label %bb.du

bb.ds:                                            ; preds = %bb.dt
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1304
  unreachable

bb.dt:                                            ; preds = %.body.i.i.i.i100.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.as)
          to label %.body.i101.i unwind label %bb.ds, !noalias !1304

bb.du:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1232
  %i.sl = atomicrmw add ptr %i.kw, i64 -1 acq_rel, align 8, !noalias !1306
  %i.sm = icmp eq i64 %i.sl, 1
  br i1 %i.sm, label %bb.dv, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i.i"

bb.dv:                                            ; preds = %bb.du
  %i.sn = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.so = getelementptr inbounds nuw i8, ptr %i.kv, i64 136
  %i.sp = atomicrmw add ptr %i.so, i64 1 acquire, align 8, !noalias !1306
  %i.sq = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he1ab7aef3f46240bE"(ptr noundef nonnull align 8 %i.sn, i64 noundef %i.sp)
          to label %.noexc.i.i.i.i.i unwind label %bb.dw, !noalias !1306

.noexc.i.i.i.i.i:                                 ; preds = %bb.dv
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 784
  %i.ss = atomicrmw or ptr %i.sr, i64 8589934592 release, align 8, !noalias !1306 ; 0 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.kv, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.st)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i.i" unwind label %bb.dw, !noalias !1306

bb.dw:                                            ; preds = %.noexc.i.i.i.i.i, %bb.dv
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sv = atomicrmw add ptr %i.kv, i64 -1 release, align 8, !noalias !1307
  %i.sw = icmp eq i64 %i.sv, 1
  br i1 %i.sw, label %bb.dx, label %.body24.i.i

bb.dx:                                            ; preds = %bb.dw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.at)
          to label %.body24.i.i unwind label %bb.dz, !noalias !1247

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %bb.du
  %i.sx = atomicrmw add ptr %i.kv, i64 -1 release, align 8, !noalias !1308
  %i.sy = icmp eq i64 %i.sx, 1
  br i1 %i.sy, label %bb.dy, label %"_ZN4core3ptr55drop_in_place$LT$actix_server..handle..ServerHandle$GT$17h22a7caa4898d49c3E.exit.i.i"

bb.dy:                                            ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.at)
          to label %"_ZN4core3ptr55drop_in_place$LT$actix_server..handle..ServerHandle$GT$17h22a7caa4898d49c3E.exit.i.i" unwind label %bb.ek, !noalias !1247

bb.dz:                                            ; preds = %bb.dx
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1306
  unreachable

bb.ea:                                            ; preds = %bb.eh
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..boxed..Box$LT$$u5b$actix_server..accept..ServerSocketInfo$u5d$$GT$$GT$17hd6c684e517aa1cf7E"(ptr nonnull %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.sa) #36, !noalias !1247
  br label %.body.i101.i

bb.eb:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.040.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.542.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.645.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.748.i.i)
  store i128 0, ptr %.sroa.040.i.i, align 16, !noalias !1231
  store i128 0, ptr %.sroa.542.i.i, align 16, !noalias !1231
  store i128 0, ptr %.sroa.645.i.i, align 16, !noalias !1231
  store i128 0, ptr %.sroa.748.i.i, align 16, !noalias !1231
  %i.tb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !alias.scope !1230, !noalias !1178, !nonnull !12, !noundef !12 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !1230, !noalias !1178, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %.idx.i.i.i = shl nuw nsw i64 %i.te, 5
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %.idx.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.tg = icmp eq i64 %i.te, 0
  br i1 %i.tg, label %bb.ew, label %.lr.ph.i.i.i102.i

.lr.ph.i.i.i102.i:                                ; preds = %bb.eb, %"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i"
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.th, %"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i" ], [ %i.tc, %bb.eb ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 32 ; 2 uses
  %i.ti = getelementptr i8, ptr %.sroa.0.08.i.i.i.i, i64 24
  %.val3.i.i.i.i = load i64, ptr %i.ti, align 8, !alias.scope !1310, !noalias !1312, !noundef !12 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.tj = icmp ult i64 %.val3.i.i.i.i, 128
  br i1 %i.tj, label %"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i", label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i102.i
  %i.tk = icmp ult i64 %.val3.i.i.i.i, 256
  br i1 %i.tk, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.tl = icmp ult i64 %.val3.i.i.i.i, 384
  br i1 %i.tl, label %bb.eg, label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.tm = add nsw i64 %.val3.i.i.i.i, -128
  br label %"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i"

bb.ef:                                            ; preds = %bb.ed
  %i.tn = icmp ult i64 %.val3.i.i.i.i, 512
  br i1 %i.tn, label %bb.ei, label %bb.eh, !prof !23

bb.eg:                                            ; preds = %bb.ed
  %i.to = add nsw i64 %.val3.i.i.i.i, -256
  br label %"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i"

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1314
  store ptr @36, ptr %i.al, align 8, !noalias !1314
  %i.tp = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.tp, align 8, !noalias !1314
  %i.tq = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr null, ptr %i.tq, align 8, !noalias !1314
  %i.tr = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.tr, align 8, !noalias !1314
  %i.ts = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %i.ts, align 8, !noalias !1314
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #35
          to label %.noexc26.i.i unwind label %bb.ea, !noalias !1247

.noexc26.i.i:                                     ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.ef
  %i.tt = add nsw i64 %.val3.i.i.i.i, -384
  br label %"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i"

"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i": ; preds = %bb.ei, %bb.eg, %bb.ee, %.lr.ph.i.i.i102.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.tt, %bb.ei ], [ %i.tm, %bb.ee ], [ %i.to, %bb.eg ], [ %.val3.i.i.i.i, %.lr.ph.i.i.i102.i ]
  %.sroa.0.0.i.i.i.i.i.sroa.phi.i.i = phi ptr [ %.sroa.748.i.i, %bb.ei ], [ %.sroa.542.i.i, %bb.ee ], [ %.sroa.645.i.i, %bb.eg ], [ %.sroa.040.i.i, %.lr.ph.i.i.i102.i ] ; 2 uses
  %i.tu = zext nneg i64 %.sroa.5.0.i.i.i.i.i.i.i to i128
  %i.tv = shl nuw i128 1, %i.tu
  %i.tw = load i128, ptr %.sroa.0.0.i.i.i.i.i.sroa.phi.i.i, align 16, !alias.scope !1315, !noalias !1231, !noundef !12
  %i.tx = or i128 %i.tw, %i.tv
  store i128 %i.tx, ptr %.sroa.0.0.i.i.i.i.i.sroa.phi.i.i, align 16, !alias.scope !1315, !noalias !1231
  %i.ty = icmp eq ptr %i.th, %i.tf
  br i1 %i.ty, label %_ZN12actix_server12availability12Availability17set_available_all17hd1d60d38dde55938E.exit.loopexit.i.i, label %.lr.ph.i.i.i102.i

_ZN12actix_server12availability12Availability17set_available_all17hd1d60d38dde55938E.exit.loopexit.i.i: ; preds = %"_ZN12actix_server12availability12Availability17set_available_all28_$u7b$$u7b$closure$u7d$$u7d$17h6e7c47a94859c0e3E.exit.i.i.i.i"
  %.sroa.040.i.i.0..sroa.040.i.i.0..sroa.040.i.i.0..sroa.040.i.0..sroa.040.i.0..sroa.040.0..sroa.040.0..sroa.040.0.copyload41.pre.i.i = load i128, ptr %.sroa.040.i.i, align 16, !noalias !1231 ; 2 uses
  %.sroa.542.i.i.0..sroa.542.i.i.0..sroa.542.i.i.0..sroa.542.i.0..sroa.542.i.0..sroa.542.0..sroa.542.0..sroa.542.0.copyload44.pre.i.i = load i128, ptr %.sroa.542.i.i, align 16, !noalias !1231
  %.sroa.645.i.i.0..sroa.645.i.i.0..sroa.645.i.i.0..sroa.645.i.0..sroa.645.i.0..sroa.645.0..sroa.645.0..sroa.645.0.copyload47.pre.i.i = load i128, ptr %.sroa.645.i.i, align 16, !noalias !1231
  %.sroa.748.i.i.0..sroa.748.i.i.0..sroa.748.i.i.0..sroa.748.i.0..sroa.748.i.0..sroa.748.0..sroa.748.0..sroa.748.0.copyload50.pre.i.i = load i128, ptr %.sroa.748.i.i, align 16, !noalias !1231
  %extract.t.i = trunc i128 %.sroa.040.i.i.0..sroa.040.i.i.0..sroa.040.i.i.0..sroa.040.i.0..sroa.040.i.0..sroa.040.0..sroa.040.0..sroa.040.0.copyload41.pre.i.i to i64
  %extract.i = lshr i128 %.sroa.040.i.i.0..sroa.040.i.i.0..sroa.040.i.i.0..sroa.040.i.0..sroa.040.i.0..sroa.040.0..sroa.040.0..sroa.040.0.copyload41.pre.i.i, 64
  %extract.t224.i = trunc nuw i128 %extract.i to i64
  %i.tz = inttoptr i64 %extract.t.i to ptr
  br label %bb.ew

bb.ej:                                            ; preds = %bb.er, %.body24.i.i, %.body.i101.i
  %i.ua = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1247
  unreachable

.body24.i.i:                                      ; preds = %bb.ek, %bb.dx, %bb.dw, %.body.i101.i
  %.pn15.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i101.i ], [ %i.ub, %bb.ek ], [ %i.su, %bb.dx ], [ %i.su, %bb.dw ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$actix_server..worker..WorkerHandleAccept$GT$$GT$17h8b35ed5ef0becdebE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bp) #36
          to label %.body127.i unwind label %bb.ej, !noalias !1316

bb.ek:                                            ; preds = %bb.dy
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

"_ZN4core3ptr55drop_in_place$LT$actix_server..handle..ServerHandle$GT$17h22a7caa4898d49c3E.exit.i.i": ; preds = %bb.dy, %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.uc = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val.i123.i = load ptr, ptr %i.uc, align 8, !alias.scope !1317, !noalias !1318, !nonnull !12, !noundef !12 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN12actix_server6server11ServerInner8run_sync17h5588d64d57df2709E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1329
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  store ptr %i.xm, ptr %i.xw, align 16, !noalias !1329
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.xx, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.bh, i64 160, i1 false), !noalias !1342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !1329
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  store ptr %i.xp, ptr %i.xy, align 8, !noalias !1329
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.ya = load ptr, ptr %i.xz, align 8, !noalias !1331, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ya, null
  br i1 %.not.i.i.i, label %bb.gk, label %bb.gj

bb.gi:                                            ; preds = %bb.gg
  call void @llvm.trap()
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h03b3ed8948d2bfa1E(ptr noundef nonnull align 8 %i.yb)
          to label %bb.gk unwind label %bb.gy, !noalias !1331

bb.gk:                                            ; preds = %bb.gj, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.ad, ptr noundef nonnull align 16 dereferenceable(208) %i.ae, i64 208, i1 false), !noalias !1329
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1343
  %i.yc = call noundef align 16 dereferenceable_or_null(208) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !1343 ; 4 uses
  %i.yd = icmp eq ptr %i.yc, null
  br i1 %i.yd, label %bb.gl, label %bb.go, !prof !18

bb.gl:                                            ; preds = %bb.gk
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 208) #35
          to label %.noexc44.i.i.i unwind label %bb.gm, !noalias !1331

.noexc44.i.i.i:                                   ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gl
  %i.ye = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr171drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_server..accept..Accept..start..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h24d83e005a45bffaE"(ptr noalias noundef nonnull align 16 dereferenceable(208) %i.ad) #36
          to label %.thread36.i.i.i unwind label %bb.gn, !noalias !1331

bb.gn:                                            ; preds = %bb.gm
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1331
  unreachable

bb.go:                                            ; preds = %bb.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.yc, ptr noundef nonnull align 16 dereferenceable(208) %i.ae, i64 208, i1 false), !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1329
  %i.yg = invoke { ptr, i64 } @_ZN3std6thread6Thread4name17he483a2d287964a7cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %bb.gq unwind label %bb.gv, !noalias !1331 ; 2 uses

bb.gp:                                            ; preds = %bb.gq
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %.thread36.i.i.i

bb.gq:                                            ; preds = %bb.go
  %i.yi = extractvalue { ptr, i64 } %i.yg, 0
  %i.yj = extractvalue { ptr, i64 } %i.yg, 1
  %i.yk = invoke { i64, ptr } @_ZN3std3sys6thread4unix6Thread3new17h440582846834072dE(i64 noundef %.sroa.02.0.i.i.i, ptr noalias noundef readonly align 1 captures(address, read_provenance) %i.yi, i64 %i.yj, ptr noundef nonnull align 1 %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @293)
          to label %bb.gr unwind label %bb.gp, !noalias !1331 ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  %i.yl = extractvalue { i64, ptr } %i.yk, 0
  %i.ym = extractvalue { i64, ptr } %i.yk, 1      ; 4 uses
  %i.yn = trunc nuw i64 %i.yl to i1
  br i1 %i.yn, label %bb.gs, label %bb.ic

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1329
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.yo = load ptr, ptr %i.af, align 8, !alias.scope !1346, !noalias !1329, !nonnull !12, !noundef !12
  %i.yp = atomicrmw add ptr %i.yo, i64 -1 release, align 8, !noalias !1347
  %i.yq = icmp eq i64 %i.yp, 1
  br i1 %i.yq, label %bb.gt, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"

bb.gt:                                            ; preds = %bb.gs
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i" unwind label %.thread31.i.i.i, !noalias !1331

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i": ; preds = %bb.gt, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1329
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.yr = load ptr, ptr %i.aj, align 8, !alias.scope !1352, !noalias !1329, !nonnull !12, !noundef !12
  %i.ys = atomicrmw add ptr %i.yr, i64 -1 release, align 8, !noalias !1353
  %i.yt = icmp eq i64 %i.ys, 1
  br i1 %i.yt, label %bb.gu, label %bb.hf

bb.gu:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.hf unwind label %bb.ft, !noalias !1331

bb.gv:                                            ; preds = %bb.go
  %i.yu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17heea3bd4bf211275fE"(ptr nonnull %i.yc, ptr nonnull @293) #36
          to label %.thread36.i.i.i unwind label %bb.gw, !noalias !1331

bb.gw:                                            ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i", %bb.hd, %.noexc51.i.i.i, %bb.ha, %bb.gy, %bb.gx, %bb.gv, %bb.fy
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1331
  unreachable

.thread36.i.i.i:                                  ; preds = %bb.gy, %bb.gv, %bb.gp, %bb.gm
  %.pn39.i.i.i = phi { ptr, i32 } [ %i.ye, %bb.gm ], [ %i.yz, %bb.gy ], [ %i.yh, %bb.gp ], [ %i.yu, %bb.gv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.yw = load ptr, ptr %i.af, align 8, !alias.scope !1356, !noalias !1329, !nonnull !12, !noundef !12
  %i.yx = atomicrmw add ptr %i.yw, i64 -1 release, align 8, !noalias !1357
  %i.yy = icmp eq i64 %i.yx, 1
  br i1 %i.yy, label %bb.gx, label %.thread27.i.i.i

bb.gx:                                            ; preds = %.thread36.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %.thread27.i.i.i unwind label %bb.gw, !noalias !1331

bb.gy:                                            ; preds = %bb.gj
  %i.yz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr171drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_server..accept..Accept..start..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h24d83e005a45bffaE"(ptr noalias noundef nonnull align 16 dereferenceable(208) %i.ae) #36
          to label %.thread36.i.i.i unwind label %bb.gw, !noalias !1331

bb.gz:                                            ; preds = %bb.gd
  %i.za = atomicrmw add ptr %i.xm, i64 -1 release, align 8, !noalias !1358
  %i.zb = icmp eq i64 %i.za, 1
  br i1 %i.zb, label %bb.ha, label %.noexc51.i.i.i

bb.ha:                                            ; preds = %bb.gz
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %.noexc51.i.i.i unwind label %bb.gw, !noalias !1331

.noexc51.i.i.i:                                   ; preds = %bb.ha, %bb.gz
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef align 8 dereferenceable(32) %i.ah) #36
          to label %.thread27.i.i.i unwind label %bb.gw, !noalias !1331

.thread.i.i.i:                                    ; preds = %bb.fy, %.thread27.i.i.i, %bb.ft
  %.pn3315.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.ft ], [ %.pn30.pn.i.i.i, %bb.fy ], [ %.pn30.pn.i.i.i, %.thread27.i.i.i ] ; 2 uses
  %.sroa.020.014.i.i.i = phi i8 [ %.sroa.020.1.ph.i.i.i, %bb.ft ], [ %.sroa.020.2.i.i.i, %bb.fy ], [ %.sroa.020.2.i.i.i, %.thread27.i.i.i ]
  %.sroa.019.013.i.i.i = phi i8 [ %.sroa.020.1.ph.i.i.i, %bb.ft ], [ %.sroa.019.2.i.i.i, %bb.fy ], [ %.sroa.019.2.i.i.i, %.thread27.i.i.i ]
  %i.zc = trunc nuw i8 %.sroa.019.013.i.i.i to i1
  br i1 %i.zc, label %.thread.thread.i.i.i, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i"

.thread16.i.i.i:                                  ; preds = %.thread23.i.i.i, %bb.fh, %bb.fg
  %eh.lpad-body4121.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i109.i, %.thread23.i.i.i ], [ %i.vt, %bb.fh ], [ %i.vt, %bb.fg ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i108.i, label %bb.hb [
    i64 -9223372036854775808, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"
    i64 0, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"
  ]

bb.hb:                                            ; preds = %.thread16.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i108.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1331
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i": ; preds = %bb.hd, %bb.hc, %.thread.thread.i.i.i, %.thread.i.i.i
  %i.zd = trunc nuw i8 %.sroa.020.014.i.i.i to i1
  br i1 %i.zd, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i", label %.critedge.i

.thread.thread.i.i.i:                             ; preds = %.thread.i.i.i
  %.pre57.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !1359, !noalias !1329 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.ze = icmp eq ptr %.pre57.i.i.i, null
  br i1 %i.ze, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i", label %bb.hc

bb.hc:                                            ; preds = %.thread.thread.i.i.i
  %i.zf = atomicrmw add ptr %.pre57.i.i.i, i64 -1 release, align 8, !noalias !1360
  %i.zg = icmp eq i64 %i.zf, 1
  br i1 %i.zg, label %bb.hd, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i"

bb.hd:                                            ; preds = %bb.hc
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbfbb7d711b1d7fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" unwind label %bb.gw, !noalias !1331

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i": ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i", %bb.hb, %.thread16.i.i.i, %.thread16.i.i.i
  %.pn33154973.i.i.i = phi { ptr, i32 } [ %.pn3315.i.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" ], [ %eh.lpad-body4121.i.i.i, %bb.hb ], [ %eh.lpad-body4121.i.i.i, %.thread16.i.i.i ], [ %eh.lpad-body4121.i.i.i, %.thread16.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$actix_server..accept..Accept..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7501753db6de6aa5E"(ptr noalias noundef nonnull readonly align 16 dereferenceable(160) %i.bh) #36
          to label %.critedge.i unwind label %bb.gw, !noalias !1361

bb.he:                                            ; preds = %bb.hj
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.hf:                                            ; preds = %bb.gu, %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ym) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1178
  store ptr %i.ym, ptr %i.bg, align 8, !noalias !1178
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1179
  %i.zi = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1179 ; 3 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.hg, label %bb.hj, !prof !18

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc114.i unwind label %bb.hh, !noalias !1179

.noexc114.i:                                      ; preds = %bb.hg
  unreachable

bb.hh:                                            ; preds = %bb.hg
  %i.zk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg) #36
          to label %.critedge.i unwind label %bb.hi, !noalias !1179

bb.hi:                                            ; preds = %bb.hh
  %i.zl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1179
  unreachable

bb.hj:                                            ; preds = %bb.hf
  store ptr %i.ym, ptr %i.zi, align 8, !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1178
  %i.zm = invoke noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef 40, ptr noundef nonnull align 1 %i.zi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @65)
          to label %.thread205.i unwind label %bb.he, !noalias !1179

.thread205.i:                                     ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1178
  br label %bb.hk

bb.hk:                                            ; preds = %.thread169.i, %bb.ew, %.thread205.i
  %.sroa.9.3 = phi ptr [ %i.zm, %.thread205.i ], [ %.sroa.040.0..sroa.040.0..sroa.040.0.copyload41.i.off0.i, %bb.ew ], [ %i.sc, %.thread169.i ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$actix_server..worker..WorkerHandleServer$GT$$GT$17h5ef5cf5ec6c3e0b4E"(ptr noalias noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.hn unwind label %bb.ci, !noalias !1179

bb.hl:                                            ; preds = %bb.ez, %bb.ey
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..boxed..Box$LT$$u5b$actix_server..accept..ServerSocketInfo$u5d$$GT$$GT$17hd6c684e517aa1cf7E"(ptr nonnull %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.sa) #36, !noalias !1179
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$actix_server..accept..Accept$GT$17h0a0c936412a6f779E"(ptr noalias noundef align 16 dereferenceable(144) %i.bl) #36
          to label %.critedge.i unwind label %bb.hm, !noalias !1179

bb.hm:                                            ; preds = %bb.ia, %bb.hl, %.critedge.i, %bb.ch
  %i.zo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1179
  unreachable

bb.hn:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1178
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.ck
  %.sroa.9.0221 = phi ptr [ %.sroa.9.3, %bb.hn ], [ %.sroa.5.0168.i, %bb.ck ] ; 2 uses
  %.sroa.044.4.i = phi i8 [ 0, %bb.hn ], [ 1, %bb.ck ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.zp = load ptr, ptr %i.bq, align 8, !alias.scope !1365, !noalias !1178, !nonnull !12, !noundef !12
  %i.zq = atomicrmw add ptr %i.zp, i64 -1 release, align 8, !noalias !1366
  %i.zr = icmp eq i64 %i.zq, 1
  br i1 %i.zr, label %bb.hp, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i"

bb.hp:                                            ; preds = %bb.ho
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bq)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i" unwind label %bb.bp, !noalias !1179

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i": ; preds = %bb.hp, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1178
  %i.zs = trunc nuw i8 %.sroa.044.4.i to i1
  br i1 %i.zs, label %.thread211.i, label %bb.hq

.thread211.i:                                     ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i", %bb.bq
  %.sroa.9.1 = phi ptr [ %i.lz, %bb.bq ], [ %.sroa.9.0221, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i" ]
  %i.zt = call noundef i32 @close(i32 noundef %i.lg) #24, !noalias !1179 ; 0 uses
  br label %bb.hr

bb.hq:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1178
  br label %.thread247

bb.hr:                                            ; preds = %.thread211.i, %bb.bg
  %.sroa.9.2 = phi ptr [ %i.le, %bb.bg ], [ %.sroa.9.1, %.thread211.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1178
  %i.zu = atomicrmw add ptr %i.kw, i64 -1 acq_rel, align 8, !noalias !1367
  %i.zv = icmp eq i64 %i.zu, 1
  br i1 %i.zv, label %bb.hs, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i"

bb.hs:                                            ; preds = %bb.hr
  %i.zw = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.zx = getelementptr inbounds nuw i8, ptr %i.kv, i64 136
  %i.zy = atomicrmw add ptr %i.zx, i64 1 acquire, align 8, !noalias !1367
  %i.zz = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he1ab7aef3f46240bE"(ptr noundef nonnull align 8 %i.zw, i64 noundef %i.zy)
          to label %.noexc.i.i.i117.i unwind label %bb.ht, !noalias !1367

.noexc.i.i.i117.i:                                ; preds = %bb.hs
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 784
  %i.aab = atomicrmw or ptr %i.aaa, i64 8589934592 release, align 8, !noalias !1367 ; 0 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.kv, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.aac)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i" unwind label %bb.ht, !noalias !1367

bb.ht:                                            ; preds = %.noexc.i.i.i117.i, %bb.hs
  %i.aad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aae = atomicrmw add ptr %i.kv, i64 -1 release, align 8, !noalias !1368
  %i.aaf = icmp eq i64 %i.aae, 1
  br i1 %i.aaf, label %bb.hu, label %bb.ib

bb.hu:                                            ; preds = %bb.ht
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bt)
          to label %bb.ib unwind label %bb.hw, !noalias !1179

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i": ; preds = %.noexc.i.i.i117.i, %bb.hr
  %i.aag = atomicrmw add ptr %i.kv, i64 -1 release, align 8, !noalias !1369
  %i.aah = icmp eq i64 %i.aag, 1
  br i1 %i.aah, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bt)
          to label %bb.hy unwind label %bb.hx, !noalias !1179

bb.hw:                                            ; preds = %bb.hu
  %i.aai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1367
  unreachable

.body90.thread.i:                                 ; preds = %.body90.i, %bb.bo, %bb.bm
  %.pn79223.i = phi { ptr, i32 } [ %.pn79.i, %.body90.i ], [ %i.lu, %bb.bo ], [ %i.lr, %bb.bm ]
  %i.aaj = call noundef i32 @close(i32 noundef %i.lg) #24, !noalias !1179 ; 0 uses
  br label %bb.ia

bb.hx:                                            ; preds = %bb.hv
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.hv, %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1178
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  %i.aal = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i, %.sroa.4208.0.copyload
  br i1 %i.aal, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i", label %.lr.ph.i.i.i121.i

.lr.ph.i.i.i121.i:                                ; preds = %bb.hy, %.lr.ph.i.i.i121.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aan, %.lr.ph.i.i.i121.i ], [ 0, %bb.hy ] ; 2 uses
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i
  %i.aan = add nuw i64 %.sroa.0.010.i.i.i.i, 1    ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aam, i64 12
  %.val9.i.i.i.i = load i32, ptr %i.aao, align 4, !alias.scope !1370, !noalias !1371
  %i.aap = call noundef i32 @close(i32 noundef %.val9.i.i.i.i) #24, !noalias !1372 ; 0 uses
  %i.aaq = icmp eq i64 %i.aan, %i.jw
  br i1 %i.aaq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i", label %.lr.ph.i.i.i121.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i": ; preds = %.lr.ph.i.i.i121.i, %bb.hy
  %i.aar = icmp eq i64 %i.kr, 0
  br i1 %i.aar, label %.thread247, label %bb.hz

bb.hz:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i"
  %i.aas = and i64 %i.jm, -16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i.i, i64 noundef %i.aas, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1371
  br label %.thread247

bb.ia:                                            ; preds = %.body90.thread.i, %bb.be
  %.pn81.ph.i = phi { ptr, i32 } [ %.pn79223.i, %.body90.thread.i ], [ %i.la, %bb.be ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..handle..ServerHandle$GT$17h22a7caa4898d49c3E"(ptr noalias noundef align 8 dereferenceable(8) %i.bt) #36
          to label %bb.ib unwind label %bb.hm, !noalias !1179

bb.ib:                                            ; preds = %bb.ia, %bb.hx, %bb.hu, %bb.ht
  %.pn83.ph.i = phi { ptr, i32 } [ %.pn81.ph.i, %bb.ia ], [ %i.aak, %bb.hx ], [ %i.aad, %bb.hu ], [ %i.aad, %bb.ht ]
  call fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$actix_server..socket..MioListener$RP$$GT$$GT$17h71bc1b06a7df30d9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ch) #36, !noalias !1373
  br label %.body

.thread247:                                       ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i", %bb.hz, %bb.hq
  %.sroa.9.4.ph = phi ptr [ %.sroa.9.0221, %bb.hq ], [ %.sroa.9.2, %bb.hz ], [ %.sroa.9.2, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.id

bb.ic:                                            ; preds = %bb.gr
  %i.aat = load ptr, ptr %i.aj, align 8, !noalias !1329, !nonnull !12, !noundef !12
  %i.aau = load ptr, ptr %i.af, align 8, !noalias !1329, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1178
end_hunk_3
begin_hunk_4_@_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE:bb.a
  %.not.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i, label %bb.cv, label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.trap()
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h03b3ed8948d2bfa1E(ptr noundef nonnull align 8 %i.lh)
          to label %bb.cv unwind label %bb.dj, !noalias !1751

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %i.aj, i64 120, i1 false), !noalias !1751
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1763
  %i.li = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1763 ; 4 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.cw, label %bb.cz, !prof !18

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #35
          to label %.noexc44.i.i.i unwind label %bb.cx, !noalias !1751

.noexc44.i.i.i:                                   ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %bb.cw
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr255drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_rt..arbiter..Arbiter..with_tokio_rt$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb2de7475548be1d2E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ai) #36
          to label %.thread36.i.i.i unwind label %bb.cy, !noalias !1751

bb.cy:                                            ; preds = %bb.cx
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1751
  unreachable

bb.cz:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.li, ptr noundef nonnull align 8 dereferenceable(120) %i.aj, i64 120, i1 false), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1751
  %i.lm = invoke { ptr, i64 } @_ZN3std6thread6Thread4name17he483a2d287964a7cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao)
          to label %bb.db unwind label %bb.dg, !noalias !1751 ; 2 uses

bb.da:                                            ; preds = %bb.db
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.thread36.i.i.i

bb.db:                                            ; preds = %bb.cz
  %i.lo = extractvalue { ptr, i64 } %i.lm, 0
  %i.lp = extractvalue { ptr, i64 } %i.lm, 1
  %i.lq = invoke { i64, ptr } @_ZN3std3sys6thread4unix6Thread3new17h440582846834072dE(i64 noundef %.sroa.02.0.i.i.i, ptr noalias noundef readonly align 1 captures(address, read_provenance) %i.lo, i64 %i.lp, ptr noundef nonnull align 1 %i.li, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @292)
          to label %bb.dc unwind label %bb.da, !noalias !1751 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.lr = extractvalue { i64, ptr } %i.lq, 0
  %i.ls = extractvalue { i64, ptr } %i.lq, 1      ; 3 uses
  %i.lt = trunc nuw i64 %i.lr to i1
  br i1 %i.lt, label %bb.dd, label %bb.ds

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1751
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  %i.lu = load ptr, ptr %i.ak, align 8, !alias.scope !1766, !noalias !1751, !nonnull !12, !noundef !12
  %i.lv = atomicrmw add ptr %i.lu, i64 -1 release, align 8, !noalias !1767
  %i.lw = icmp eq i64 %i.lv, 1
  br i1 %i.lw, label %bb.de, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i" unwind label %.thread31.i.i.i, !noalias !1751

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i": ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1751
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  %i.lx = load ptr, ptr %i.ao, align 8, !alias.scope !1772, !noalias !1751, !nonnull !12, !noundef !12
  %i.ly = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !noalias !1773
  %i.lz = icmp eq i64 %i.ly, 1
  br i1 %i.lz, label %bb.df, label %bb.dr

bb.df:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.dr unwind label %bb.ce, !noalias !1751

bb.dg:                                            ; preds = %bb.cz
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17heea3bd4bf211275fE"(ptr nonnull %i.li, ptr nonnull @292) #36
          to label %.thread36.i.i.i unwind label %bb.dh, !noalias !1751

bb.dh:                                            ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i", %bb.do, %.noexc51.i.i.i, %bb.dl, %bb.dj, %bb.di, %bb.dg, %bb.cj
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1762
  unreachable

.thread36.i.i.i:                                  ; preds = %bb.dj, %bb.dg, %bb.da, %bb.cx
  %.pn39.i.i.i = phi { ptr, i32 } [ %i.lk, %bb.cx ], [ %i.mf, %bb.dj ], [ %i.ln, %bb.da ], [ %i.ma, %bb.dg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  %i.mc = load ptr, ptr %i.ak, align 8, !alias.scope !1776, !noalias !1751, !nonnull !12, !noundef !12
  %i.md = atomicrmw add ptr %i.mc, i64 -1 release, align 8, !noalias !1777
  %i.me = icmp eq i64 %i.md, 1
  br i1 %i.me, label %bb.di, label %.thread27.i.i.i

bb.di:                                            ; preds = %.thread36.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.thread27.i.i.i unwind label %bb.dh, !noalias !1751

bb.dj:                                            ; preds = %bb.cu
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr255drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_rt..arbiter..Arbiter..with_tokio_rt$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb2de7475548be1d2E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.aj) #36
          to label %.thread36.i.i.i unwind label %bb.dh, !noalias !1751

bb.dk:                                            ; preds = %bb.co
  %i.mg = atomicrmw add ptr %i.ks, i64 -1 release, align 8, !noalias !1778
  %i.mh = icmp eq i64 %i.mg, 1
  br i1 %i.mh, label %bb.dl, label %.noexc51.i.i.i

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc51.i.i.i unwind label %bb.dh, !noalias !1751

.noexc51.i.i.i:                                   ; preds = %bb.dl, %bb.dk
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef align 8 dereferenceable(32) %i.am) #36
          to label %.thread27.i.i.i unwind label %bb.dh, !noalias !1751

.thread.i.i.i:                                    ; preds = %bb.cj, %.thread27.i.i.i, %bb.ce
  %.pn3315.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.ce ], [ %.pn30.pn.i.i.i, %bb.cj ], [ %.pn30.pn.i.i.i, %.thread27.i.i.i ] ; 2 uses
  %.sroa.020.014.i.i.i = phi i8 [ %.sroa.020.1.ph.i.i.i, %bb.ce ], [ %.sroa.020.2.i.i.i, %bb.cj ], [ %.sroa.020.2.i.i.i, %.thread27.i.i.i ]
  %.sroa.019.013.i.i.i = phi i8 [ %.sroa.020.1.ph.i.i.i, %bb.ce ], [ %.sroa.019.2.i.i.i, %bb.cj ], [ %.sroa.019.2.i.i.i, %.thread27.i.i.i ]
  %i.mi = trunc nuw i8 %.sroa.019.013.i.i.i to i1
  br i1 %i.mi, label %.thread.thread.i.i.i, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i"

.thread16.i.i.i:                                  ; preds = %.thread23.i.i.i, %bb.bs, %bb.br
  %eh.lpad-body4121.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.thread23.i.i.i ], [ %i.iz, %bb.bs ], [ %i.iz, %bb.br ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i.i, label %bb.dm [
    i64 -9223372036854775808, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"
    i64 0, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"
  ]

bb.dm:                                            ; preds = %.thread16.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1751
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i": ; preds = %bb.do, %bb.dn, %.thread.thread.i.i.i, %.thread.i.i.i
  %i.mj = trunc nuw i8 %.sroa.020.014.i.i.i to i1
  br i1 %i.mj, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i", label %.body51.i

.thread.thread.i.i.i:                             ; preds = %.thread.i.i.i
  %.pre57.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !1779, !noalias !1751 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  %i.mk = icmp eq ptr %.pre57.i.i.i, null
  br i1 %i.mk, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i", label %bb.dn

bb.dn:                                            ; preds = %.thread.thread.i.i.i
  %i.ml = atomicrmw add ptr %.pre57.i.i.i, i64 -1 release, align 8, !noalias !1780
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.do, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i"

bb.do:                                            ; preds = %bb.dn
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbfbb7d711b1d7fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" unwind label %bb.dh, !noalias !1751

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i": ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i", %bb.dm, %.thread16.i.i.i, %.thread16.i.i.i
  %.pn33154973.i.i.i = phi { ptr, i32 } [ %.pn3315.i.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" ], [ %eh.lpad-body4121.i.i.i, %bb.dm ], [ %eh.lpad-body4121.i.i.i, %.thread16.i.i.i ], [ %eh.lpad-body4121.i.i.i, %.thread16.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$actix_rt..arbiter..Arbiter..with_tokio_rt$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h66ab07caeebeeed7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.at) #36
          to label %.body51.i unwind label %bb.dh, !noalias !1762

bb.dp:                                            ; preds = %bb.bk
  call void @llvm.trap()
  unreachable

.body51.i:                                        ; preds = %bb.gp, %.body64.i, %bb.dq, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i", %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i"
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body65.i, %.body64.i ], [ %i.yx, %bb.gp ], [ %.pn3315.i.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" ], [ %i.mn, %bb.dq ], [ %.pn33154973.i.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ false, %.body64.i ], [ true, %bb.gp ], [ false, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" ], [ false, %bb.dq ], [ false, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$std..sync..mpsc..Receiver$LT$$LP$$RP$$GT$$GT$17h3c0afc5496eece84E"(i64 1, ptr nonnull %i.hw) #36
          to label %bb.gl unwind label %bb.go, !noalias !1741

bb.dq:                                            ; preds = %bb.dr
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body51.i

bb.dr:                                            ; preds = %bb.df, %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1750
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1741
  invoke fastcc void @"_ZN8actix_rt7arbiter7Arbiter13with_tokio_rt28_$u7b$$u7b$closure$u7d$$u7d$17h08398c880d527a82E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc, ptr noundef nonnull %i.ls)
          to label %.unreachable.i unwind label %bb.dq, !noalias !1741

bb.ds:                                            ; preds = %bb.dc
  %i.mo = ptrtoint ptr %i.ls to i64
  %i.mp = load ptr, ptr %i.ao, align 8, !noalias !1751, !nonnull !12, !noundef !12
  %i.mq = load ptr, ptr %i.ak, align 8, !noalias !1751, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1741
  store ptr %i.mp, ptr %i.ax, align 8, !noalias !1741
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.mq, ptr %.sroa.4100.0..sroa_idx.i, align 8, !noalias !1741
  %.sroa.5101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.mo, ptr %.sroa.5101.0..sroa_idx.i, align 8, !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1741
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.mr, align 8, !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1741
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.mu = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.mw = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i5.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i7.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false), !noalias !1741
  br label %bb.dt

.unreachable.i:                                   ; preds = %bb.dr
  unreachable

bb.dt:                                            ; preds = %_ZN3std4sync4mpmc7context7Context4with17he2134ef1d8794ed6E.exit.i.i.i, %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %bb.dt
  %.sroa.0.034.i.i.i.i = phi i32 [ 0, %bb.dt ], [ %.sroa.0.034.i.i.i.i.be, %.backedge.i.i.i.i.backedge ] ; 16 uses
  %i.my = load atomic i64, ptr %i.hw acquire, align 128, !noalias !1782 ; 5 uses
  %i.mz = load atomic ptr, ptr %i.mu acquire, align 8, !noalias !1782 ; 35 uses
  %i.na = lshr i64 %i.my, 1                       ; 2 uses
  %i.nb = and i64 %i.na, 31                       ; 6 uses
  %i.nc = icmp eq i64 %i.nb, 31
  br i1 %i.nc, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.backedge.i.i.i.i
  %i.nd = add i64 %i.my, 2                        ; 2 uses
  %i.ne = and i64 %i.my, 1
  %i.nf = icmp eq i64 %i.ne, 0
  br i1 %i.nf, label %bb.dy, label %bb.eb

bb.dv:                                            ; preds = %.backedge.i.i.i.i
  %i.ng = icmp ult i32 %.sroa.0.034.i.i.i.i, 7
  br i1 %i.ng, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1741

bb.dx:                                            ; preds = %bb.dv
  %.not.i.i.i25.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i.i.i25.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i, label %.lr.ph.i.i.i26.i.i.preheader

.lr.ph.i.i.i26.i.i.preheader:                     ; preds = %bb.dx
  %i.nh = mul nuw i32 %.sroa.0.034.i.i.i.i, %.sroa.0.034.i.i.i.i ; 2 uses
  %xtraiter611 = and i32 %i.nh, 7                 ; 3 uses
  %i.ni = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.ni, label %.lr.ph.i.i.i26.i.i.epil.preheader, label %.lr.ph.i.i.i26.i.i.preheader.new

.lr.ph.i.i.i26.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i26.i.i.preheader
  %unroll_iter615 = and i32 %i.nh, 56
  br label %.lr.ph.i.i.i26.i.i

.lr.ph.i.i.i26.i.i:                               ; preds = %.lr.ph.i.i.i26.i.i, %.lr.ph.i.i.i26.i.i.preheader.new
  %niter616 = phi i32 [ 0, %.lr.ph.i.i.i26.i.i.preheader.new ], [ %niter616.next.7, %.lr.ph.i.i.i26.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  %niter616.next.7 = add i32 %niter616, 8         ; 2 uses
  %niter616.ncmp.7 = icmp eq i32 %niter616.next.7, %unroll_iter615
  br i1 %niter616.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i26.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i26.i.i
  %lcmp.mod613.not = icmp eq i32 %xtraiter611, 0
  br i1 %lcmp.mod613.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i, label %.lr.ph.i.i.i26.i.i.epil.preheader

.lr.ph.i.i.i26.i.i.epil.preheader:                ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i26.i.i.preheader
  %lcmp.mod614 = icmp ne i32 %xtraiter611, 0
  call void @llvm.assume(i1 %lcmp.mod614)
  br label %.lr.ph.i.i.i26.i.i.epil

.lr.ph.i.i.i26.i.i.epil:                          ; preds = %.lr.ph.i.i.i26.i.i.epil, %.lr.ph.i.i.i26.i.i.epil.preheader
  %epil.iter612 = phi i32 [ 0, %.lr.ph.i.i.i26.i.i.epil.preheader ], [ %epil.iter612.next, %.lr.ph.i.i.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  %epil.iter612.next = add i32 %epil.iter612, 1   ; 2 uses
  %epil.iter612.cmp.not = icmp eq i32 %epil.iter612.next, %xtraiter611
  br i1 %epil.iter612.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i, label %.lr.ph.i.i.i26.i.i.epil, !llvm.loop !1550

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i26.i.i.epil, %bb.dx, %bb.dw
  %i.nj = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

bb.dy:                                            ; preds = %bb.du
  fence seq_cst
  %i.nk = load atomic i64, ptr %i.mv monotonic, align 128, !noalias !1782 ; 3 uses
  %i.nl = lshr i64 %i.nk, 1
  %i.nm = icmp eq i64 %i.na, %i.nl
  br i1 %i.nm, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.not.unshifted.i.i.i.i = xor i64 %i.nk, %i.my
  %.not.i.i.i55.i = icmp ugt i64 %.not.unshifted.i.i.i.i, 63
  %i.nn = zext i1 %.not.i.i.i55.i to i64
  %spec.select.i.i.i.i = or disjoint i64 %i.nd, %i.nn
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.no = and i64 %i.nk, 1
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h3e2c0a52d7f0dde9E.exit.i.i.i", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17h8614797774dd07bdE.exit.i.i"

bb.eb:                                            ; preds = %bb.dz, %bb.du
  %.sroa.09.0.i.i9.i.i = phi i64 [ %i.nd, %bb.du ], [ %spec.select.i.i.i.i, %bb.dz ] ; 2 uses
  %i.nq = icmp eq ptr %i.mz, null
  br i1 %i.nq, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.nr = icmp ult i32 %.sroa.0.034.i.i.i.i, 7
  br i1 %i.nr, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1741

bb.ee:                                            ; preds = %bb.ec
  %.not.i18.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i18.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.preheader:                     ; preds = %bb.ee
  %i.ns = mul nuw i32 %.sroa.0.034.i.i.i.i, %.sroa.0.034.i.i.i.i ; 2 uses
  %xtraiter605 = and i32 %i.ns, 7                 ; 3 uses
  %i.nt = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.nt, label %.lr.ph.i19.i.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.i.preheader.new

.lr.ph.i19.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i19.i.i.i.i.preheader
  %unroll_iter609 = and i32 %i.ns, 56
  br label %.lr.ph.i19.i.i.i.i

.lr.ph.i19.i.i.i.i:                               ; preds = %.lr.ph.i19.i.i.i.i, %.lr.ph.i19.i.i.i.i.preheader.new
  %niter610 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.preheader.new ], [ %niter610.next.7, %.lr.ph.i19.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  %niter610.next.7 = add i32 %niter610, 8         ; 2 uses
  %niter610.ncmp.7 = icmp eq i32 %niter610.next.7, %unroll_iter609
  br i1 %niter610.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i.i
  %lcmp.mod607.not = icmp eq i32 %xtraiter605, 0
  br i1 %lcmp.mod607.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.i.epil.preheader:                ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.preheader
  %lcmp.mod608 = icmp ne i32 %xtraiter605, 0
  call void @llvm.assume(i1 %lcmp.mod608)
  br label %.lr.ph.i19.i.i.i.i.epil

.lr.ph.i19.i.i.i.i.epil:                          ; preds = %.lr.ph.i19.i.i.i.i.epil, %.lr.ph.i19.i.i.i.i.epil.preheader
  %epil.iter606 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.epil.preheader ], [ %epil.iter606.next, %.lr.ph.i19.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1782
  %epil.iter606.next = add i32 %epil.iter606, 1   ; 2 uses
  %epil.iter606.cmp.not = icmp eq i32 %epil.iter606.next, %xtraiter605
  br i1 %epil.iter606.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.epil, !llvm.loop !1551

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.epil, %bb.ee, %bb.ed
  %i.nu = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

bb.ef:                                            ; preds = %bb.eb
end_hunk_4
begin_hunk_5_@_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE:bb.a
  %i.aco = atomicrmw add ptr %i.acj, i64 1 monotonic, align 8, !noalias !1802
  %i.acp = icmp slt i64 %i.aco, 0
  br i1 %i.acp, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.acq = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.acq, ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i64 128, i1 false), !noalias !1813
  %i.acr = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.acg, ptr %i.acr, align 8, !noalias !1802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !1802
  %i.acs = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.acj, ptr %i.acs, align 8, !noalias !1802
  %i.act = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.acu = load ptr, ptr %i.act, align 8, !noalias !1802, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.acu, null
  br i1 %.not.i.i, label %bb.im, label %bb.il

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.trap()
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h03b3ed8948d2bfa1E(ptr noundef nonnull align 8 %i.acv)
          to label %bb.im unwind label %bb.ja, !noalias !1802

bb.im:                                            ; preds = %bb.il, %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.o, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !1802
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1814
  %i.acw = call noundef align 8 dereferenceable_or_null(176) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 176, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1814 ; 4 uses
  %i.acx = icmp eq ptr %i.acw, null
  br i1 %i.acx, label %bb.in, label %bb.iq, !prof !18

bb.in:                                            ; preds = %bb.im
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 176) #35
          to label %.noexc44.i.i unwind label %bb.io, !noalias !1802

.noexc44.i.i:                                     ; preds = %bb.in
  unreachable

bb.io:                                            ; preds = %bb.in
  %i.acy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr177drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf13649aaf31e161E"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.o) #36
          to label %.thread36.i.i unwind label %bb.ip, !noalias !1802

bb.ip:                                            ; preds = %bb.io
  %i.acz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1802
  unreachable

bb.iq:                                            ; preds = %bb.im
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.acw, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1802
  %i.ada = invoke { ptr, i64 } @_ZN3std6thread6Thread4name17he483a2d287964a7cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.is unwind label %bb.ix, !noalias !1802 ; 2 uses

bb.ir:                                            ; preds = %bb.is
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %.thread36.i.i

bb.is:                                            ; preds = %bb.iq
  %i.adc = extractvalue { ptr, i64 } %i.ada, 0
  %i.add = extractvalue { ptr, i64 } %i.ada, 1
  %i.ade = invoke { i64, ptr } @_ZN3std3sys6thread4unix6Thread3new17h440582846834072dE(i64 noundef %.sroa.02.0.i.i, ptr noalias noundef readonly align 1 captures(address, read_provenance) %i.adc, i64 %i.add, ptr noundef nonnull align 1 %i.acw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @294)
          to label %bb.it unwind label %bb.ir, !noalias !1802 ; 2 uses

bb.it:                                            ; preds = %bb.is
  %i.adf = extractvalue { i64, ptr } %i.ade, 0
  %i.adg = extractvalue { i64, ptr } %i.ade, 1    ; 3 uses
  %i.adh = trunc nuw i64 %i.adf to i1
  br i1 %i.adh, label %bb.iu, label %bb.jk

bb.iu:                                            ; preds = %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1802
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %i.adi = load ptr, ptr %i.q, align 8, !alias.scope !1817, !noalias !1802, !nonnull !12, !noundef !12
  %i.adj = atomicrmw add ptr %i.adi, i64 -1 release, align 8, !noalias !1818
  %i.adk = icmp eq i64 %i.adj, 1
  br i1 %i.adk, label %bb.iv, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i"

bb.iv:                                            ; preds = %bb.iu
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i" unwind label %.thread31.i.i, !noalias !1802

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i": ; preds = %bb.iv, %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1802
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.adl = load ptr, ptr %i.u, align 8, !alias.scope !1823, !noalias !1802, !nonnull !12, !noundef !12
  %i.adm = atomicrmw add ptr %i.adl, i64 -1 release, align 8, !noalias !1824
  %i.adn = icmp eq i64 %i.adm, 1
  br i1 %i.adn, label %bb.iw, label %bb.jg

bb.iw:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.jg unwind label %bb.hv, !noalias !1802

bb.ix:                                            ; preds = %bb.iq
  %i.ado = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17heea3bd4bf211275fE"(ptr nonnull %i.acw, ptr nonnull @294) #36
          to label %.thread36.i.i unwind label %bb.iy, !noalias !1802

bb.iy:                                            ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i", %bb.jf, %.noexc51.i.i, %bb.jc, %bb.ja, %bb.iz, %bb.ix, %bb.ia
  %i.adp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1813
  unreachable

.thread36.i.i:                                    ; preds = %bb.ja, %bb.ix, %bb.ir, %bb.io
  %.pn39.i.i = phi { ptr, i32 } [ %i.acy, %bb.io ], [ %i.adt, %bb.ja ], [ %i.adb, %bb.ir ], [ %i.ado, %bb.ix ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %i.adq = load ptr, ptr %i.q, align 8, !alias.scope !1827, !noalias !1802, !nonnull !12, !noundef !12
  %i.adr = atomicrmw add ptr %i.adq, i64 -1 release, align 8, !noalias !1828
  %i.ads = icmp eq i64 %i.adr, 1
  br i1 %i.ads, label %bb.iz, label %.thread27.i.i

bb.iz:                                            ; preds = %.thread36.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.thread27.i.i unwind label %bb.iy, !noalias !1802

bb.ja:                                            ; preds = %bb.il
  %i.adt = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr177drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf13649aaf31e161E"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.p) #36
          to label %.thread36.i.i unwind label %bb.iy, !noalias !1802

bb.jb:                                            ; preds = %bb.if
  %i.adu = atomicrmw add ptr %i.acg, i64 -1 release, align 8, !noalias !1829
  %i.adv = icmp eq i64 %i.adu, 1
  br i1 %i.adv, label %bb.jc, label %.noexc51.i.i

bb.jc:                                            ; preds = %bb.jb
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc51.i.i unwind label %bb.iy, !noalias !1802

.noexc51.i.i:                                     ; preds = %bb.jc, %bb.jb
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef align 8 dereferenceable(32) %i.s) #36
          to label %.thread27.i.i unwind label %bb.iy, !noalias !1802

.thread.i.i:                                      ; preds = %bb.ia, %.thread27.i.i, %bb.hv
  %.pn3315.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.hv ], [ %.pn30.pn.i.i, %bb.ia ], [ %.pn30.pn.i.i, %.thread27.i.i ] ; 2 uses
  %.sroa.020.014.i.i = phi i8 [ %.sroa.020.1.ph.i.i, %bb.hv ], [ %.sroa.020.2.i.i, %bb.ia ], [ %.sroa.020.2.i.i, %.thread27.i.i ]
  %.sroa.019.013.i.i = phi i8 [ %.sroa.020.1.ph.i.i, %bb.hv ], [ %.sroa.019.2.i.i, %bb.ia ], [ %.sroa.019.2.i.i, %.thread27.i.i ]
  %i.adw = trunc nuw i8 %.sroa.019.013.i.i to i1
  br i1 %i.adw, label %.thread.thread.i.i, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i"

.thread16.i.i:                                    ; preds = %.thread23.i.i, %bb.hj, %bb.hi
  %eh.lpad-body4121.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread23.i.i ], [ %i.aan, %bb.hj ], [ %i.aan, %bb.hi ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.jd [
    i64 -9223372036854775808, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i"
    i64 0, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i"
  ]

bb.jd:                                            ; preds = %.thread16.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1802
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i"

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i": ; preds = %bb.jf, %bb.je, %.thread.thread.i.i, %.thread.i.i
  %i.adx = trunc nuw i8 %.sroa.020.014.i.i to i1
  br i1 %i.adx, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i", label %.body177

.thread.thread.i.i:                               ; preds = %.thread.i.i
  %.pre57.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1830, !noalias !1802 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.ady = icmp eq ptr %.pre57.i.i, null
  br i1 %i.ady, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i", label %bb.je

bb.je:                                            ; preds = %.thread.thread.i.i
  %i.adz = atomicrmw add ptr %.pre57.i.i, i64 -1 release, align 8, !noalias !1831
  %i.aea = icmp eq i64 %i.adz, 1
  br i1 %i.aea, label %bb.jf, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i"

bb.jf:                                            ; preds = %bb.je
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbfbb7d711b1d7fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i" unwind label %bb.iy, !noalias !1802

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i": ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i", %bb.jd, %.thread16.i.i, %.thread16.i.i
  %.pn33154973.i.i = phi { ptr, i32 } [ %.pn3315.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i" ], [ %eh.lpad-body4121.i.i, %bb.jd ], [ %eh.lpad-body4121.i.i, %.thread16.i.i ], [ %eh.lpad-body4121.i.i, %.thread16.i.i ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.bp) #36
          to label %.body177 unwind label %bb.iy, !noalias !1813

bb.jg:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i", %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1801
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adg) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1832
  store ptr %i.adg, ptr %i.k, align 8, !noalias !1832
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @168, i64 noundef 33, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #35
          to label %bb.ji unwind label %bb.jh, !noalias !1832

bb.jh:                                            ; preds = %bb.jg
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #36
          to label %.body177 unwind label %bb.jj, !noalias !1832

bb.ji:                                            ; preds = %bb.jg
  unreachable

bb.jj:                                            ; preds = %bb.jh
  %i.aec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1832
  unreachable

bb.jk:                                            ; preds = %bb.it
  %i.aed = ptrtoint ptr %i.adg to i64
  %i.aee = load ptr, ptr %i.u, align 8, !noalias !1802, !nonnull !12, !noundef !12
  %i.aef = load ptr, ptr %i.q, align 8, !noalias !1802, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  store ptr %i.aee, ptr %i.bu, align 8, !alias.scope !1832
  %.sroa.6.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.aef, ptr %.sroa.6.0..sroa_idx214, align 8, !alias.scope !1832
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.aed, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1832
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h4e8f740e5a31ac37E"(ptr noalias noundef align 8 dereferenceable(24) %i.bu)
          to label %bb.jl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.jm

bb.jm:                                            ; preds = %bb.kg, %bb.jl
  %i.aeg = load i64, ptr %i.gw, align 8, !range !39, !noundef !12 ; 2 uses
  %i.aeh = icmp ne i64 %i.aeg, 2
  %or.cond = and i1 %.not75, %i.aeh
  br i1 %or.cond, label %bb.lm, label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"

bb.jn:                                            ; preds = %bb.hb, %bb.gw
  %i.aei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE"(ptr noalias noundef align 8 dereferenceable(16) %i.bv) #36
          to label %.body177 unwind label %bb.jo

bb.jo:                                            ; preds = %bb.mk, %bb.mc, %.body177, %bb.lz, %.noexc205, %bb.mj, %.thread235, %bb.mh, %bb.mg, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit", %bb.ma, %bb.ly, %.body160, %.body144, %bb.jn
  %i.aej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

.body144:                                         ; preds = %bb.jp, %bb.gu, %bb.av, %.body160
  %.pn78 = phi { ptr, i32 } [ %eh.lpad-body161, %.body160 ], [ %i.aek, %bb.jp ], [ %.pn25.pn.pn.i, %bb.av ], [ %.pn29105.i, %bb.gu ]
  %.sroa.021.4 = phi i1 [ false, %.body160 ], [ %.sroa.021.5, %bb.jp ], [ true, %bb.av ], [ true, %bb.gu ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.bo) #36
          to label %bb.gy unwind label %bb.jo

bb.jp:                                            ; preds = %bb.au, %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit
  %.sroa.021.5 = phi i1 [ false, %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit ], [ true, %bb.au ]
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.jq:                                            ; preds = %bb.gn, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.ael = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ael, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 0, ptr %i.bm, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.gp, ptr %i.aem, align 8
  %i.aen = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store ptr %i.fa, ptr %i.aen, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store ptr %i.fl, ptr %i.aeo, align 8
  %i.aep = load i64, ptr %i.cr, align 8, !noundef !12
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store i64 %i.aep, ptr %i.aeq, align 8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  store ptr %3, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  store ptr %i.fu, ptr %i.aes, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  store i64 %i.ft, ptr %i.aet, align 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aev = load i64, ptr %i.aeu, align 8, !noundef !12
  %i.aew = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aex = load i32, ptr %i.aew, align 8, !range !43, !noundef !12
  %i.aey = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 %i.aev, ptr %i.aey, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.aex, ptr %i.aez, align 8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  store i8 0, ptr %i.afa, align 8
  %.val99 = load ptr, ptr %i.bn, align 8          ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1835
  %i.afb = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1835 ; 8 uses
  %i.afc = icmp eq ptr %i.afb, null
  br i1 %i.afc, label %bb.jr, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i", !prof !18

bb.jr:                                            ; preds = %bb.jq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #35
          to label %.noexc.i159 unwind label %bb.js, !noalias !1836

.noexc.i159:                                      ; preds = %bb.jr
  unreachable

bb.js:                                            ; preds = %bb.jr
  %i.afd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h371f559d1343384aE"(ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bm) #36
          to label %.body160 unwind label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.afe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1836
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i": ; preds = %bb.jq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.afb, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bm, i64 112, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  %i.aff = getelementptr inbounds nuw i8, ptr %.val99, i64 448 ; 2 uses
  %i.afg = load atomic i64, ptr %i.aff acquire, align 8, !noalias !1837
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jx, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i"
  %.sroa.01.0.i.i.i155 = phi i64 [ %i.afg, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i" ], [ %.sroa.01.0.i.i.i.i157, %bb.jx ] ; 4 uses
  %i.afh = and i64 %.sroa.01.0.i.i.i155, 1
  %.not.i.i.i156 = icmp eq i64 %i.afh, 0
  br i1 %.not.i.i.i156, label %bb.jv, label %bb.kd

bb.jv:                                            ; preds = %bb.ju
  %i.afi = icmp eq i64 %.sroa.01.0.i.i.i155, -2
  br i1 %i.afi, label %bb.jw, label %bb.jx, !prof !18

bb.jw:                                            ; preds = %bb.jv
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #35
          to label %.noexc.i.i158 unwind label %bb.kb, !noalias !1838

.noexc.i.i158:                                    ; preds = %bb.jw
  unreachable

bb.jx:                                            ; preds = %bb.jv
  %i.afj = add nuw i64 %.sroa.01.0.i.i.i155, 2
  %i.afk = cmpxchg ptr %i.aff, i64 %.sroa.01.0.i.i.i155, i64 %i.afj acq_rel acquire, align 8, !noalias !1837 ; 2 uses
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.afk, 1
  %.sroa.01.0.i.i.i.i157 = extractvalue { i64, i1 } %i.afk, 0
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.jy, label %bb.ju

bb.jy:                                            ; preds = %bb.jx
  %i.afl = getelementptr inbounds nuw i8, ptr %.val99, i64 128
  %i.afm = getelementptr inbounds nuw i8, ptr %.val99, i64 136
  %i.afn = atomicrmw add ptr %i.afm, i64 1 acquire, align 8, !noalias !1838 ; 2 uses
  %i.afo = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he9129a4524166ed1E"(ptr noundef nonnull align 8 %i.afl, i64 noundef %i.afn)
          to label %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i" unwind label %bb.jz, !noalias !1838 ; 2 uses

bb.jz:                                            ; preds = %bb.jy
  %i.afp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_rt..arbiter..ArbiterCommand$GT$17h586ba589ab90a8b9E"(ptr nonnull align 1 %i.afb, ptr nonnull @456) #36
          to label %.body160 unwind label %bb.ka, !noalias !1838

bb.ka:                                            ; preds = %bb.jz
  %i.afq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1838
  unreachable

"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i": ; preds = %bb.jy
  %i.afr = and i64 %i.afn, 31                     ; 2 uses
  %i.afs = getelementptr inbounds nuw [16 x i8], ptr %i.afo, i64 %i.afr ; 2 uses
  store ptr %i.afb, ptr %i.afs, align 8, !noalias !1838
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  store ptr @456, ptr %i.aft, align 8, !noalias !1838
  %i.afu = shl nuw nsw i64 1, %i.afr
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 528
  %i.afw = atomicrmw or ptr %i.afv, i64 %i.afu release, align 8, !noalias !1838 ; 0 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.val99, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.afx)
          to label %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit unwind label %bb.ke

bb.kb:                                            ; preds = %bb.jw
  %i.afy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_rt..arbiter..ArbiterCommand$GT$17h586ba589ab90a8b9E"(ptr nonnull align 1 %i.afb, ptr nonnull @456) #36
          to label %.body160 unwind label %bb.kc, !noalias !1838

bb.kc:                                            ; preds = %bb.kb
  %i.afz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1838
  unreachable

bb.kd:                                            ; preds = %bb.ju
  invoke void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h371f559d1343384aE"(ptr noundef nonnull %i.afb)
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" unwind label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i", !noalias !1839

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.kd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afb, i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1839
  br label %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i": ; preds = %bb.kd
  %i.aga = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afb, i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1839
  br label %.body160

bb.ke:                                            ; preds = %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i"
  %i.agb = landingpad { ptr, i32 }
          cleanup
  br label %.body160

.body160:                                         ; preds = %bb.js, %bb.jz, %bb.kb, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i", %bb.ke
  %eh.lpad-body161 = phi { ptr, i32 } [ %i.agb, %bb.ke ], [ %i.aga, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i" ], [ %i.afd, %bb.js ], [ %i.afp, %bb.jz ], [ %i.afy, %bb.kb ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$actix_rt..arbiter..Arbiter$GT$17h339359839babd5ceE"(ptr noalias noundef align 8 dereferenceable(32) %i.bn) #36
          to label %.body144 unwind label %bb.jo

_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$actix_rt..arbiter..Arbiter$GT$17h339359839babd5ceE"(ptr noalias noundef align 8 dereferenceable(32) %i.bn)
          to label %bb.kf unwind label %bb.jp

bb.kf:                                            ; preds = %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.kg unwind label %bb.gz

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.jm

"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit": ; preds = %bb.lp, %bb.ln, %bb.lo, %bb.lq, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.agc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.agc, align 8, !noalias !1840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1840
  %i.agd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.age = getelementptr inbounds nuw i8, ptr %i.gp, i64 400 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.gp, i64 392 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.gp, i64 408
  %i.agh = getelementptr inbounds nuw i8, ptr %i.gp, i64 416
  %i.agi = getelementptr inbounds nuw i8, ptr %i.gp, i64 128
  %i.agj = getelementptr inbounds nuw i8, ptr %i.gp, i64 384
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.agk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !1840
  br label %bb.kh

bb.kh:                                            ; preds = %_ZN3std4sync4mpmc7context7Context4with17hdf2b7c5400951949E.exit.i.i, %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge, %bb.kh
  %.sroa.0.028.i.i.i = phi i32 [ 0, %bb.kh ], [ %.sroa.0.028.i.i.i.be, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge ] ; 14 uses
  %i.agm = load atomic i64, ptr %i.gp monotonic, align 128, !noalias !1842 ; 7 uses
  %i.agn = load i64, ptr %i.age, align 16, !noalias !1842, !noundef !12
  %i.ago = add i64 %i.agn, -1
  %i.agp = and i64 %i.ago, %i.agm                 ; 3 uses
  %i.agq = load i64, ptr %i.agf, align 8, !noalias !1842, !noundef !12
  %i.agr = sub i64 0, %i.agq
  %i.ags = and i64 %i.agm, %i.agr
  %i.agt = load ptr, ptr %i.agg, align 8, !noalias !1842, !nonnull !12, !align !13, !noundef !12
  %i.agu = load i64, ptr %i.agh, align 32, !noalias !1842, !noundef !12
  %i.agv = icmp ult i64 %i.agp, %i.agu
  call void @llvm.assume(i1 %i.agv)
  %i.agw = getelementptr inbounds nuw [16 x i8], ptr %i.agt, i64 %i.agp ; 4 uses
  %i.agx = load atomic i64, ptr %i.agw acquire, align 8, !noalias !1842 ; 3 uses
  %i.agy = add i64 %i.agm, 1
  %.not = icmp eq i64 %i.agy, %i.agx
  br i1 %.not, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i
  %i.agz = icmp eq i64 %i.agx, %i.agm
  br i1 %i.agz, label %bb.kn, label %bb.kk

bb.kj:                                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i
  %i.aha = add nuw i64 %i.agp, 1
  %i.ahb = load i64, ptr %i.agj, align 128, !noalias !1842, !noundef !12
  %i.ahc = icmp ult i64 %i.aha, %i.ahb
  br i1 %i.ahc, label %bb.kr, label %bb.kq

bb.kk:                                            ; preds = %bb.ki
  %i.ahd = icmp ult i32 %.sroa.0.028.i.i.i, 7
  br i1 %i.ahd, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.km:                                            ; preds = %bb.kk
  %.not.i.i.i.i173 = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i.i.i.i173, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.km
  %i.ahe = mul nuw i32 %.sroa.0.028.i.i.i, %.sroa.0.028.i.i.i ; 2 uses
  %xtraiter629 = and i32 %i.ahe, 7                ; 3 uses
  %i.ahf = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ahf, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter633 = and i32 %i.ahe, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter634 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter634.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  call void @llvm.x86.sse2.pause() #24, !noalias !1842
  %niter634.next.7 = add i32 %niter634, 8         ; 2 uses
end_hunk_5
begin_hunk_6_@"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$17hb2d649d431f0ba3aE":bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load i64, ptr %i.ci, align 8, !noalias !1917, !noundef !12
  %i.cn = add i64 %i.cm, -1                       ; 2 uses
  store i64 %i.cn, ptr %i.ci, align 8, !noalias !1917
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.am, label %.thread5.sink.split.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread5.sink.split.i.i.i unwind label %bb.ap, !noalias !1907

bb.an:                                            ; preds = %bb.ak
  %i.cp = load i64, ptr %i.ci, align 8, !noalias !1918, !noundef !12
  %i.cq = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.cq, ptr %i.ci, align 8, !noalias !1918
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ao, label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i" unwind label %.thread.i.i.i, !noalias !1907

"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i": ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1909
  br label %bb.bd

bb.ap:                                            ; preds = %bb.am
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1907
  unreachable

.thread.thread.i.i.i:                             ; preds = %.invoke.i.i.i, %bb.av, %bb.ar, %bb.e, %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.aq:                                            ; preds = %bb.f
  store i64 %i.al, ptr %i.ai, align 8, !noalias !1907
  br label %.thread11.i.i.i

.thread11.i.i.i:                                  ; preds = %bb.aq, %bb.b
  %i.cu = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio4task5local7CURRENT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17he5b9cc286f6d8af9E") ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !range !41, !noalias !1907, !noundef !12
  switch i8 %i.cw, label %default.unreachable11 [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.av
  ], !prof !44

bb.ar:                                            ; preds = %.thread11.i.i.i
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.cu, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h24b4accda2c23457E)
          to label %.noexc19.i.i.i unwind label %.thread.thread.i.i.i, !noalias !1907

.noexc19.i.i.i:                                   ; preds = %bb.ar
  store i8 1, ptr %i.cv, align 8, !noalias !1907
  br label %bb.as

bb.as:                                            ; preds = %.noexc19.i.i.i, %.thread11.i.i.i
  %i.cx = load ptr, ptr %i.cu, align 8, !noalias !1907, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.cx, align 8, !noalias !1907, !noundef !12 ; 2 uses
  %i.cy = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = add i64 %.val.i.i.i.i.i.i.i.i, 1        ; 2 uses
  store i64 %i.cz, ptr %i.cx, align 8, !noalias !1907
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.au, label %bb.ay, !prof !18

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %.thread11.i.i.i
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc20.i.i.i unwind label %.thread.thread.i.i.i, !noalias !1907

.noexc20.i.i.i:                                   ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %.noexc14.i.i.i.i.i
  %.pre.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !1907
  %i.db = add i64 %.pre.i.i.i.i.i, -1
  store i64 %i.db, ptr %i.ai, align 8, !noalias !1907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1907
  store ptr @333, ptr %i.g, align 8, !noalias !1907
  br label %.invoke.i.i.i

bb.ax:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1907
  store ptr @335, ptr %i.f, align 8, !noalias !1907
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.ax, %bb.aw
  %.sink47.i.sroa.phi.i.i = phi ptr [ %.sink47.i.sroa.gep.i.i, %bb.aw ], [ %.sink47.i.sroa.gep1.i.i, %bb.ax ]
  %.sink47.i.sroa.phi2.i.i = phi ptr [ %.sink47.i.sroa.gep3.i.i, %bb.aw ], [ %.sink47.i.sroa.gep4.i.i, %bb.ax ]
  %.sink47.i.sroa.phi5.i.i = phi ptr [ %.sink47.i.sroa.gep6.i.i, %bb.aw ], [ %.sink47.i.sroa.gep7.i.i, %bb.ax ]
  %.sink47.i.sroa.phi8.i.i = phi ptr [ %.sink47.i.sroa.gep9.i.i, %bb.aw ], [ %.sink47.i.sroa.gep10.i.i, %bb.ax ]
  %.sink47.i.i.i = phi ptr [ %i.g, %bb.aw ], [ %i.f, %bb.ax ]
  store i64 1, ptr %.sink47.i.sroa.phi.i.i, align 8, !noalias !1907
  store ptr null, ptr %.sink47.i.sroa.phi2.i.i, align 8, !noalias !1907
  store ptr inttoptr (i64 8 to ptr), ptr %.sink47.i.sroa.phi5.i.i, align 8, !noalias !1907
  store i64 0, ptr %.sink47.i.sroa.phi8.i.i, align 8, !noalias !1907
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink47.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #35
          to label %.cont.i.i.i unwind label %.thread.thread.i.i.i, !noalias !1907

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.at
  %i.dc = load ptr, ptr %i.cu, align 8, !noalias !1907, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1907
  store ptr %i.dc, ptr %i.e, align 8, !noalias !1907
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = invoke fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17hca7699b31ed5dcccE(ptr noundef nonnull align 8 %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(184) %i.i)
          to label %bb.bb unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load i64, ptr %i.dc, align 8, !noalias !1919, !noundef !12
  %i.dh = add i64 %i.dg, -1                       ; 2 uses
  store i64 %i.dh, ptr %i.dc, align 8, !noalias !1919
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.ba, label %.body

bb.ba:                                            ; preds = %bb.az
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.be, !noalias !1907

bb.bb:                                            ; preds = %bb.ay
  %i.dj = load i64, ptr %i.dc, align 8, !noalias !1920, !noundef !12
  %i.dk = add i64 %i.dj, -1                       ; 2 uses
  store i64 %i.dk, ptr %i.dc, align 8, !noalias !1920
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.bc, label %.noexc

bb.bc:                                            ; preds = %bb.bb
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1907
  br label %bb.bh

bb.bd:                                            ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i", %bb.ae, %bb.ad
  %.sroa.0.0.i.i6.i.ph.i.i.i = phi ptr [ %i.bp, %bb.ae ], [ %i.bp, %bb.ad ], [ %i.ck, %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i" ]
  %.pre.i.i21.i.i.i = load i64, ptr %i.ai, align 8, !noalias !1907
  %i.dm = add i64 %.pre.i.i21.i.i.i, -1
  store i64 %i.dm, ptr %i.ai, align 8, !noalias !1907
  br label %bb.bh

bb.be:                                            ; preds = %bb.bf, %bb.ba
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1907
  unreachable

.thread5.sink.split.i.i.i:                        ; preds = %.thread.i.i.i, %bb.am, %bb.al, %bb.af, %.noexc.i.i.i.i.i.i.i.i, %bb.z, %.noexc.i.i.i.i.i.i.i.i.i, %bb.w
  %.pn3.ph.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.thread.i.i.i ], [ %i.cl, %bb.am ], [ %i.cl, %bb.al ], [ %i.bu, %.noexc.i.i.i.i.i.i.i.i.i ], [ %i.ca, %.noexc.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.af ], [ %i.bu, %bb.z ], [ %i.br, %bb.w ]
  %i.do = load i64, ptr %i.ai, align 8, !noalias !1907, !noundef !12
  %i.dp = add i64 %i.do, -1
  store i64 %i.dp, ptr %i.ai, align 8, !noalias !1907
  br label %.body

.thread.thread42.i.i.i:                           ; preds = %bb.aj, %bb.o, %bb.n, %bb.j
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  %i.dq = load i64, ptr %i.ai, align 8, !noalias !1907, !noundef !12
  %i.dr = add i64 %i.dq, -1
  store i64 %i.dr, ptr %i.ai, align 8, !noalias !1907
  br label %bb.bf

.thread.i.i.i:                                    ; preds = %bb.ao
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread5.sink.split.i.i.i

bb.bf:                                            ; preds = %.thread.thread42.i.i.i, %.thread.thread.i.i.i
  %.pn438.i.i.i = phi { ptr, i32 } [ %i.ct, %.thread.thread.i.i.i ], [ %lpad.thr_comm.i.i.i, %.thread.thread42.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1d808f5317b2959bE"(ptr noundef nonnull align 8 %i.ah)
          to label %.body unwind label %bb.be, !noalias !1907

bb.bg:                                            ; preds = %bb.bc
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.az, %bb.ba, %.thread5.sink.split.i.i.i, %bb.bf, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.ds, %bb.bg ], [ %i.df, %bb.ba ], [ %.pn438.i.i.i, %bb.bf ], [ %i.df, %bb.az ], [ %.pn3.ph.i.i.i, %.thread5.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bd, %.noexc
  %.sroa.0.028.i.i.i = phi ptr [ %i.de, %.noexc ], [ %.sroa.0.0.i.i6.i.ph.i.i.i, %bb.bd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.028.i.i.i) ]
  %i.dt = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.sroa.0.028.i.i.i)
          to label %.noexc2 unwind label %bb.bk

.noexc2:                                          ; preds = %bb.bh
  br i1 %i.dt, label %bb.bi, label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit"

bb.bi:                                            ; preds = %.noexc2
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.sroa.0.028.i.i.i)
          to label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit" unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %.body
  %.pn = phi { ptr, i32 } [ %i.du, %bb.bk ], [ %eh.lpad-body, %.body ]
  store i8 2, ptr %i.j, align 8
  resume { ptr, i32 } %.pn

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit": ; preds = %.noexc2, %bb.bi
  store i8 1, ptr %i.j, align 8
  ret i1 false

bb.bl:                                            ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #35
  unreachable

bb.bm:                                            ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [256 x i8], align 128             ; 24 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [120 x i8], align 8               ; 14 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [120 x i8], align 8               ; 14 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [120 x i8], align 8               ; 16 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 11 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [48 x i8], align 8               ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !range !16, !noundef !12
  switch i8 %i.am, label %default.unreachable248 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val70.pre = load ptr, ptr %.phi.trans.insert230, align 8
  %.phi.trans.insert232 = getelementptr i8, ptr %0, i64 168
  %.val71.pre = load ptr, ptr %.phi.trans.insert232, align 8
  br label %bb.f

default.unreachable248:                           ; preds = %.thread11.i.i.i, %bb.ap, %bb.ai, %bb.a
  unreachable

.body134:                                         ; preds = %bb.em, %bb.en, %bb.fg, %.body91
  %.pn42 = phi { ptr, i32 } [ %.pn38.pn.pn, %.body91 ], [ %.pn38.pn.pn, %bb.fg ], [ %i.mn, %bb.em ], [ %i.mn, %bb.en ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.ap = load i8, ptr %i.ao, align 2, !range !31, !noundef !12
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.fi, label %bb.fh

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.as, i8 1, i64 5, i1 false)
  store i64 0, ptr %i.at, align 8, !alias.scope !2089
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %i.au, align 8, !alias.scope !2089
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.av, align 8, !alias.scope !2089
  store i8 1, ptr %i.ar, align 1
  %i.aw = getelementptr i8, ptr %0, i64 24
  %.val68 = load ptr, ptr %i.aw, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 32
  %.val69 = load i64, ptr %i.ax, align 8, !noundef !12
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %.val69 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.val68, ptr %i.az, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ay, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.q, %bb.b
  %i.ba = phi ptr [ %.pre229, %bb.q ], [ %i.ay, %bb.b ]
  %i.bb = phi ptr [ %.pre, %bb.q ], [ %.val68, %bb.b ] ; 4 uses
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %bb.s, label %bb.r

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #35
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #35
  unreachable

bb.f:                                             ; preds = %._crit_edge, %bb.cv
  %.val71 = phi ptr [ %.val71.pre, %._crit_edge ], [ %i.iu, %bb.cv ]
  %.val70 = phi ptr [ %.val70.pre, %._crit_edge ], [ %i.it, %bb.cv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val71, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !12, !noalias !2090, !nonnull !12
  invoke void %i.bg(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ak, ptr noundef nonnull align 1 %.val70, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8db8e8b6c2195f99E.exit" unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val64 = load ptr, ptr %i.bd, align 8
  %.val65 = load ptr, ptr %i.be, align 8, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @"_ZN4core3ptr513drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h05d1b1b6ae39a240E"(ptr %.val64, ptr nonnull %.val65) #36
          to label %.body91 unwind label %bb.cr

"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8db8e8b6c2195f99E.exit": ; preds = %bb.f
  %i.bi = load i64, ptr %i.ak, align 8, !range !34, !noundef !12
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.h, label %bb.i

common.ret:                                       ; preds = %bb.ff, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit144", %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit", %bb.h
  %storemerge = phi i8 [ 3, %bb.h ], [ 1, %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit" ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit144" ], [ 1, %bb.ff ]
  %common.ret.op = phi i1 [ true, %bb.h ], [ false, %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit" ], [ false, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit144" ], [ false, %bb.ff ]
  store i8 %storemerge, ptr %i.al, align 8
  ret i1 %common.ret.op

bb.h:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8db8e8b6c2195f99E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %common.ret

bb.i:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8db8e8b6c2195f99E.exit"
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.05.0.copyload = load i64, ptr %i.bk, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val66 = load ptr, ptr %i.bd, align 8          ; 5 uses
  %.val67 = load ptr, ptr %i.be, align 8, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.bl = load ptr, ptr %.val67, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66) ]
  invoke void %i.bl(ptr noundef nonnull %.val66)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val67, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, -9223372036854775807
  call void @llvm.assume(i1 %i.bq)
end_hunk_6
begin_hunk_7_@"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E":bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr373drop_in_place$LT$$LP$usize$C$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$GT$17h3f49d7633c9a7062E"(ptr nonnull %.sroa.2.0.copyload, ptr nonnull %.sroa.4.0.copyload) #36
          to label %.body91 unwind label %bb.p, !noalias !2095

bb.p:                                             ; preds = %bb.o
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2095
  unreachable

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !2093, !nonnull !12, !noundef !12
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.ce ; 4 uses
  store i64 %i.cc, ptr %i.cl, align 8, !noalias !2093
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.05.0.copyload, ptr %.sroa.5151.0..sroa_idx, align 8, !noalias !2093
  %.sroa.6152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.sroa.2.0.copyload, ptr %.sroa.6152.0..sroa_idx, align 8, !noalias !2093
  %.sroa.8153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %.sroa.4.0.copyload, ptr %.sroa.8153.0..sroa_idx, align 8, !noalias !2093
  %i.cm = add i64 %i.ce, 1
  store i64 %i.cm, ptr %i.cd, align 8, !alias.scope !2093
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2096
  %.phi.trans.insert228 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre229 = load ptr, ptr %.phi.trans.insert228, align 8, !alias.scope !2096
  br label %bb.c

bb.r:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.co, ptr %i.cn, align 8, !alias.scope !2096
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !2097, !noundef !12 ; 2 uses
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !2097
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.cq, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %i.bb, align 8, !nonnull !12, !align !14, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !12, !align !13, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !12, !nonnull !12
  %i.cy = invoke { ptr, ptr } %i.cx(ptr noundef nonnull align 1 %i.ct)
          to label %bb.cv unwind label %bb.el     ; 2 uses

bb.s:                                             ; preds = %bb.c
  %.val86 = load i64, ptr %0, align 8, !range !39, !noundef !12
  %i.cz = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val87 = load ptr, ptr %i.cz, align 8
  %i.da = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E"(i64 %.val86, ptr %.val87, ptr noundef null)
          to label %"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit" unwind label %bb.el ; 2 uses

"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit": ; preds = %bb.s
  %i.db = extractvalue { i64, ptr } %i.da, 0
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.t, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56", !prof !18

bb.t:                                             ; preds = %"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit"
  %i.dd = extractvalue { i64, ptr } %i.da, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2098
  store ptr %i.dd, ptr %i.p, align 8, !noalias !2098
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #35
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %i.p, align 8, !alias.scope !2099, !noundef !12
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.body91, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.p)
          to label %.body91 unwind label %bb.x

bb.w:                                             ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56": ; preds = %"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  store i8 0, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  invoke fastcc void @_ZN12actix_server6worker20wrap_worker_services17h1c79521d68341434E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56"
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.body91

bb.z:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i8 0, ptr %i.dl, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !12, !noundef !12 ; 5 uses
  store ptr %i.dn, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 0, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !12, !noundef !12 ; 5 uses
  store ptr %i.dq, ptr %i.u, align 8
  %i.dr = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5102d0efca7e040bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %.body93, %bb.ab
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %.body93 ], [ %i.ds, %bb.ab ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.u) #36
          to label %bb.ct unwind label %bb.cr

bb.ab:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.dt = extractvalue { ptr, i64 } %i.dr, 0      ; 7 uses
  %i.du = extractvalue { ptr, i64 } %i.dr, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !12 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 0, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 0, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 1, ptr %i.o, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ee = load <2 x ptr>, ptr %i.dy, align 8
  store <2 x ptr> %i.ee, ptr %i.ed, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.eb, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2100
  %i.ef = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2100 ; 9 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ad, label %bb.ag, !prof !18

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #35
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..rc..RcInner$LT$$LP$actix_server..waker_queue..WakerQueue$C$actix_server..worker..Counter$RP$$GT$$GT$17h0b14940ec63f7c82E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #36
          to label %.body93 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store ptr %i.ef, ptr %i.t, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.dw, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 0, ptr %i.ek, align 2
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false)
  %i.em = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hce03ab3e3e25f41fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193)
          to label %bb.ai unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eo = load i64, ptr %i.ef, align 8, !noalias !2101, !noundef !12
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  store i64 %i.ep, ptr %i.ef, align 8, !noalias !2101
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.cs, label %.body93

bb.ai:                                            ; preds = %bb.ag
  %i.er = extractvalue { ptr, i64 } %i.em, 0      ; 5 uses
  %i.es = extractvalue { ptr, i64 } %i.em, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load i64, ptr %i.et, align 8, !noundef !12 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ew = load i32, ptr %i.ev, align 8, !range !43, !noundef !12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt), "nonnull"(ptr %i.er) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2102
  store i64 1, ptr %i.n, align 8
  %.sroa.8182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.eu, ptr %.sroa.8182.0..sroa_idx, align 8
  %.sroa.9185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 %i.ew, ptr %.sroa.9185.0..sroa_idx, align 8
  %.sroa.10190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.dn, ptr %.sroa.10190.0..sroa_idx, align 8
  %.sroa.11193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.dq, ptr %.sroa.11193.0..sroa_idx, align 8
  %.sroa.12196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %i.ef, ptr %.sroa.12196.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i64 %i.dw, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store ptr %i.dt, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 %i.du, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store ptr %i.er, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.es, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.ex = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 17 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 72 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 8, !range !41, !noalias !2104, !noundef !12
  %.sink40.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink40.i.sroa.gep1.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink40.i.sroa.gep3.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink40.i.sroa.gep4.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sink40.i.sroa.gep6.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink40.i.sroa.gep7.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sink40.i.sroa.gep9.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink40.i.sroa.gep10.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  switch i8 %i.ez, label %default.unreachable248 [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %.thread11.i.i.i
  ], !prof !44

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.ex, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc.i.i.i unwind label %.thread.i.i.i.thread, !noalias !2102

.noexc.i.i.i:                                     ; preds = %bb.aj
  store i8 1, ptr %i.ey, align 8, !noalias !2104
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc.i.i.i, %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.fa = load i64, ptr %i.ex, align 8, !noalias !2106, !noundef !12 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 9223372036854775807
  br i1 %i.fb, label %bb.am, label %bb.al, !prof !23

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #35
          to label %.noexc21.i.i.i unwind label %.thread.i.i.i.thread, !noalias !2102

.noexc21.i.i.i:                                   ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fc = add nuw nsw i64 %i.fa, 1
  store i64 %i.fc, ptr %i.ex, align 8, !noalias !2106
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !range !39, !noalias !2106, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.fe, 2
  br i1 %.not.i.i.i.i.i, label %bb.by, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !2108, !noalias !2106, !nonnull !12, !noundef !12 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 560
  %i.fj = load i64, ptr %i.fi, align 16, !noalias !2109, !noundef !12
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio4task5local7CURRENT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17he5b9cc286f6d8af9E") ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !range !41, !noalias !2110, !noundef !12
  switch i8 %i.fm, label %default.unreachable248 [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %bb.au
  ], !prof !44

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.fk, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h24b4accda2c23457E)
          to label %.noexc.i.i.i.i.i unwind label %.thread.i.i.i.thread225, !noalias !2106

.noexc.i.i.i.i.i:                                 ; preds = %bb.aq
  store i8 1, ptr %i.fl, align 8, !noalias !2110
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc.i.i.i.i.i, %bb.ap
  %i.fn = load ptr, ptr %i.fk, align 8, !noalias !2110, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fn, align 8, !noalias !2109, !noundef !12 ; 2 uses
  %i.fo = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.fo)
  %i.fp = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.fp, ptr %i.fn, align 8, !noalias !2109
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.at, label %bb.bs, !prof !18

bb.at:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ap
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc13.i.i.i.i.i unwind label %.thread.i.i.i.thread225, !noalias !2106

.noexc13.i.i.i.i.i:                               ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.ao
  %i.fr = invoke noundef zeroext i1 @_ZN5tokio7runtime9scheduler6Handle32can_spawn_local_on_local_runtime17h6025809b54a3bff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fd)
          to label %.noexc14.i.i.i.i.i unwind label %.thread.i.i.i.thread225, !noalias !2106

.noexc14.i.i.i.i.i:                               ; preds = %bb.av
  br i1 %i.fr, label %bb.aw, label %bb.ce

bb.aw:                                            ; preds = %.noexc14.i.i.i.i.i
  store i64 4, ptr %i.n, align 8, !alias.scope !2111, !noalias !2102
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.aw, %.preheader.i.i.i.i.i
  %i.fs = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !2110 ; 3 uses
  %.not20.i.i.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not20.i.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i.i.i.i.i
  %i.ft = atomicrmw add ptr %i.fh, i64 1 monotonic, align 8, !noalias !2112
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2113
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 528 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 16, !noalias !2114, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = atomicrmw add ptr %i.fx, i64 1 monotonic, align 8, !noalias !2114
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = load <2 x ptr>, ptr %i.fw, align 16, !noalias !2114
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  %i.gb = phi <2 x ptr> [ %i.ga, %bb.ba ], [ <ptr null, ptr undef>, %bb.ay ]
  %.sroa.8182.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.eu, ptr %.sroa.8182.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 32
  %.sroa.9185.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 %i.ew, ptr %.sroa.9185.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.10190.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.dn, ptr %.sroa.10190.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 16
  %.sroa.11193.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr %i.dq, ptr %.sroa.11193.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.12196.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.ef, ptr %.sroa.12196.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 128
  %.sroa.13.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 %i.dw, ptr %.sroa.13.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.14.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store ptr %i.dt, ptr %.sroa.14.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 16
  %.sroa.15.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i64 %i.du, ptr %.sroa.15.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.16.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr %i.er, ptr %.sroa.16.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 32
  %.sroa.17.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  store i64 %i.es, ptr %.sroa.17.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  store i64 204, ptr %i.e, align 128, !noalias !2113
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2113
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @345, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !2113
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2113
end_hunk_7
begin_hunk_8_@"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E":bb.a
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %bb.bw, label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit23.i.i.i.i.i.i"

bb.bw:                                            ; preds = %bb.bv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit23.i.i.i.i.i.i" unwind label %.thread.i.i.i, !noalias !2106

"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit23.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2110
  br label %bb.cl

bb.bx:                                            ; preds = %bb.bu
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2109
  unreachable

.thread.i.i.i.thread:                             ; preds = %bb.aj, %bb.al, %bb.bz, %bb.cd, %.invoke.i.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.by:                                            ; preds = %bb.am
  store i64 %i.fa, ptr %i.ex, align 8, !noalias !2106
  br label %.thread11.i.i.i

.thread11.i.i.i:                                  ; preds = %bb.by, %bb.ai
  %i.hl = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio4task5local7CURRENT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17he5b9cc286f6d8af9E") ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !range !41, !noalias !2102, !noundef !12
  switch i8 %i.hn, label %default.unreachable248 [
    i8 0, label %bb.bz
    i8 1, label %bb.ca
    i8 2, label %bb.cd
  ], !prof !44

bb.bz:                                            ; preds = %.thread11.i.i.i
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.hl, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h24b4accda2c23457E)
          to label %.noexc23.i.i.i unwind label %.thread.i.i.i.thread, !noalias !2102

.noexc23.i.i.i:                                   ; preds = %bb.bz
  store i8 1, ptr %i.hm, align 8, !noalias !2102
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc23.i.i.i, %.thread11.i.i.i
  %i.ho = load ptr, ptr %i.hl, align 8, !noalias !2102, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ho, align 8, !noalias !2102, !noundef !12 ; 2 uses
  %i.hp = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.hp)
  %i.hq = add i64 %.val.i.i.i.i.i.i.i.i, 1        ; 2 uses
  store i64 %i.hq, ptr %i.ho, align 8, !noalias !2102
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.cc, label %bb.cg, !prof !18

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.trap()
  unreachable

bb.cd:                                            ; preds = %.thread11.i.i.i
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc24.i.i.i unwind label %.thread.i.i.i.thread, !noalias !2102

.noexc24.i.i.i:                                   ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %.noexc14.i.i.i.i.i
  %i.hs = load i64, ptr %i.ex, align 8, !noalias !2106, !noundef !12
  %i.ht = add i64 %i.hs, -1
  store i64 %i.ht, ptr %i.ex, align 8, !noalias !2106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2102
  store ptr @333, ptr %i.m, align 8, !noalias !2102
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.cf, %bb.ce
  %.sink40.i.sroa.phi.i.i = phi ptr [ %.sink40.i.sroa.gep.i.i, %bb.cf ], [ %.sink40.i.sroa.gep1.i.i, %bb.ce ]
  %.sink40.i.sroa.phi2.i.i = phi ptr [ %.sink40.i.sroa.gep3.i.i, %bb.cf ], [ %.sink40.i.sroa.gep4.i.i, %bb.ce ]
  %.sink40.i.sroa.phi5.i.i = phi ptr [ %.sink40.i.sroa.gep6.i.i, %bb.cf ], [ %.sink40.i.sroa.gep7.i.i, %bb.ce ]
  %.sink40.i.sroa.phi8.i.i = phi ptr [ %.sink40.i.sroa.gep9.i.i, %bb.cf ], [ %.sink40.i.sroa.gep10.i.i, %bb.ce ]
  %.sink40.i.i.i = phi ptr [ %i.l, %bb.cf ], [ %i.m, %bb.ce ]
  store i64 1, ptr %.sink40.i.sroa.phi.i.i, align 8, !noalias !2102
  store ptr null, ptr %.sink40.i.sroa.phi2.i.i, align 8, !noalias !2102
  store ptr inttoptr (i64 8 to ptr), ptr %.sink40.i.sroa.phi5.i.i, align 8, !noalias !2102
  store i64 0, ptr %.sink40.i.sroa.phi8.i.i, align 8, !noalias !2102
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink40.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #35
          to label %.cont.i.i.i unwind label %.thread.i.i.i.thread, !noalias !2102

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.cf:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2102
  store ptr @335, ptr %i.l, align 8, !noalias !2102
  br label %.invoke.i.i.i

bb.cg:                                            ; preds = %bb.cb
  %i.hu = load ptr, ptr %i.hl, align 8, !noalias !2102, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2102
  store ptr %i.hu, ptr %i.k, align 8, !noalias !2102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2102
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i64 1, ptr %i.j, align 8, !noalias !2102
  %.sroa.8182.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %i.eu, ptr %.sroa.8182.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.9185.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i32 %i.ew, ptr %.sroa.9185.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.10190.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %i.dn, ptr %.sroa.10190.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.11193.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.dq, ptr %.sroa.11193.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.12196.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %i.ef, ptr %.sroa.12196.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.13.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %i.dw, ptr %.sroa.13.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.14.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %i.dt, ptr %.sroa.14.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.15.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.du, ptr %.sroa.15.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.16.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store ptr %i.er, ptr %.sroa.16.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %.sroa.17.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.es, ptr %.sroa.17.8..sroa.58.0..sroa_idx9.i.i.i.sroa_idx, align 8
  %i.hw = invoke fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17h04d6336c0333bda5E(ptr noundef nonnull align 8 %i.hv, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.j)
          to label %bb.cj unwind label %bb.ch, !noalias !2102

bb.ch:                                            ; preds = %bb.cg
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load i64, ptr %i.hu, align 8, !noalias !2127, !noundef !12
  %i.hz = add i64 %i.hy, -1                       ; 2 uses
  store i64 %i.hz, ptr %i.hu, align 8, !noalias !2127
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.ci, label %.body91

bb.ci:                                            ; preds = %bb.ch
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body91 unwind label %bb.cm, !noalias !2102

bb.cj:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2102
  %i.ib = load i64, ptr %i.hu, align 8, !noalias !2128, !noundef !12
  %i.ic = add i64 %i.ib, -1                       ; 2 uses
  store i64 %i.ic, ptr %i.hu, align 8, !noalias !2128
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.ck, label %.noexc95

bb.ck:                                            ; preds = %bb.cj
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc95 unwind label %bb.el

.noexc95:                                         ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2102
  br label %bb.co

bb.cl:                                            ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit23.i.i.i.i.i.i", %bb.bm, %bb.bl
  %.sroa.34.0.i.i.ph.ph.i.i.i = phi ptr [ %i.gz, %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit23.i.i.i.i.i.i" ], [ %i.ge, %bb.bl ], [ %i.ge, %bb.bm ]
  %i.ie = load i64, ptr %i.ex, align 8, !noalias !2106, !noundef !12
  %i.if = add i64 %i.ie, -1
  store i64 %i.if, ptr %i.ex, align 8, !noalias !2106
  br label %bb.co

bb.cm:                                            ; preds = %bb.cn, %bb.ci
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2102
  unreachable

.thread.i.i.i.thread222:                          ; preds = %bb.be, %bb.bh, %bb.bn, %.noexc.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i, %bb.bt, %bb.bu
  %eh.lpad-body.i.i.i.i.i.ph = phi { ptr, i32 } [ %i.ha, %bb.bu ], [ %i.ha, %bb.bt ], [ %i.gj, %.noexc.i.i.i.i.i.i.i.i.i ], [ %i.gp, %.noexc.i.i.i.i.i.i.i.i ], [ %i.gp, %bb.bn ], [ %i.gj, %bb.bh ], [ %i.gg, %bb.be ]
  %i.ih = load i64, ptr %i.ex, align 8, !noalias !2106, !noundef !12
  %i.ii = add i64 %i.ih, -1
  store i64 %i.ii, ptr %i.ex, align 8, !noalias !2106
  br label %.body91

.thread.i.i.i.thread225:                          ; preds = %bb.br, %bb.aq, %bb.av, %bb.au
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.ij = load i64, ptr %i.ex, align 8, !noalias !2106, !noundef !12
  %i.ik = add i64 %i.ij, -1
  store i64 %i.ik, ptr %i.ex, align 8, !noalias !2106
  br label %bb.cn

.thread.i.i.i:                                    ; preds = %bb.bw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.il = load i64, ptr %i.ex, align 8, !noalias !2106, !noundef !12
  %i.im = add i64 %i.il, -1
  store i64 %i.im, ptr %i.ex, align 8, !noalias !2106
  br label %.body91

bb.cn:                                            ; preds = %.thread.i.i.i.thread225, %.thread.i.i.i.thread
  %.pn4.i.i.i221 = phi { ptr, i32 } [ %i.hk, %.thread.i.i.i.thread ], [ %lpad.thr_comm, %.thread.i.i.i.thread225 ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..worker..ServerWorker$GT$17he7f6de17b97f4087E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.n)
          to label %.body91 unwind label %bb.cm, !noalias !2102

bb.co:                                            ; preds = %bb.cl, %.noexc95
  %.sroa.0.028.i.i.i = phi ptr [ %i.hw, %.noexc95 ], [ %.sroa.34.0.i.i.ph.ph.i.i.i, %bb.cl ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2102
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.028.i.i.i) ]
  %i.in = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.sroa.0.028.i.i.i)
          to label %.noexc98 unwind label %bb.el

.noexc98:                                         ; preds = %bb.co
  br i1 %i.in, label %bb.cp, label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit"

bb.cp:                                            ; preds = %.noexc98
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.sroa.0.028.i.i.i)
          to label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit" unwind label %bb.el

"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit": ; preds = %.noexc98, %bb.cp
  store i8 0, ptr %i.di, align 1
  %.val62 = load i64, ptr %0, align 8, !range !39, !noundef !12
  %.val63 = load ptr, ptr %i.cz, align 8
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 %.val62, ptr %.val63)
          to label %common.ret unwind label %bb.cq

"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit": ; preds = %bb.fr, %bb.fq, %bb.fd, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit", %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147", %bb.cq
  %.pn52 = phi { ptr, i32 } [ %i.io, %bb.cq ], [ %.pn42, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147" ], [ %.pn50, %bb.fd ], [ %.pn50, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit" ], [ %.pn42, %bb.fq ], [ %.pn42, %bb.fr ]
  store i8 2, ptr %i.al, align 8
  resume { ptr, i32 } %.pn52

bb.cq:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h123d07670cc274f6E.exit"
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.cr:                                            ; preds = %bb.fp, %bb.ez, %bb.cs, %.body93, %bb.g, %.body140, %bb.fh, %bb.fn, %bb.fl, %bb.fi, %bb.fg, %bb.ev, %bb.es, %bb.ds, %bb.ct, %bb.aa
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.cs:                                            ; preds = %bb.ah
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h87ece3ea74edb03aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.t)
          to label %.body93 unwind label %bb.cr

.body93:                                          ; preds = %bb.ah, %bb.cs, %bb.ae
  %.pn11.pn = phi { ptr, i32 } [ %i.eh, %bb.ae ], [ %i.en, %bb.ah ], [ %i.en, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$$u5b$actix_server..worker..WorkerService$u5d$$GT$$GT$17h717b9279385f994aE"(ptr %i.dt, i64 %i.du) #36
          to label %bb.aa unwind label %bb.cr

bb.ct:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.v) #36
          to label %bb.cu unwind label %bb.cr

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.body91

.body91:                                          ; preds = %bb.cu, %.thread.i.i.i, %.thread.i.i.i.thread222, %bb.ch, %bb.ci, %bb.cn, %bb.eh, %bb.ei, %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.el, %bb.ef, %bb.ee, %bb.ea, %bb.di, %bb.u, %bb.v, %bb.o, %.body121, %bb.dp, %bb.g, %bb.y
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.o ], [ %i.de, %bb.v ], [ %i.dk, %bb.y ], [ %i.bs, %bb.l ], [ %i.lx, %bb.ee ], [ %i.bh, %bb.g ], [ %i.lx, %bb.ef ], [ %.pn30, %.body121 ], [ %i.mf, %bb.eh ], [ %i.kx, %bb.dp ], [ %i.jz, %bb.di ], [ %i.mf, %bb.ei ], [ %i.mj, %bb.el ], [ %i.bs, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ], [ %i.lt, %bb.ea ], [ %i.de, %bb.u ], [ %.pn11.pn.pn, %bb.cu ], [ %eh.lpad-body.i.i.i.i.i.ph, %.thread.i.i.i.thread222 ], [ %i.hx, %bb.ci ], [ %lpad.thr_comm.split-lp, %.thread.i.i.i ], [ %i.hx, %bb.ch ], [ %.pn4.i.i.i221, %bb.cn ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.ir = load i8, ptr %i.iq, align 1, !range !31, !noundef !12
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.fg, label %.body134

bb.cv:                                            ; preds = %bb.r
  %i.it = extractvalue { ptr, ptr } %i.cy, 0      ; 2 uses
  %i.iu = extractvalue { ptr, ptr } %i.cy, 1      ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.it, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.iu, ptr %i.iw, align 8
  br label %bb.f

bb.cw:                                            ; preds = %"_ZN4core3ptr513drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h05d1b1b6ae39a240E.exit"
  %i.ix = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.iy = icmp samesign ult i64 %i.ix, 5
  br i1 %i.iy, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.iz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h11b90bd9d9527305E", i64 16) monotonic, align 8 ; 2 uses
  %i.ja = icmp ult i8 %i.iz, 3
  br i1 %i.ja, label %bb.cz, label %bb.cy, !prof !32

bb.cy:                                            ; preds = %bb.cx
  %i.jb = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h11b90bd9d9527305E")
          to label %bb.cz unwind label %bb.el

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.sroa.0.0.i102 = phi i8 [ %i.iz, %bb.cx ], [ %i.jb, %bb.cy ] ; 2 uses
  %i.jc = icmp eq i8 %.sroa.0.0.i102, 0
  br i1 %i.jc, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jd = load ptr, ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h11b90bd9d9527305E", align 8, !nonnull !12, !align !13, !noundef !12
  %i.je = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jd, i8 noundef %.sroa.0.0.i102)
          to label %bb.db unwind label %bb.el

bb.db:                                            ; preds = %bb.da
  br i1 %i.je, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.cw, %bb.cz, %bb.db
  %i.jf = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %.not = icmp eq i8 %i.jf, 0
  br i1 %.not, label %bb.dd, label %bb.dk

bb.dd:                                            ; preds = %bb.dc
  %i.jg = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.jh = icmp ult i64 %i.jg, 6
  call void @llvm.assume(i1 %i.jh)
  %.not227 = icmp eq i64 %i.jg, 0
  br i1 %.not227, label %bb.dk, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ji = load ptr, ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h11b90bd9d9527305E", align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 32
  %.val77 = load ptr, ptr %i.jj, align 8, !nonnull !12, !align !14, !noundef !12
  %i.jk = getelementptr i8, ptr %i.ji, i64 40
  %.val78 = load i64, ptr %i.jk, align 8, !noundef !12
  store i64 1, ptr %i.af, align 8, !alias.scope !2129
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.val77, ptr %.sroa.6165.0..sroa_idx, align 8, !alias.scope !2129
  %.sroa.8166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.val78, ptr %.sroa.8166.0..sroa_idx, align 8, !alias.scope !2129
  %i.jl = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.df unwind label %bb.el     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %i.jm = extractvalue { ptr, ptr } %i.jl, 0      ; 2 uses
  %i.jn = extractvalue { ptr, ptr } %i.jl, 1      ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !invariant.load !12, !nonnull !12
  %i.jq = invoke noundef zeroext i1 %i.jp(ptr noundef align 1 %i.jm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.dg unwind label %bb.el

bb.dg:                                            ; preds = %bb.df
  br i1 %i.jq, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.jr = load ptr, ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h11b90bd9d9527305E", align 8, !nonnull !12, !align !13, !noundef !12
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.a, ptr %i.ab, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @"_ZN45_$LT$$LP$$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h03e6a69f3a2ff73dE", ptr %.sroa.5168.0..sroa_idx, align 8
  store ptr @186, ptr %i.ac, align 8, !alias.scope !2130
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %i.jt, align 8, !alias.scope !2130
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %i.ju, align 8, !alias.scope !2130
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ab, ptr %i.jv, align 8, !alias.scope !2130
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 1, ptr %i.jw, align 8, !alias.scope !2130
  store ptr %i.ac, ptr %i.ad, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @51, ptr %i.jx, align 8
  store i64 1, ptr %i.ae, align 8, !alias.scope !2131
  %.sroa.4.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i109, align 8, !alias.scope !2131
  %.sroa.5.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i110, align 8, !alias.scope !2131
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.js, ptr %i.jy, align 8, !alias.scope !2131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ji, ptr noundef nonnull align 1 %i.jm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.body91

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dg, %bb.dd, %bb.dc, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ka = invoke noundef nonnull ptr @_ZN8actix_rt7arbiter7Arbiter7current17hc03c2ca1d0e8cefcE()
          to label %bb.dr unwind label %bb.dz

bb.dl:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.kb = load ptr, ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h11b90bd9d9527305E", align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.a, ptr %i.ag, align 8
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @"_ZN45_$LT$$LP$$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h03e6a69f3a2ff73dE", ptr %.sroa.5160.0..sroa_idx, align 8
  store ptr @186, ptr %i.ah, align 8, !alias.scope !2132
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %i.kd, align 8, !alias.scope !2132
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr null, ptr %i.ke, align 8, !alias.scope !2132
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ag, ptr %i.kf, align 8, !alias.scope !2132
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 1, ptr %i.kg, align 8, !alias.scope !2132
  store ptr %i.ah, ptr %i.ai, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @51, ptr %i.kh, align 8
  store i64 1, ptr %i.aj, align 8
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.6157.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.kc, ptr %.sroa.8158.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc115 unwind label %bb.dp

.noexc115:                                        ; preds = %bb.dl
  %i.ki = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !2133
  %i.kj = icmp eq i8 %i.ki, 0
  br i1 %i.kj, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %.noexc115
  %i.kk = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !2133 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 6
  call void @llvm.assume(i1 %i.kl)
  %.not.i114 = icmp eq i64 %i.kk, 0
  br i1 %.not.i114, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.km = load ptr, ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h11b90bd9d9527305E", align 8, !noalias !2133, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !12, !align !14, !noundef !12
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !12
  store i64 1, ptr %i.d, align 8, !noalias !2133
end_hunk_8
begin_hunk_9_@"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E":bb.a
  br label %common.ret

bb.fg:                                            ; preds = %.body91
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @"_ZN4core3ptr396drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$GT$$GT$17hd4c82c1e2604dac2E"(ptr noalias noundef align 8 dereferenceable(24) %i.nz) #36
          to label %.body134 unwind label %bb.cr

bb.fh:                                            ; preds = %bb.fi, %.body134
  %.val = load i64, ptr %0, align 8, !range !39, !noundef !12
  %i.oa = getelementptr i8, ptr %0, i64 8
  %.val57 = load ptr, ptr %i.oa, align 8
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 %.val, ptr %.val57) #36
          to label %bb.fj unwind label %bb.cr

bb.fi:                                            ; preds = %.body134
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE"(ptr noalias noundef align 8 dereferenceable(24) %i.ob) #36
          to label %bb.fh unwind label %bb.cr

bb.fj:                                            ; preds = %bb.fh
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.od = load i8, ptr %i.oc, align 2, !range !31, !noundef !12
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fl, %bb.fj
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.og = load i8, ptr %i.of, align 1, !range !31, !noundef !12
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.fn, label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.oi) #36
          to label %bb.fk unwind label %bb.cr

bb.fm:                                            ; preds = %bb.fn, %bb.fk
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ok = load i8, ptr %i.oj, align 4, !range !31, !noundef !12
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.fo, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147"

bb.fn:                                            ; preds = %bb.fk
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.om) #36
          to label %bb.fm unwind label %bb.cr

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147": ; preds = %bb.fo, %bb.fp, %bb.fm
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.oo = load i8, ptr %i.on, align 1, !range !31, !noundef !12
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.fq, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.fo:                                            ; preds = %bb.fm
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !2173, !nonnull !12, !noundef !12
  %i.os = atomicrmw add ptr %i.or, i64 -1 release, align 8, !noalias !2173
  %i.ot = icmp eq i64 %i.os, 1
  br i1 %i.ot, label %bb.fp, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147"

bb.fp:                                            ; preds = %bb.fo
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.oq)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147" unwind label %bb.cr

bb.fq:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147"
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !2177, !nonnull !12, !noundef !12
  %i.ow = atomicrmw add ptr %i.ov, i64 -1 release, align 8, !noalias !2177
  %i.ox = icmp eq i64 %i.ow, 1
  br i1 %i.ox, label %bb.fr, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.fr:                                            ; preds = %bb.fq
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ou)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd840104c694c9946E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !16, !noundef !12
  switch i8 %i.i, label %default.unreachable39 [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

default.unreachable39:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i32 16843009, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.o, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.p = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5102d0efca7e040bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.t = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.u = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i64, ptr %i.v, align 8, !noundef !12 ; 2 uses
  store i8 0, ptr %i.s, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.r, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i64, ptr %i.y, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load <2 x ptr>, ptr %i.x, align 8
  store <2 x ptr> %i.ac, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx.i, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2198
  %i.ad = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2198 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %bb.h, !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #35
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..rc..RcInner$LT$$LP$actix_server..waker_queue..WakerQueue$C$actix_server..worker..Counter$RP$$GT$$GT$17h0b14940ec63f7c82E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #36
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ad, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.w, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.j, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aj = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hce03ab3e3e25f41fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = load i64, ptr %i.ad, align 8, !noalias !2199, !noundef !12
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ad, align 8, !noalias !2199
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %.body

bb.j:                                             ; preds = %bb.h
  %i.ao = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.aj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !range !43, !noundef !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t), "nonnull"(ptr %i.ao) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 1, ptr %i.au, align 8
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ar, ptr %.sroa.723.0..sroa_idx, align 8
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.at, ptr %.sroa.824.0..sroa_idx, align 8
  %.sroa.1026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.m, ptr %.sroa.1026.0..sroa_idx, align 8
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.o, ptr %.sroa.1127.0..sroa_idx, align 8
  %.sroa.1228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ad, ptr %.sroa.1228.0..sroa_idx, align 8
  %.sroa.1329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.w, ptr %.sroa.1329.0..sroa_idx, align 8
  %.sroa.1430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.t, ptr %.sroa.1430.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.u, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ao, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.ap, ptr %.sroa.17.0..sroa_idx, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.ab, %bb.l, %.body, %bb.ah, %bb.af, %bb.s, %bb.n, %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.l:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h87ece3ea74edb03aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d)
          to label %.body unwind label %bb.k

.body:                                            ; preds = %bb.i, %bb.l, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.ak, %bb.i ], [ %i.ak, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$$u5b$actix_server..worker..WorkerService$u5d$$GT$$GT$17h717b9279385f994aE"(ptr %i.t, i64 %i.u) #36
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %.body, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.q, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.f) #36
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.g) #36
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #35
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #35
  unreachable

bb.r:                                             ; preds = %bb.a, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ax = invoke noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..worker..ServerWorker$GT$17he7f6de17b97f4087E"(ptr noalias noundef align 8 dereferenceable(120) %i.aw) #36
          to label %bb.z unwind label %bb.k

bb.t:                                             ; preds = %bb.r
  br i1 %i.ax, label %common.ret, label %bb.u

common.ret:                                       ; preds = %bb.t, %bb.w
  %storemerge = phi i8 [ 1, %bb.w ], [ 3, %bb.t ]
  store i8 %storemerge, ptr %i.h, align 8
  ret i1 %i.ax

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..worker..ServerWorker$GT$17he7f6de17b97f4087E"(ptr noalias noundef align 8 dereferenceable(120) %i.aw)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !12
  %i.bc = invoke fastcc noundef zeroext i1 @"_ZN5tokio4sync7oneshot15Sender$LT$T$GT$4send17h6ead7fb9b088e416E"(ptr noundef %i.bb)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %i.bc, label %bb.x, label %common.ret, !prof !18

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @316, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #35
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.v
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.s, %bb.y
  %.pn14 = phi { ptr, i32 } [ %i.bd, %bb.y ], [ %.pn.pn.pn, %bb.o ], [ %i.ay, %bb.s ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bf = load i8, ptr %i.be, align 4, !range !31, !noundef !12
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.aa, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit": ; preds = %bb.aa, %bb.ab, %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.bi = load i8, ptr %i.bh, align 1, !range !31, !noundef !12
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ac, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.aa:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !2203, !nonnull !12, !noundef !12
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !2203
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ab, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bk)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit" unwind label %bb.k

"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit": ; preds = %bb.ad, %bb.ac, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bp = load i8, ptr %i.bo, align 2, !range !31, !noundef !12
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.af, label %bb.ae

bb.ac:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !2207, !nonnull !12, !noundef !12
  %i.bt = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !noalias !2207
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.ad, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.br)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.ae:                                            ; preds = %bb.af, %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.bw = load i8, ptr %i.bv, align 1, !range !31, !noundef !12
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE"(ptr noalias noundef align 8 dereferenceable(24) %i.by) #36
          to label %bb.ae unwind label %bb.k

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn14

bb.ah:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE"(ptr noalias noundef align 8 dereferenceable(8) %i.bz) #36
          to label %bb.ag unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN12actix_server6worker18WorkerHandleServer4stop17h19f8f63a14c3ce76E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 2, ptr %.sroa.8.0..sroa_idx.i, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2234
  %i.g = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2234 ; 14 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8e3a04083c1b7daaE.exit.i", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #35
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..sync..ArcInner$LT$tokio..sync..oneshot..Inner$LT$bool$GT$$GT$$GT$17h77ae0c98591e14e4E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c) #36
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8e3a04083c1b7daaE.exit.i": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN5tokio4sync7oneshot7channel17hc7e4dd8162a0c0faE.exit

bb.e:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8e3a04083c1b7daaE.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5tokio4sync7oneshot7channel17hc7e4dd8162a0c0faE.exit: ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8e3a04083c1b7daaE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_9
begin_hunk_10_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h21c7fa30fe47c32bE:bb.a
bb.hy:                                            ; preds = %bb.hx
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.qe, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.if, !noalias !2856

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hy
  store i8 1, ptr %i.qf, align 8, !noalias !2865
  br label %bb.hz

bb.hz:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hx
  %i.vj = load i8, ptr %i.ti, align 4, !range !31, !noalias !2865, !noundef !12
  %i.vk = load i8, ptr %i.tj, align 1, !noalias !2865
  store i8 1, ptr %i.ti, align 4, !noalias !2865
  store i8 -128, ptr %i.tj, align 1, !noalias !2865
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hx
  %.sroa.3.0.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.vk, %bb.hz ], [ undef, %bb.hx ]
  %i.vl = phi i8 [ %i.vj, %bb.hz ], [ %i.vi, %bb.hx ] ; 3 uses
  store i8 %i.vl, ptr %i.b, align 1, !noalias !2865
  store i8 %.sroa.3.0.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.tl, align 1, !noalias !2865
  invoke void @_ZN5tokio7runtime4task3raw7RawTask4poll17h56a7c61ec8c9d9e2E(ptr noundef nonnull %i.uz)
          to label %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h84fd98b6fe0086e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ib, !noalias !2856

bb.ib:                                            ; preds = %bb.ia
  %i.vm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vl, 2
  br i1 %.not.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  invoke void @"_ZN84_$LT$tokio..task..coop..with_budget..ResetGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ddf8b4691e10912E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.b)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.ie, !noalias !2856

"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h84fd98b6fe0086e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ia
  %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vl, 2
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.id

bb.id:                                            ; preds = %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h84fd98b6fe0086e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke void @"_ZN84_$LT$tokio..task..coop..with_budget..ResetGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ddf8b4691e10912E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.b)
          to label %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !2861

bb.ie:                                            ; preds = %bb.ig, %bb.if, %bb.ic
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2856
  unreachable

bb.if:                                            ; preds = %bb.hy
  %i.vo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vp = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.uz)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ie, !noalias !2856

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.if
  br i1 %i.vp, label %bb.ig, label %.body.i.i.i.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.uz)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.ie, !noalias !2856

.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.id, %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h84fd98b6fe0086e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2865
  %i.vq = load i64, ptr %i.so, align 8, !noalias !2863, !noundef !12
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %bb.ih, label %.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i, !prof !23

bb.ih:                                            ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 -1, ptr %i.so, align 8, !noalias !2863
  %i.vs = load ptr, ptr %i.sr, align 8, !noalias !2863, !align !13, !noundef !12 ; 3 uses
  store ptr null, ptr %i.sr, align 8, !noalias !2863
  %.not.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vs, null
  br i1 %.not.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.is, !prof !18

.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1643414c8b69a654E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #35
          to label %.noexc23.i.i.cont.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !2861

.noexc23.i.i.cont.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ii:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %.thread44.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ij:                                            ; preds = %bb.hv
  unreachable

bb.ik:                                            ; preds = %bb.im, %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.il
  %i.vu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2856
  unreachable

bb.il:                                            ; preds = %bb.hv
  %i.vv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull align 8 %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ik, !noalias !2856

"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.il, %bb.hw
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ve, %bb.hw ], [ %i.vv, %bb.il ] ; 2 uses
  %i.vw = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.uz)
          to label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ik, !noalias !2856

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  br i1 %i.vw, label %bb.im, label %.body.i.i.i.i.i.i.i.i.i.i

bb.im:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.uz)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.ik, !noalias !2856

bb.in:                                            ; preds = %bb.hr
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 96
  invoke void @_ZN5tokio7runtime7metrics5batch12MetricsBatch30end_processing_scheduled_tasks17h00bbebfe3307b8afE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.vx)
          to label %bb.io unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2856

bb.io:                                            ; preds = %bb.in
  %i.vy = invoke noundef zeroext i1 @_ZN5tokio7runtime9scheduler14current_thread7Context16has_pending_work17h97edc6a13cd3504fE(ptr noundef nonnull align 8 %i.sn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ip unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2856

bb.ip:                                            ; preds = %bb.io
  %i.vz = load ptr, ptr %i.sn, align 8, !noalias !2855, !nonnull !12, !noundef !12
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 128 ; 2 uses
  br i1 %i.vy, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.wb = invoke noundef nonnull align 8 ptr @_ZN5tokio7runtime9scheduler14current_thread7Context4park17h90ab3192695954aaE(ptr noundef nonnull align 8 %i.sn, ptr noalias noundef nonnull align 8 %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 128 %i.wa)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !2861

bb.ir:                                            ; preds = %bb.ip
  %i.wc = invoke noundef nonnull align 8 ptr @_ZN5tokio7runtime9scheduler14current_thread7Context10park_yield17h1e8016d6cac2e0e0E(ptr noundef nonnull align 8 %i.sn, ptr noalias noundef nonnull align 8 %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 128 %i.wa)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !2861

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ir, %bb.iq
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wb, %bb.iq ], [ %i.wc, %bb.ir ] ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 96
  invoke void @_ZN5tokio7runtime7metrics5batch12MetricsBatch32start_processing_scheduled_tasks17h6252510c795fd2eaE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.wd)
          to label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2856

.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge:   ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.be = phi ptr [ %i.us, %.noexc6.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i ]
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.is:                                            ; preds = %bb.ih
  store i64 0, ptr %i.so, align 8, !noalias !2863
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.um, %i.uk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit57.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn43.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp60.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit57.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit59.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.041.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ss, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit57.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.ph52.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.041.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %.sroa.0.041.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #36
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.it, !noalias !2856

bb.it:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2856
  unreachable

.thread44.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ii, %bb.hd
  %.pn42.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.vt, %bb.ii ], [ %i.tu, %bb.hd ]
  %i.wf = load i64, ptr %i.so, align 8, !noalias !2855, !noundef !12
  %i.wg = add i64 %i.wf, 1
  store i64 %i.wg, ptr %i.so, align 8, !noalias !2855
  br label %.body.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.: ; preds = %bb.id, %bb.ir, %bb.iq, %bb.hp, %bb.hi, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp443 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.iu:                                            ; preds = %bb.gw
  %i.wh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %i.ss)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.iv, !noalias !2852

bb.iv:                                            ; preds = %bb.iu
  %i.wi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2852
  unreachable

bb.iw:                                            ; preds = %bb.gv
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %i.ss)
          to label %.noexc.i.i.i.i.i.i.i50.i unwind label %bb.gu, !noalias !2833

.noexc.i.i.i.i.i.i.i50.i:                         ; preds = %bb.iw
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc18.i.i.i.i.i.i.i.i unwind label %bb.gu, !noalias !2833

.noexc18.i.i.i.i.i.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i.i50.i
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ho ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.uf, %bb.ho ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2854
  store ptr %i.ta, ptr %i.sz, align 8, !noalias !2853
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.wj = load i64, ptr %i.so, align 8, !noalias !2833, !noundef !12
  %i.wk = icmp eq i64 %i.wj, 0
  br i1 %i.wk, label %bb.ix, label %bb.iz, !prof !23

bb.ix:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  store i64 -1, ptr %i.so, align 8, !noalias !2833
  %.val17.i.i.i.i.i.i.i.i = load ptr, ptr %i.sr, align 8, !noalias !2833, !align !13, !noundef !12 ; 2 uses
  %i.wl = icmp eq ptr %.val17.i.i.i.i.i.i.i.i, null
  br i1 %i.wl, label %bb.jb, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %.val17.i.i.i.i.i.i.i.i)
          to label %._crit_edge.i.i.i.i.i.i.i.i unwind label %bb.ja, !noalias !2833

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.iy
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.so, align 8, !noalias !2833
  %i.wm = add i64 %.pre.i.i.i.i.i.i.i.i, 1
  br label %bb.jb

bb.iz:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #35
          to label %bb.gs unwind label %bb.je, !noalias !2833

bb.ja:                                            ; preds = %bb.iy
  %i.wn = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.sr, align 8, !noalias !2833
  %i.wo = load i64, ptr %i.so, align 8, !noalias !2833, !noundef !12
  %i.wp = add i64 %i.wo, 1
  store i64 %i.wp, ptr %i.so, align 8, !noalias !2833
  br label %.body.i.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.ix
  %i.wq = phi i64 [ %i.wm, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %bb.ix ]
  store ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.sr, align 8, !noalias !2833
  store i64 %i.wq, ptr %i.so, align 8, !noalias !2833
  invoke void @"_ZN94_$LT$tokio..runtime..scheduler..current_thread..CoreGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcf285f159feb2175E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_ZN5tokio7runtime9scheduler14current_thread9CoreGuard5enter17h9e85cd9e9a47148aE.exit.i.i.i.i.i.i.i unwind label %bb.jc, !noalias !2833

bb.jc:                                            ; preds = %bb.jb
  %i.wr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l) #36
          to label %.body.i.i.i.i.i unwind label %bb.jd, !noalias !2833

bb.jd:                                            ; preds = %bb.jc
  %i.ws = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2833
  unreachable

bb.je:                                            ; preds = %bb.iz
  %i.wt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.gt, !noalias !2833

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.je, %bb.ja, %bb.iu, %.body.i.i.i.i.i.i.i.i.i.i, %bb.gu, %bb.gr
  %.pn.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.st, %bb.gr ], [ %i.wt, %bb.je ], [ %i.wn, %bb.ja ], [ %i.wh, %bb.iu ], [ %i.sx, %bb.gu ]
  invoke void @"_ZN94_$LT$tokio..runtime..scheduler..current_thread..CoreGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcf285f159feb2175E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %bb.jg unwind label %bb.jf, !noalias !2833

bb.jf:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.wu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l) #36
          to label %.body.i9.i.i.i.i.i.i unwind label %bb.jh, !noalias !2833

bb.jg:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.body.i.i.i.i.i unwind label %bb.gt, !noalias !2833

bb.jh:                                            ; preds = %bb.jf
  %i.wv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2833
  unreachable

_ZN5tokio7runtime9scheduler14current_thread9CoreGuard5enter17h9e85cd9e9a47148aE.exit.i.i.i.i.i.i.i: ; preds = %bb.jb
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2831

.noexc8.i.i.i.i.i:                                ; preds = %_ZN5tokio7runtime9scheduler14current_thread9CoreGuard5enter17h9e85cd9e9a47148aE.exit.i.i.i.i.i.i.i
  br i1 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on17hf49258b577400426E.exit.i.i.i.i.i.i, label %.noexc15.i.i.i.i.i.i, !prof !23

.noexc15.i.i.i.i.i.i:                             ; preds = %.noexc8.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2866
  store ptr @382, ptr %i.f, align 8, !noalias !2866
  %i.ww = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ww, align 8, !noalias !2866
  %i.wx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.wx, align 8, !noalias !2866
  %i.wy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wy, align 8, !noalias !2866
  %i.wz = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.wz, align 8, !noalias !2866
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @370) #35
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2831

.noexc9.i.i.i.i.i:                                ; preds = %.noexc15.i.i.i.i.i.i
  unreachable

_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on17hf49258b577400426E.exit.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2832
  br label %bb.jy

bb.ji:                                            ; preds = %.body.i.i.i9.i.i.i, %.thread.i.i.i.i.i.i, %bb.gk
  %i.xa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2833
  unreachable

.thread.i.i.i.i.i.i:                              ; preds = %bb.gk, %bb.gj, %.thread7.i.i.i.i.i.i
  %.pn3.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i, %.thread7.i.i.i.i.i.i ], [ %i.sg, %bb.gj ], [ %i.sg, %bb.gk ]
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$tokio..runtime..scheduler..current_thread..CoreGuard$GT$17h196a7805b849c60cE"(ptr noalias noundef align 8 dereferenceable(72) %i.n) #36
          to label %.body.i.i.i.i.i unwind label %bb.ji, !noalias !2833

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gg, %.noexc7.i.i.i.i.i, %bb.jj
  %lpad.loopexit.split-lp503 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i9.i.i.i

.body.i.i.i9.i.i.i:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i10.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp503, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E"(ptr noundef nonnull align 8 %i.j) #36
          to label %.body.i.i.i.i.i unwind label %bb.ji, !noalias !2833

bb.jj:                                            ; preds = %.noexc.i.i.i11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2834
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @371, i64 noundef 27, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @304, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @372) #35
          to label %.noexc16.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2833

.noexc16.i.i.i.i.i.i:                             ; preds = %bb.jj
  unreachable

bb.jk:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2834
  %i.xb = trunc nuw i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.xb, label %bb.jl, label %bb.jr

bb.jl:                                            ; preds = %bb.jk
  invoke void @"_ZN71_$LT$tokio..sync..notify..Notified$u20$as$u20$core..ops..drop..Drop$GT$4drop17h61472dea2587a20eE"(ptr noundef nonnull align 8 %i.j)
          to label %bb.jo unwind label %bb.jm, !noalias !2833

bb.jm:                                            ; preds = %bb.jl
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.rf, align 8, !noalias !2832, !align !13, !noundef !12 ; 2 uses
  %i.xd = icmp eq ptr %.val2.i.i.i.i.i.i.i, null
  br i1 %i.xd, label %.body.i.i.i.i.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.rg, align 8, !noalias !2832
  %i.xe = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i, i64 24
  %i.xf = load ptr, ptr %i.xe, align 8, !noalias !2833, !nonnull !12, !noundef !12
  invoke void %i.xf(ptr noundef %.val3.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i unwind label %bb.jq, !noalias !2833, !inline_history !4

bb.jo:                                            ; preds = %bb.jl
  %.val.i17.i.i.i.i.i.i = load ptr, ptr %i.rf, align 8, !noalias !2832, !align !13, !noundef !12 ; 2 uses
  %i.xg = icmp eq ptr %.val.i17.i.i.i.i.i.i, null
  br i1 %i.xg, label %"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E.exit.i.i.i.i.i.i", label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.rg, align 8, !noalias !2832
  %i.xh = getelementptr inbounds nuw i8, ptr %.val.i17.i.i.i.i.i.i, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !noalias !2833, !nonnull !12, !noundef !12
  invoke void %i.xi(ptr noundef %.val1.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E.exit.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2831, !inline_history !2678

bb.jq:                                            ; preds = %bb.jn
  %i.xj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2833
  unreachable

"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E.exit.i.i.i.i.i.i": ; preds = %bb.jp, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2832
  br label %bb.jy

bb.jr:                                            ; preds = %bb.jk
  invoke void @"_ZN71_$LT$tokio..sync..notify..Notified$u20$as$u20$core..ops..drop..Drop$GT$4drop17h61472dea2587a20eE"(ptr noundef nonnull align 8 %i.j)
          to label %bb.ju unwind label %bb.js, !noalias !2833

bb.js:                                            ; preds = %bb.jr
  %i.xk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i18.i.i.i.i.i.i = load ptr, ptr %i.rf, align 8, !noalias !2832, !align !13, !noundef !12 ; 2 uses
  %i.xl = icmp eq ptr %.val2.i18.i.i.i.i.i.i, null
  br i1 %i.xl, label %.body.i.i.i.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %.val3.i19.i.i.i.i.i.i = load ptr, ptr %i.rg, align 8, !noalias !2832
  %i.xm = getelementptr inbounds nuw i8, ptr %.val2.i18.i.i.i.i.i.i, i64 24
  %i.xn = load ptr, ptr %i.xm, align 8, !noalias !2833, !nonnull !12, !noundef !12
  invoke void %i.xn(ptr noundef %.val3.i19.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i unwind label %bb.jw, !noalias !2833, !inline_history !4

end_hunk_10
begin_hunk_11_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h915282f64c0121dbE:bb.a
bb.ig:                                            ; preds = %bb.if
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.cq, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i unwind label %bb.in, !noalias !3434

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i:         ; preds = %bb.ig
  store i8 1, ptr %i.cr, align 8, !noalias !3443
  br label %bb.ih

bb.ih:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i, %bb.if
  %i.un = load i8, ptr %i.dq, align 4, !range !31, !noalias !3443, !noundef !12
  %i.uo = load i8, ptr %i.dr, align 1, !noalias !3443
  store i8 1, ptr %i.dq, align 4, !noalias !3443
  store i8 -128, ptr %i.dr, align 1, !noalias !3443
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.if
  %.sroa.3.0.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.uo, %bb.ih ], [ undef, %bb.if ]
  %i.up = phi i8 [ %i.un, %bb.ih ], [ %i.um, %bb.if ] ; 3 uses
  store i8 %i.up, ptr %i.b, align 1, !noalias !3443
  store i8 %.sroa.3.0.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.sp, align 1, !noalias !3443
  invoke void @_ZN5tokio7runtime4task3raw7RawTask4poll17h56a7c61ec8c9d9e2E(ptr noundef nonnull %i.ud)
          to label %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h269b10edca9f67d2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ij, !noalias !3434

bb.ij:                                            ; preds = %bb.ii
  %i.uq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.up, 2
  br i1 %.not.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  invoke void @"_ZN84_$LT$tokio..task..coop..with_budget..ResetGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ddf8b4691e10912E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.b)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.im, !noalias !3434

"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h269b10edca9f67d2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ii
  %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.up, 2
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.il

bb.il:                                            ; preds = %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h269b10edca9f67d2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke void @"_ZN84_$LT$tokio..task..coop..with_budget..ResetGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ddf8b4691e10912E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.b)
          to label %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !3439

bb.im:                                            ; preds = %bb.io, %bb.in, %bb.ik
  %i.ur = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3434
  unreachable

bb.in:                                            ; preds = %bb.ig
  %i.us = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ut = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.ud)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.im, !noalias !3434

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.in
  br i1 %i.ut, label %bb.io, label %.body.i.i.i.i.i.i.i.i.i.i

bb.io:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.ud)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.im, !noalias !3434

.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.il, %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h269b10edca9f67d2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3443
  %i.uu = load i64, ptr %i.ru, align 8, !noalias !3441, !noundef !12
  %i.uv = icmp eq i64 %i.uu, 0
  br i1 %i.uv, label %bb.ip, label %.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i, !prof !23

bb.ip:                                            ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 -1, ptr %i.ru, align 8, !noalias !3441
  %i.uw = load ptr, ptr %i.rx, align 8, !noalias !3441, !align !13, !noundef !12 ; 3 uses
  store ptr null, ptr %i.rx, align 8, !noalias !3441
  %.not.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.uw, null
  br i1 %.not.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ja, !prof !18

.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %"_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1696c83da17a22eaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #35
          to label %.noexc23.i.i.cont.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !3439

.noexc23.i.i.cont.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.iq:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %.thread44.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ir:                                            ; preds = %bb.id
  unreachable

bb.is:                                            ; preds = %bb.iu, %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.it
  %i.uy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3434
  unreachable

bb.it:                                            ; preds = %bb.id
  %i.uz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull align 8 %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.is, !noalias !3434

"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.it, %bb.ie
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ui, %bb.ie ], [ %i.uz, %bb.it ] ; 2 uses
  %i.va = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.ud)
          to label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.is, !noalias !3434

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  br i1 %i.va, label %bb.iu, label %.body.i.i.i.i.i.i.i.i.i.i

bb.iu:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.ud)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.is, !noalias !3434

bb.iv:                                            ; preds = %bb.hz
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 96
  invoke void @_ZN5tokio7runtime7metrics5batch12MetricsBatch30end_processing_scheduled_tasks17h00bbebfe3307b8afE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.vb)
          to label %bb.iw unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !3434

bb.iw:                                            ; preds = %bb.iv
  %i.vc = invoke noundef zeroext i1 @_ZN5tokio7runtime9scheduler14current_thread7Context16has_pending_work17h97edc6a13cd3504fE(ptr noundef nonnull align 8 %i.rt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ix unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !3434

bb.ix:                                            ; preds = %bb.iw
  %i.vd = load ptr, ptr %i.rt, align 8, !noalias !3433, !nonnull !12, !noundef !12
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 128 ; 2 uses
  br i1 %i.vc, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.vf = invoke noundef nonnull align 8 ptr @_ZN5tokio7runtime9scheduler14current_thread7Context4park17h90ab3192695954aaE(ptr noundef nonnull align 8 %i.rt, ptr noalias noundef nonnull align 8 %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 128 %i.ve)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !3439

bb.iz:                                            ; preds = %bb.ix
  %i.vg = invoke noundef nonnull align 8 ptr @_ZN5tokio7runtime9scheduler14current_thread7Context10park_yield17h1e8016d6cac2e0e0E(ptr noundef nonnull align 8 %i.rt, ptr noalias noundef nonnull align 8 %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 128 %i.ve)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit., !noalias !3439

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.iz, %bb.iy
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vf, %bb.iy ], [ %i.vg, %bb.iz ] ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 96
  invoke void @_ZN5tokio7runtime7metrics5batch12MetricsBatch32start_processing_scheduled_tasks17h6252510c795fd2eaE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.vh)
          to label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !3434

.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge:   ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.be = phi ptr [ %i.tw, %.noexc6.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i ]
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ja:                                            ; preds = %bb.ip
  store i64 0, ptr %i.ru, align 8, !noalias !3441
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.tq, %i.to
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit57.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn43.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp60.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit57.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit59.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.041.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ry, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit57.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.ph52.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.041.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %.sroa.0.041.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #36
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.jb, !noalias !3434

bb.jb:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3434
  unreachable

.thread44.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.iq, %bb.hl
  %.pn42.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ux, %bb.iq ], [ %i.sy, %bb.hl ]
  %i.vj = load i64, ptr %i.ru, align 8, !noalias !3433, !noundef !12
  %i.vk = add i64 %i.vj, 1
  store i64 %i.vk, ptr %i.ru, align 8, !noalias !3433
  br label %.body.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.: ; preds = %bb.il, %bb.iz, %bb.iy, %bb.hx, %bb.hq, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23.i.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp425 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.jc:                                            ; preds = %bb.he
  %i.vl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %i.ry)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.jd, !noalias !3430

bb.jd:                                            ; preds = %bb.jc
  %i.vm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3430
  unreachable

bb.je:                                            ; preds = %bb.hd
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %i.ry)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.hc, !noalias !3411

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.je
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc18.i.i.i.i.i.i.i.i unwind label %bb.hc, !noalias !3411

.noexc18.i.i.i.i.i.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.hw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.hw ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.4129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tj, %bb.hw ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3432
  store ptr %i.sg, ptr %i.sf, align 8, !noalias !3431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.vn = load i64, ptr %i.ru, align 8, !noalias !3411, !noundef !12
  %i.vo = icmp eq i64 %i.vn, 0
  br i1 %i.vo, label %bb.jf, label %bb.jh, !prof !23

bb.jf:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  store i64 -1, ptr %i.ru, align 8, !noalias !3411
  %.val17.i.i.i.i.i.i.i.i = load ptr, ptr %i.rx, align 8, !noalias !3411, !align !13, !noundef !12 ; 2 uses
  %i.vp = icmp eq ptr %.val17.i.i.i.i.i.i.i.i, null
  br i1 %i.vp, label %bb.jj, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %.val17.i.i.i.i.i.i.i.i)
          to label %._crit_edge.i.i.i.i.i.i.i.i unwind label %bb.ji, !noalias !3411

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.jg
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.ru, align 8, !noalias !3411
  %i.vq = add i64 %.pre.i.i.i.i.i.i.i.i, 1
  br label %bb.jj

bb.jh:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #35
          to label %bb.ha unwind label %bb.jm, !noalias !3411

bb.ji:                                            ; preds = %bb.jg
  %i.vr = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rx, align 8, !noalias !3411
  %i.vs = load i64, ptr %i.ru, align 8, !noalias !3411, !noundef !12
  %i.vt = add i64 %i.vs, 1
  store i64 %i.vt, ptr %i.ru, align 8, !noalias !3411
  br label %.body.i.i.i.i.i.i.i.i

bb.jj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.jf
  %i.vu = phi i64 [ %i.vq, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %bb.jf ]
  store ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rx, align 8, !noalias !3411
  store i64 %i.vu, ptr %i.ru, align 8, !noalias !3411
  invoke void @"_ZN94_$LT$tokio..runtime..scheduler..current_thread..CoreGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcf285f159feb2175E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_ZN5tokio7runtime9scheduler14current_thread9CoreGuard5enter17h399e1bde30827c9cE.exit.i.i.i.i.i.i.i unwind label %bb.jk, !noalias !3411

bb.jk:                                            ; preds = %bb.jj
  %i.vv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l) #36
          to label %.body.i.i.i.i46.i unwind label %bb.jl, !noalias !3411

bb.jl:                                            ; preds = %bb.jk
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3411
  unreachable

bb.jm:                                            ; preds = %bb.jh
  %i.vx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr nonnull %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.hb, !noalias !3411

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.jm, %bb.ji, %bb.jc, %.body.i.i.i.i.i.i.i.i.i.i, %bb.hc, %bb.gz
  %.pn.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i49.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.rz, %bb.gz ], [ %i.vx, %bb.jm ], [ %i.vr, %bb.ji ], [ %i.vl, %bb.jc ], [ %i.sd, %bb.hc ]
  invoke void @"_ZN94_$LT$tokio..runtime..scheduler..current_thread..CoreGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcf285f159feb2175E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %bb.jo unwind label %bb.jn, !noalias !3411

bb.jn:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.vy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l) #36
          to label %.body.i9.i.i.i.i.i.i unwind label %bb.jp, !noalias !3411

bb.jo:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.body.i.i.i.i46.i unwind label %bb.hb, !noalias !3411

bb.jp:                                            ; preds = %bb.jn
  %i.vz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3411
  unreachable

_ZN5tokio7runtime9scheduler14current_thread9CoreGuard5enter17h399e1bde30827c9cE.exit.i.i.i.i.i.i.i: ; preds = %bb.jj
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$tokio..runtime..scheduler..Context$GT$17h2bf0c600a5df2e17E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3409

.noexc8.i.i.i.i.i:                                ; preds = %_ZN5tokio7runtime9scheduler14current_thread9CoreGuard5enter17h399e1bde30827c9cE.exit.i.i.i.i.i.i.i
  br i1 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on17h879a4a91e7965bafE.exit.i.i.i.i.i.i, label %.noexc15.i.i.i.i.i.i, !prof !23

.noexc15.i.i.i.i.i.i:                             ; preds = %.noexc8.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3444
  store ptr @382, ptr %i.f, align 8, !noalias !3444
  %i.wa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.wa, align 8, !noalias !3444
  %i.wb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.wb, align 8, !noalias !3444
  %i.wc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wc, align 8, !noalias !3444
  %i.wd = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.wd, align 8, !noalias !3444
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @370) #35
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3409

.noexc9.i.i.i.i.i:                                ; preds = %.noexc15.i.i.i.i.i.i
  unreachable

_ZN5tokio7runtime9scheduler14current_thread9CoreGuard8block_on17h879a4a91e7965bafE.exit.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3410
  br label %bb.kg

bb.jq:                                            ; preds = %.body.i.i.i9.i.i.i, %.thread.i.i.i.i.i.i, %bb.gs
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3411
  unreachable

.thread.i.i.i.i.i.i:                              ; preds = %bb.gs, %bb.gr, %.thread7.i.i.i.i.i.i
  %.pn3.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i, %.thread7.i.i.i.i.i.i ], [ %i.rm, %bb.gr ], [ %i.rm, %bb.gs ]
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$tokio..runtime..scheduler..current_thread..CoreGuard$GT$17h196a7805b849c60cE"(ptr noalias noundef align 8 dereferenceable(72) %i.n) #36
          to label %.body.i.i.i.i46.i unwind label %bb.jq, !noalias !3411

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.go, %.noexc7.i.i.i.i.i, %bb.jr
  %lpad.loopexit.split-lp485 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i9.i.i.i

.body.i.i.i9.i.i.i:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i.i56.i
  %eh.lpad-body.i.i.i10.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i57.i, %.body.i.i.i.i.i.i56.i ], [ %lpad.loopexit.split-lp485, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E"(ptr noundef nonnull align 8 %i.j) #36
          to label %.body.i.i.i.i46.i unwind label %bb.jq, !noalias !3411

bb.jr:                                            ; preds = %.noexc.i.i.i11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3412
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @371, i64 noundef 27, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @304, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @372) #35
          to label %.noexc16.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3411

.noexc16.i.i.i.i.i.i:                             ; preds = %bb.jr
  unreachable

bb.js:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3412
  %i.wf = trunc nuw i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i58.i to i1
  br i1 %i.wf, label %bb.jt, label %bb.jz

bb.jt:                                            ; preds = %bb.js
  invoke void @"_ZN71_$LT$tokio..sync..notify..Notified$u20$as$u20$core..ops..drop..Drop$GT$4drop17h61472dea2587a20eE"(ptr noundef nonnull align 8 %i.j)
          to label %bb.jw unwind label %bb.ju, !noalias !3411

bb.ju:                                            ; preds = %bb.jt
  %i.wg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.ql, align 8, !noalias !3410, !align !13, !noundef !12 ; 2 uses
  %i.wh = icmp eq ptr %.val2.i.i.i.i.i.i.i, null
  br i1 %i.wh, label %.body.i.i.i.i46.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.qm, align 8, !noalias !3410
  %i.wi = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8, !noalias !3411, !nonnull !12, !noundef !12
  invoke void %i.wj(ptr noundef %.val3.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i46.i unwind label %bb.jy, !noalias !3411, !inline_history !4

bb.jw:                                            ; preds = %bb.jt
  %.val.i17.i.i.i.i.i.i = load ptr, ptr %i.ql, align 8, !noalias !3410, !align !13, !noundef !12 ; 2 uses
  %i.wk = icmp eq ptr %.val.i17.i.i.i.i.i.i, null
  br i1 %i.wk, label %"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E.exit.i.i.i.i.i.i", label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.qm, align 8, !noalias !3410
  %i.wl = getelementptr inbounds nuw i8, ptr %.val.i17.i.i.i.i.i.i, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8, !noalias !3411, !nonnull !12, !noundef !12
  invoke void %i.wm(ptr noundef %.val1.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E.exit.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3409, !inline_history !3169

bb.jy:                                            ; preds = %bb.jv
  %i.wn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3411
  unreachable

"_ZN4core3ptr50drop_in_place$LT$tokio..sync..notify..Notified$GT$17h0ec982033684bb16E.exit.i.i.i.i.i.i": ; preds = %bb.jx, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3410
  br label %bb.kg

bb.jz:                                            ; preds = %bb.js
  invoke void @"_ZN71_$LT$tokio..sync..notify..Notified$u20$as$u20$core..ops..drop..Drop$GT$4drop17h61472dea2587a20eE"(ptr noundef nonnull align 8 %i.j)
          to label %bb.kc unwind label %bb.ka, !noalias !3411

bb.ka:                                            ; preds = %bb.jz
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i18.i.i.i.i.i.i = load ptr, ptr %i.ql, align 8, !noalias !3410, !align !13, !noundef !12 ; 2 uses
  %i.wp = icmp eq ptr %.val2.i18.i.i.i.i.i.i, null
  br i1 %i.wp, label %.body.i.i.i.i46.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %.val3.i19.i.i.i.i.i.i = load ptr, ptr %i.qm, align 8, !noalias !3410
  %i.wq = getelementptr inbounds nuw i8, ptr %.val2.i18.i.i.i.i.i.i, i64 24
  %i.wr = load ptr, ptr %i.wq, align 8, !noalias !3411, !nonnull !12, !noundef !12
  invoke void %i.wr(ptr noundef %.val3.i19.i.i.i.i.i.i)
          to label %.body.i.i.i.i46.i unwind label %bb.ke, !noalias !3411, !inline_history !4

end_hunk_11
begin_hunk_12_@"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E":bb.a
  %i.ju = extractvalue { i64, ptr } %i.jt, 0      ; 3 uses
  %.pre.i.i = load i8, ptr %.sroa.1071.0..sroa_idx.i, align 8, !range !41, !alias.scope !3874, !noalias !3868 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  %i.jv = icmp eq i8 %.pre.i.i, 2
  br i1 %i.jv, label %bb.dl, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  %i.jw = load ptr, ptr %i.h, align 8, !alias.scope !3876, !noalias !3868, !noundef !12
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i", label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.h)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i" unwind label %bb.db, !noalias !3868

bb.db:                                            ; preds = %bb.da
  %i.jy = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i25.i = load ptr, ptr %.sroa.966.0..sroa_idx.i, align 8, !alias.scope !3877, !noalias !3868, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %.val2.i.i.i25.i, i8 %.pre.i.i) #36
          to label %common.resume unwind label %bb.df, !noalias !3878

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i": ; preds = %bb.da, %bb.cz
  %.val.i.i.i.i = load ptr, ptr %.sroa.966.0..sroa_idx.i, align 8, !alias.scope !3877, !noalias !3868, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4
  %i.ka = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.ka, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i"
  %i.kb = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3878
  %i.kc = and i64 %i.kb, 9223372036854775807
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, label %.noexc26.i, !prof !23

.noexc26.i:                                       ; preds = %bb.dc
  %i.ke = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ke, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc26.i
  store atomic i8 1, ptr %i.jz monotonic, align 4, !noalias !3878
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i: ; preds = %bb.dd, %.noexc26.i, %bb.dc, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i"
  %i.kf = atomicrmw xchg ptr %.val.i.i.i.i, i32 0 release, align 4, !noalias !3878
  %i.kg = icmp eq i32 %i.kf, 2
  br i1 %i.kg, label %bb.de, label %bb.dl, !prof !18

bb.de:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.val.i.i.i.i)
  br label %bb.dl

bb.df:                                            ; preds = %bb.db
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3878
  unreachable

bb.dg:                                            ; preds = %.body.i.i
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3868
  unreachable

bb.dh:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i
  br i1 %i.gd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kj = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.kk = and i64 %i.kj, 9223372036854775807
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, label %.noexc31.i, !prof !23

.noexc31.i:                                       ; preds = %bb.di
  %i.km = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.km, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, label %bb.dj

bb.dj:                                            ; preds = %.noexc31.i
  store atomic i8 1, ptr %i.fy monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i: ; preds = %bb.dj, %.noexc31.i, %bb.di, %bb.dh
  %i.kn = atomicrmw xchg ptr %.8.val, i32 0 release, align 4
  %i.ko = icmp eq i32 %i.kn, 2
  br i1 %i.ko, label %bb.dk, label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit", !prof !18

bb.dk:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.8.val)
  br label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit"

bb.dl:                                            ; preds = %bb.de, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, %bb.cy, %bb.cx
  %.sroa.0.017.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.cx ], [ %i.ju, %bb.cy ], [ %i.ju, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i ], [ %i.ju, %bb.de ]
  %.pn16.i.i = phi { i64, ptr } [ %.merged.i.i, %bb.cx ], [ %i.jt, %bb.cy ], [ %i.jt, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i ], [ %i.jt, %bb.de ]
  %.sroa.3.0.i.i = extractvalue { i64, ptr } %.pn16.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3868
  br label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit"

bb.dm:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull align 8 %.8.val, i8 %.sroa.01.0.i.i.i) #36
          to label %.body.thread90.i unwind label %bb.cf

.body.thread90.i:                                 ; preds = %bb.dm, %bb.bj, %.split.thread.i, %.body.i
  %.pn.pn93.i = phi { ptr, i32 } [ %i.hz, %.body.i ], [ %i.gb, %bb.bj ], [ %lpad.thr_comm.split-lp.i, %bb.dm ], [ %lpad.thr_comm.i17, %.split.thread.i ] ; 2 uses
  %i.kp = icmp eq ptr %0, null
  br i1 %i.kp, label %common.resume, label %bb.dn

bb.dn:                                            ; preds = %.body.thread90.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %common.resume unwind label %bb.cf

"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, %bb.dk, %bb.dl
  %.sroa.0.0.pn.i = phi i64 [ %.sroa.0.017.i.i, %bb.dl ], [ 2, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i" ], [ 1, %bb.dk ], [ 1, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i ]
  %.pn95.i = phi ptr [ %.sroa.3.0.i.i, %bb.dl ], [ %0, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i" ], [ %0, %bb.dk ], [ %0, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.do

bb.do:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit", %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit"
  %.sroa.0.0.i.i.pn = phi i64 [ %.sroa.0.0.i.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit" ], [ %.sroa.0.0.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit" ], [ %.sroa.0.0.pn.i, %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit" ] ; 3 uses
  %.pn2 = phi ptr [ %0, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit" ], [ %0, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit" ], [ %.pn95.i, %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit" ] ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.i.i.pn, 2
  br i1 %.not, label %bb.dv, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.i.i.pn, ptr %i.a, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.pn2, ptr %i.kq, align 8
  %i.kr = trunc nuw i64 %.sroa.0.0.i.i.pn to i1
  br i1 %i.kr, label %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit", label %bb.dq, !prof !23

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #35
          to label %bb.dr unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = icmp eq ptr %.pn2, null
  br i1 %i.kt, label %common.resume, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.kq)
          to label %common.resume unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit": ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.dv

bb.dv:                                            ; preds = %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit", %bb.do
  %.sroa.3.0 = phi ptr [ undef, %bb.do ], [ %.pn2, %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit" ]
  %.sroa.0.0 = phi i64 [ 0, %bb.do ], [ 1, %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit" ]
  %i.kv = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.kw = insertvalue { i64, ptr } %i.kv, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.kw
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17heb7b0ef73999bf94E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !51, !noundef !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val)
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28, !noundef !12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  %i.w = icmp samesign ult i32 %i.u, 1000000000
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %bb.d, %bb.e
  %i.y = load atomic i64, ptr %i.v acquire, align 8
  switch i64 %i.y, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.e
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.e:                                             ; preds = %.split9.us.i
  tail call void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
  br label %.split9.us.i

.split9.i:                                        ; preds = %bb.d, %bb.i
  %i.z = load atomic i64, ptr %i.v acquire, align 8
  switch i64 %i.z, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.f:                                             ; preds = %.split9.i
  %i.aa = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.ab = extractvalue { i64, i32 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { i64, i32 } %i.aa, 1      ; 3 uses
  %i.ad = icmp eq i64 %i.ab, %i.s
  br i1 %i.ad, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.ae = icmp ult i32 %i.ac, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.w)
  %i.af = icmp samesign ult i32 %i.ac, %i.u
  br i1 %i.af, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp slt i64 %i.ab, %i.s
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.ah = cmpxchg ptr %i.v, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ah, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.ai = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.ab, i32 noundef %i.ac) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split9.i

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit: ; preds = %bb.h
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ah, 0
  switch i64 %.sroa.01.0.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ], !prof !52

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #35
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread: ; preds = %.split9.i, %.split9.i, %.split9.us.i, %.split9.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h5e5c5e8dfd220d35E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.al = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !18

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4: ; preds = %.split9.i, %.split9.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  ret void

bb.k:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !3891, !nonnull !12, !noundef !12
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !3891
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4

bb.m:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17h50b048951feec4e7E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !3901
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !3901
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3901
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !3901
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load atomic i8, ptr %i.j monotonic, align 4, !noalias !3901
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit", label %bb.e, !prof !23

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3902
  store ptr %0, ptr %i.a, align 8, !noalias !3902
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.l, align 8, !noalias !3902
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #35
          to label %bb.g unwind label %bb.f, !noalias !3903

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #36
          to label %common.resume unwind label %bb.h, !noalias !3903

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3903
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.f ], [ %lpad.loopexit.split-lp5, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit"
  %i.o = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !31, !noundef !12
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit"
  store i8 1, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3904)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3904, !nonnull !12, !noundef !12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3904, !noundef !12 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i
  %.sroa.0.07.i = phi ptr [ %i.z, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i ], [ %i.u, %bb.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.val.i = load ptr, ptr %.sroa.0.07.i, align 8, !noalias !3904, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ab = cmpxchg ptr %i.aa, i64 0, i64 2 acq_rel acquire, align 8, !noalias !3904
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ab, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.j, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i

._crit_edge.i:                                    ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i, %bb.i
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %.sroa.0.07.i, align 8, !noalias !3904, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val3.i = load ptr, ptr %i.ad, align 8, !noalias !3904, !nonnull !12, !noundef !12
end_hunk_12
begin_hunk_13_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17h7cbb1c5630466581E":bb.a
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !3915
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !3915
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3915
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !3915
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load atomic i8, ptr %i.j monotonic, align 4, !noalias !3915
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit", label %bb.e, !prof !23

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3916
  store ptr %0, ptr %i.a, align 8, !noalias !3916
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.l, align 8, !noalias !3916
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #35
          to label %bb.g unwind label %bb.f, !noalias !3917

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #36
          to label %common.resume unwind label %bb.h, !noalias !3917

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3917
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.f ], [ %lpad.loopexit.split-lp5, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit"
  %i.o = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !31, !noundef !12
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit"
  store i8 1, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3918)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3918, !nonnull !12, !noundef !12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3918, !noundef !12 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i
  %.sroa.0.07.i = phi ptr [ %i.z, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i ], [ %i.u, %bb.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.val.i = load ptr, ptr %.sroa.0.07.i, align 8, !noalias !3918, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ab = cmpxchg ptr %i.aa, i64 0, i64 2 acq_rel acquire, align 8, !noalias !3918
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ab, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.j, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i

._crit_edge.i:                                    ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i, %bb.i
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %.sroa.0.07.i, align 8, !noalias !3918, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val3.i = load ptr, ptr %i.ad, align 8, !noalias !3918, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40 ; 2 uses
  %i.af = atomicrmw xchg ptr %i.ae, i32 1 release, align 4, !noalias !3918
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ah = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.ae)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i: ; preds = %bb.k, %bb.j, %.lr.ph.i
  %i.ai = icmp eq ptr %i.z, %i.x
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.k, %._crit_edge.i12, %._crit_edge.i
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #36
          to label %common.resume unwind label %bb.r

_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit: ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3919)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !3919, !nonnull !12, !noundef !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3919, !noundef !12 ; 2 uses
  %.idx.i6 = mul nuw nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i6
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %._crit_edge.i12, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11
  %.sroa.0.07.i8 = phi ptr [ %i.aq, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11 ], [ %i.al, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i8, i64 24 ; 2 uses
  %.val.i9 = load ptr, ptr %.sroa.0.07.i8, align 8, !noalias !3919, !nonnull !12, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i9, i64 24
  %i.as = cmpxchg ptr %i.ar, i64 0, i64 2 acq_rel acquire, align 8, !noalias !3919
  %.sroa.18.0.in.i.i.i10 = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i10, label %bb.l, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11

._crit_edge.i12:                                  ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph.i7
  %i.at = load ptr, ptr %.sroa.0.07.i8, align 8, !noalias !3919, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.val3.i13 = load ptr, ptr %i.au, align 8, !noalias !3919, !nonnull !12, !noundef !12
  %i.av = getelementptr inbounds nuw i8, ptr %.val3.i13, i64 40 ; 2 uses
  %i.aw = atomicrmw xchg ptr %i.av, i32 1 release, align 4, !noalias !3919
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11

bb.m:                                             ; preds = %bb.l
  %i.ay = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.av)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11: ; preds = %bb.m, %bb.l, %.lr.ph.i7
  %i.az = icmp eq ptr %i.aq, %i.ao
  br i1 %i.az, label %._crit_edge.i12, label %.lr.ph.i7

_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15: ; preds = %._crit_edge.i12, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit"
  br i1 %i.o, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15
  %i.ba = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o, !prof !23

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15
  %i.be = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.q, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", !prof !18

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h6022f70b95152c90E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.613 = alloca [16 x i8], align 8          ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.63 = alloca [16 x i8], align 8           ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !align !13, !noundef !12
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = load ptr, ptr %0, align 8, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i8 0, ptr %i.l, align 8
  store i64 1, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !align !13, !noundef !12 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4002
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.q = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !noalias !4002
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.s, align 8, !noalias !4002
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !4002
  store ptr %.0.val, ptr %i.a, align 8, !noalias !4002
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !4003, !noundef !12 ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !range !24, !alias.scope !4003, !noundef !12
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbcbdf408c37e5351E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279)
          to label %bb.j unwind label %bb.d, !noalias !4004

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = atomicrmw add ptr %.0.val, i64 -1 release, align 8, !noalias !4005
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, %bb.v
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.ae, %bb.e, %bb.d, %bb.al, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.bd ], [ %i.dm, %bb.al ], [ %i.cv, %bb.ae ], [ %i.y, %bb.d ], [ %i.em, %bb.aw ], [ %i.y, %bb.e ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.07.2 = phi i1 [ false, %bb.bd ], [ false, %bb.al ], [ false, %bb.ae ], [ true, %bb.d ], [ false, %bb.aw ], [ true, %bb.e ], [ %.sroa.07.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ac = load i64, ptr %i.f, align 8, !range !34, !alias.scope !4006, !noundef !12
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = load ptr, ptr %i.m, align 8
  %i.af = icmp eq ptr %i.ae, null
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit", label %bb.i

bb.i:                                             ; preds = %.body
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
          to label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit" unwind label %bb.at

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.p, %bb.q, %bb.t, %.noexc38
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.v, %bb.m, %bb.o, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ap, %bb.ar, %bb.bh, %bb.bj
  %.sroa.07.3.ph.ph.ph = phi i1 [ false, %bb.ap ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.m ], [ false, %bb.w ], [ false, %bb.bh ], [ false, %bb.z ], [ false, %bb.o ], [ false, %bb.bj ], [ false, %.invoke ], [ false, %bb.x ], [ true, %bb.j ], [ false, %bb.ar ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !4003, !nonnull !12, !noundef !12
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.aj = add i64 %i.v, 1
  store i64 %i.aj, ptr %i.u, align 8, !alias.scope !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4002
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i8, ptr %i.al, align 8, !range !31, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.m
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc34
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.n, %.noexc34, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", !prof !18

bb.o:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.o)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !28, !noundef !12 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  %i.bb = icmp samesign ult i32 %i.az, 1000000000
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", %bb.p
  %i.bd = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.bd, label %.thread28 [
    i64 0, label %bb.p
    i64 1, label %.thread
    i64 2, label %.thread31
  ]

bb.p:                                             ; preds = %.split9.us.i
  invoke void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %.split9.us.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split9.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", %.noexc38
  %i.be = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.be, label %.thread28 [
    i64 0, label %bb.q
    i64 1, label %.thread
    i64 2, label %.thread31
  ]

bb.q:                                             ; preds = %.split9.i
  %i.bf = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc37:                                         ; preds = %bb.q
  %i.bg = extractvalue { i64, i32 } %i.bf, 0      ; 3 uses
  %i.bh = extractvalue { i64, i32 } %i.bf, 1      ; 3 uses
  %i.bi = icmp eq i64 %i.bg, %i.ax
  br i1 %i.bi, label %.split.i, label %bb.r

.split.i:                                         ; preds = %.noexc37
  %i.bj = icmp ult i32 %i.bh, 1000000000
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.assume(i1 %i.bb)
  %i.bk = icmp samesign ult i32 %i.bh, %i.az
  br i1 %i.bk, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.noexc37
  %i.bl = icmp slt i64 %i.bg, %i.ax
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.bm = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bm, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bn = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.bg, i32 noundef %i.bh)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %bb.t
  %i.bo = extractvalue { i64, i32 } %i.bn, 0
  %i.bp = extractvalue { i64, i32 } %i.bn, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, i64 noundef %i.bo, i32 noundef %i.bp)
          to label %.split9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bm, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread28 [
    i64 0, label %bb.v
    i64 1, label %.thread
    i64 2, label %.thread31
  ], !prof !53

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #35
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split9.i, %.split9.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !12, !align !13, !noundef !12 ; 9 uses
end_hunk_13
begin_hunk_14_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h6022f70b95152c90E":bb.a

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, %.thread28
  %.pr = load i64, ptr %i.f, align 8, !alias.scope !4018
  %i.ef = icmp eq i64 %.pr, 0
  %i.eg = load ptr, ptr %i.m, align 8
  %i.eh = icmp eq ptr %i.eg, null
  %or.cond47 = select i1 %i.ef, i1 true, i1 %i.eh
  br i1 %or.cond47, label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57", label %bb.as

bb.as:                                            ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit"
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
  br label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57"

bb.at:                                            ; preds = %bb.i, %bb.al, %bb.bd, %bb.bl
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.au:                                            ; preds = %.noexc46, %.noexc45
  %.sroa.01.0.i.i43 = phi i8 [ %i.cj, %.noexc46 ], [ 0, %.noexc45 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.ek = load atomic i8, ptr %i.ej monotonic, align 4, !noalias !4008
  %.not48 = icmp eq i8 %i.ek, 0
  br i1 %.not48, label %bb.az, label %bb.av, !prof !23

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4019
  store ptr %i.cb, ptr %i.c, align 8, !noalias !4019
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i43, ptr %i.el, align 8, !noalias !4019
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #35
          to label %bb.ax unwind label %bb.aw, !noalias !4020

bb.aw:                                            ; preds = %bb.av
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #36
          to label %.body unwind label %bb.ay, !noalias !4020

bb.ax:                                            ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4020
  unreachable

bb.az:                                            ; preds = %bb.au
  %i.eo = trunc nuw i8 %.sroa.01.0.i.i43 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !4021, !nonnull !12, !noundef !12 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !4021, !noundef !12 ; 7 uses
  %.idx = mul nuw nsw i64 %i.es, 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, label %.lr.ph

bb.ba:                                            ; preds = %.lr.ph
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %i.ew = add nuw nsw i64 %i.ez, 1
  %i.ex = icmp eq ptr %i.ev, %i.et
  br i1 %i.ex, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az, %bb.ba
  %i.ey = phi ptr [ %i.ev, %bb.ba ], [ %i.eq, %bb.az ] ; 2 uses
  %i.ez = phi i64 [ %i.ew, %bb.ba ], [ 0, %bb.az ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !4022, !noalias !4023, !noundef !12
  %.not.i.i58 = icmp eq i64 %i.fb, %i.i
  br i1 %.not.i.i58, label %bb.bb, label %bb.ba

bb.bb:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !4024)
  %i.fc = icmp ult i64 %i.es, 384307168202282326
  call void @llvm.assume(i1 %i.fc)
  %.not.i5.i59 = icmp samesign ult i64 %i.ez, %i.es
  br i1 %.not.i5.i59, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62, label %bb.bc, !prof !23

bb.bc:                                            ; preds = %bb.bb
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.ez, i64 noundef %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #35
          to label %.noexc61 unwind label %bb.bd

.noexc61:                                         ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bf, %bb.bc, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.cb, i8 %.sroa.01.0.i.i43) #36
          to label %.body unwind label %bb.at

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62: ; preds = %bb.bb
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.ez ; 4 uses
  %.sroa.011.0.copyload12 = load ptr, ptr %i.fe, align 8, !noalias !4021 ; 3 uses
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx14, i64 16, i1 false), !noalias !4021
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = xor i64 %i.ez, -1
  %i.fh = add nsw i64 %i.es, %i.fg
  %i.fi = mul nuw nsw i64 %i.fh, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr nonnull align 8 %i.ff, i64 %i.fi, i1 false), !noalias !4025
  %i.fj = add nsw i64 %i.es, -1
  store i64 %i.fj, ptr %i.er, align 8, !alias.scope !4026
  %.not = icmp eq ptr %.sroa.011.0.copyload12, null
  br i1 %.not, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, label %bb.be, !prof !48

bb.be:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62
  store ptr %.sroa.011.0.copyload12, ptr %i.d, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  %i.fk = atomicrmw add ptr %.sroa.011.0.copyload12, i64 -1 release, align 8, !noalias !4027
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.bf, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64"

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64" unwind label %bb.bd

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread: ; preds = %bb.ba, %bb.az, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #35
          to label %bb.h unwind label %bb.bd

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64": ; preds = %bb.be, %bb.bf
  br i1 %i.eo, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.bg

bb.bg:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64"
  %i.fm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.fn = and i64 %i.fm, 9223372036854775807
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.bh, !prof !23

bb.bh:                                            ; preds = %bb.bg
  %i.fp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.bh
  br i1 %i.fp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.bi

bb.bi:                                            ; preds = %.noexc66
  store atomic i8 1, ptr %i.ej monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65: ; preds = %bb.bi, %.noexc66, %bb.bg, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64"
  %i.fq = atomicrmw xchg ptr %i.cb, i32 0 release, align 4
  %i.fr = icmp eq i32 %i.fq, 2
  br i1 %i.fr, label %bb.bj, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68", !prof !18

bb.bj:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.cb)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fs = load i64, ptr %i.f, align 8, !range !34, !noundef !12
  %i.ft = load ptr, ptr %i.m, align 8
  store i64 0, ptr %i.f, align 8
  %i.fu = trunc nuw i64 %i.fs to i1
  br i1 %i.fu, label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57", label %.invoke, !prof !23

"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57": ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68", %bb.as, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit"
  %.sroa.0.039 = phi i64 [ 2, %bb.as ], [ 2, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit" ], [ 0, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55" ], [ 1, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68" ]
  %.sroa.4.038 = phi ptr [ undef, %bb.as ], [ undef, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit" ], [ %i.ec, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55" ], [ %i.ft, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fv = insertvalue { i64, ptr } poison, i64 %.sroa.0.039, 0
  %i.fw = insertvalue { i64, ptr } %i.fv, ptr %.sroa.4.038, 1
  ret { i64, ptr } %i.fw

"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit": ; preds = %.body, %bb.i
  br i1 %.sroa.07.2, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit"
  resume { ptr, i32 } %.pn

bb.bl:                                            ; preds = %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit"
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load i8, ptr %i.fx, align 8, !range !31, !noundef !12
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.o, i8 %.val18) #36
          to label %bb.bk unwind label %bb.at
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc92a9a1e03f759f4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.613 = alloca [16 x i8], align 8          ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.63 = alloca [16 x i8], align 8           ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [3 x i8], align 1                 ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 5 uses
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !align !13, !noundef !12 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4098
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !noalias !4098
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.p, align 8, !noalias !4098
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.q, align 8, !noalias !4098
  store ptr %.0.val, ptr %i.a, align 8, !noalias !4098
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4099, !noundef !12 ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !range !24, !alias.scope !4099, !noundef !12
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbcbdf408c37e5351E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279)
          to label %bb.i unwind label %bb.d, !noalias !4100

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = atomicrmw add ptr %.0.val, i64 -1 release, align 8, !noalias !4101
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %.thread46

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread46 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4099, !nonnull !12, !noundef !12
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ac = add i64 %i.s, 1
  store i64 %i.ac, ptr %i.r, align 8, !alias.scope !4099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4098
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.j unwind label %bb.bd

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !31, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %.noexc, !prof !23

.noexc:                                           ; preds = %bb.k
  %i.al = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ag monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.l, %.noexc, %bb.k, %bb.j
  %i.am = atomicrmw xchg ptr %i.l, i32 0 release, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.m, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", !prof !18

bb.m:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.l)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit": ; preds = %bb.m, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !range !28, !noundef !12 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.as, 1000000000
  %i.au = icmp samesign ult i32 %i.as, 1000000000
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", %bb.n
  %i.aw = load atomic i64, ptr %i.at acquire, align 8
  switch i64 %i.aw, label %.thread28 [
    i64 0, label %bb.n
    i64 1, label %.thread
    i64 2, label %.thread31
  ]

bb.n:                                             ; preds = %.split9.us.i
  call void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
  br label %.split9.us.i

.split9.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", %.noexc31
  %i.ax = load atomic i64, ptr %i.at acquire, align 8
  switch i64 %i.ax, label %.thread28 [
    i64 0, label %.noexc30
    i64 1, label %.thread
    i64 2, label %.thread31
  ]

.noexc30:                                         ; preds = %.split9.i
  %i.ay = call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.az = extractvalue { i64, i32 } %i.ay, 0      ; 3 uses
  %i.ba = extractvalue { i64, i32 } %i.ay, 1      ; 3 uses
  %i.bb = icmp eq i64 %i.az, %i.aq
  br i1 %i.bb, label %.split.i, label %bb.o

.split.i:                                         ; preds = %.noexc30
  %i.bc = icmp ult i32 %i.ba, 1000000000
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.assume(i1 %i.au)
  %i.bd = icmp samesign ult i32 %i.ba, %i.as
  br i1 %i.bd, label %.noexc31, label %bb.p

bb.o:                                             ; preds = %.noexc30
  %i.be = icmp slt i64 %i.az, %i.aq
  br i1 %i.be, label %.noexc31, label %bb.p

bb.p:                                             ; preds = %bb.o, %.split.i
  %i.bf = cmpxchg ptr %i.at, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bf, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.q

.noexc31:                                         ; preds = %bb.o, %.split.i
  %i.bg = call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.aq, i32 noundef range(i32 0, 1000000001) %i.as, i64 noundef %i.az, i32 noundef %i.ba) ; 2 uses
  %i.bh = extractvalue { i64, i32 } %i.bg, 0
  %i.bi = extractvalue { i64, i32 } %i.bg, 1
  call void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, i64 noundef %i.bh, i32 noundef %i.bi)
  br label %.split9.i

bb.q:                                             ; preds = %bb.p
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bf, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread28 [
    i64 0, label %bb.r
    i64 1, label %.thread
    i64 2, label %.thread31
  ], !prof !53

bb.r:                                             ; preds = %bb.q
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #35
  unreachable

.thread:                                          ; preds = %.split9.i, %.split9.us.i, %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !12, !align !13, !noundef !12 ; 9 uses
  %i.bl = cmpxchg ptr %i.bk, i32 0, i32 1 acquire monotonic, align 4, !noalias !4102
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.noexc34, label %bb.s, !prof !23

bb.s:                                             ; preds = %.thread
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bk)
  br label %.noexc34

.noexc34:                                         ; preds = %bb.s, %.thread
  %i.bn = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4102
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %.noexc35, !prof !23

.noexc35:                                         ; preds = %.noexc34
  %i.bq = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  %i.br = xor i1 %i.bq, true
  %i.bs = zext i1 %i.br to i8
  br label %bb.w

.thread31:                                        ; preds = %.split9.i, %.split9.us.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !12, !align !13, !noundef !12 ; 9 uses
  %i.bv = cmpxchg ptr %i.bu, i32 0, i32 1 acquire monotonic, align 4, !noalias !4103
  %i.bw = extractvalue { i32, i1 } %i.bv, 1
  br i1 %i.bw, label %.noexc38, label %bb.t, !prof !23

bb.t:                                             ; preds = %.thread31
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bu)
  br label %.noexc38

.noexc38:                                         ; preds = %bb.t, %.thread31
end_hunk_14
begin_hunk_15_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc92a9a1e03f759f4E":bb.a
  %i.dy = load atomic i8, ptr %i.dx monotonic, align 4, !noalias !4103
  %.not58 = icmp eq i8 %i.dy, 0
  br i1 %.not58, label %bb.as, label %bb.ao, !prof !23

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4113
  store ptr %i.bu, ptr %i.c, align 8, !noalias !4113
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i36, ptr %i.dz, align 8, !noalias !4113
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #35
          to label %bb.aq unwind label %bb.ap, !noalias !4114

bb.ap:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #36
          to label %.thread39 unwind label %bb.ar, !noalias !4114

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4114
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.ec = trunc nuw i8 %.sroa.01.0.i.i36 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !4115, !nonnull !12, !noundef !12 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !4115, !noundef !12 ; 7 uses
  %.idx = mul nuw nsw i64 %i.eg, 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx
  %i.ei = icmp eq i64 %i.eg, 0
  br i1 %i.ei, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, label %.lr.ph

bb.at:                                            ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 2 uses
  %i.ek = add nuw nsw i64 %i.en, 1
  %i.el = icmp eq ptr %i.ej, %i.eh
  br i1 %i.el, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.as, %bb.at
  %i.em = phi ptr [ %i.ej, %bb.at ], [ %i.ee, %bb.as ] ; 2 uses
  %i.en = phi i64 [ %i.ek, %bb.at ], [ 0, %bb.as ] ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !4116, !noalias !4117, !noundef !12
  %.not.i.i49 = icmp eq i64 %i.ep, %i.h
  br i1 %.not.i.i49, label %bb.au, label %bb.at

bb.au:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !4118)
  %i.eq = icmp ult i64 %i.eg, 384307168202282326
  call void @llvm.assume(i1 %i.eq)
  %.not.i5.i50 = icmp samesign ult i64 %i.en, %i.eg
  br i1 %.not.i5.i50, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53, label %bb.av, !prof !23

bb.av:                                            ; preds = %bb.au
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.en, i64 noundef %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #35
          to label %.noexc52 unwind label %bb.aw

.noexc52:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.ay, %bb.av, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.bu, i8 %.sroa.01.0.i.i36) #36
          to label %.thread39 unwind label %bb.am

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53: ; preds = %bb.au
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.en ; 4 uses
  %.sroa.011.0.copyload12 = load ptr, ptr %i.es, align 8, !noalias !4115 ; 3 uses
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx14, i64 16, i1 false), !noalias !4115
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = xor i64 %i.en, -1
  %i.ev = add nsw i64 %i.eg, %i.eu
  %i.ew = mul nuw nsw i64 %i.ev, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr nonnull align 8 %i.et, i64 %i.ew, i1 false), !noalias !4119
  %i.ex = add nsw i64 %i.eg, -1
  store i64 %i.ex, ptr %i.ef, align 8, !alias.scope !4120
  %.not = icmp eq ptr %.sroa.011.0.copyload12, null
  br i1 %.not, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, label %bb.ax, !prof !48

bb.ax:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53
  store ptr %.sroa.011.0.copyload12, ptr %i.d, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  %i.ey = atomicrmw add ptr %.sroa.011.0.copyload12, i64 -1 release, align 8, !noalias !4121
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.ay, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55"

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55" unwind label %bb.aw

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread: ; preds = %bb.at, %bb.as, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #35
          to label %bb.h unwind label %bb.aw

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55": ; preds = %bb.ax, %bb.ay
  br i1 %i.ec, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56, label %bb.az

bb.az:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55"
  %i.fa = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.fb = and i64 %i.fa, 9223372036854775807
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56, label %.noexc57, !prof !23

.noexc57:                                         ; preds = %bb.az
  %i.fd = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.fd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56, label %bb.ba

bb.ba:                                            ; preds = %.noexc57
  store atomic i8 1, ptr %i.dx monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56: ; preds = %bb.ba, %.noexc57, %bb.az, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55"
  %i.fe = atomicrmw xchg ptr %i.bu, i32 0 release, align 4
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %bb.bb, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59", !prof !18

bb.bb:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bu)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59": ; preds = %bb.bb, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fg = load i8, ptr %i.j, align 1, !range !31, !noundef !12
  %i.fh = trunc nuw i8 %i.fg to i1
  store i8 0, ptr %i.j, align 1
  br i1 %i.fh, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h1eb8a1e8310bae21E.exit", label %bb.bc, !prof !23

bb.bc:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59"
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #35
  unreachable

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h1eb8a1e8310bae21E.exit": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, %.thread28, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48"
  %.sroa.0.0 = phi i8 [ 1, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59" ], [ 0, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48" ], [ 2, %.thread28 ], [ 2, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i8 %.sroa.0.0

bb.bd:                                            ; preds = %bb.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

.thread39:                                        ; preds = %bb.ap, %bb.y, %bb.aw, %bb.af, %.thread46
  %eh.lpad-body.ph.pn = phi { ptr, i32 } [ %i.df, %bb.af ], [ %.pn, %.thread46 ], [ %i.co, %bb.y ], [ %i.er, %bb.aw ], [ %i.ea, %bb.ap ]
  resume { ptr, i32 } %eh.lpad-body.ph.pn

.thread46:                                        ; preds = %bb.e, %bb.d, %bb.bd
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bd ], [ %i.v, %bb.d ], [ %i.v, %bb.e ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val12 = load i8, ptr %i.fi, align 8, !range !31, !noundef !12
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.l, i8 %.val12) #36
          to label %.thread39 unwind label %bb.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8aa035172ddcce05E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !51, !noundef !12 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val)
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !12
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !12
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !28, !noundef !12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  %i.ab = icmp samesign ult i32 %i.z, 1000000000
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %bb.d, %bb.e
  %i.ad = load atomic i64, ptr %i.aa acquire, align 8
  switch i64 %i.ad, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.e
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.e:                                             ; preds = %.split9.us.i
  tail call void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
  br label %.split9.us.i

.split9.i:                                        ; preds = %bb.d, %bb.i
  %i.ae = load atomic i64, ptr %i.aa acquire, align 8
  switch i64 %i.ae, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.f:                                             ; preds = %.split9.i
  %i.af = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.ag = extractvalue { i64, i32 } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { i64, i32 } %i.af, 1      ; 3 uses
  %i.ai = icmp eq i64 %i.ag, %i.x
  br i1 %i.ai, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.aj = icmp ult i32 %i.ah, 1000000000
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ab)
  %i.ak = icmp samesign ult i32 %i.ah, %i.z
  br i1 %i.ak, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = icmp slt i64 %i.ag, %i.x
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.am = cmpxchg ptr %i.aa, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.an = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.ag, i32 noundef %i.ah) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split9.i

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit: ; preds = %bb.h
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.am, 0
  switch i64 %.sroa.01.0.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ], !prof !52

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #35
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread: ; preds = %.split9.i, %.split9.i, %.split9.us.i, %.split9.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h5e5c5e8dfd220d35E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !18

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4: ; preds = %.split9.i, %.split9.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  ret void

bb.k:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !4134, !nonnull !12, !noundef !12
  %i.as = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !4134
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4

bb.m:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h7add430b9b0e0e92E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !51, !noundef !12 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !12
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !12
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !28, !noundef !12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  %i.ae = icmp samesign ult i32 %i.ac, 1000000000
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %bb.d, %bb.e
  %i.ag = load atomic i64, ptr %i.ad acquire, align 8
  switch i64 %i.ag, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.e
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.e:                                             ; preds = %.split9.us.i
  tail call void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
  br label %.split9.us.i

.split9.i:                                        ; preds = %bb.d, %bb.i
  %i.ah = load atomic i64, ptr %i.ad acquire, align 8
  switch i64 %i.ah, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.f:                                             ; preds = %.split9.i
  %i.ai = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { i64, i32 } %i.ai, 1      ; 3 uses
  %i.al = icmp eq i64 %i.aj, %i.aa
  br i1 %i.al, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.am = icmp ult i32 %i.ak, 1000000000
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.ae)
  %i.an = icmp samesign ult i32 %i.ak, %i.ac
  br i1 %i.an, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp slt i64 %i.aj, %i.aa
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.ap = cmpxchg ptr %i.ad, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ap, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.aq = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.aj, i32 noundef %i.ak) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split9.i

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit: ; preds = %bb.h
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ap, 0
  switch i64 %.sroa.01.0.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ], !prof !52

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #35
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread: ; preds = %.split9.i, %.split9.i, %.split9.us.i, %.split9.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h5e5c5e8dfd220d35E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.at = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !18

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4: ; preds = %.split9.i, %.split9.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  ret void

bb.k:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !4147, !nonnull !12, !noundef !12
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !4147
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4

bb.m:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17haf216afaed1664c9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !51, !noundef !12 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !12
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !12
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !28, !noundef !12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  %i.ae = icmp samesign ult i32 %i.ac, 1000000000
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %bb.d, %bb.e
  %i.ag = load atomic i64, ptr %i.ad acquire, align 8
  switch i64 %i.ag, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.e
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.e:                                             ; preds = %.split9.us.i
  tail call void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
  br label %.split9.us.i

.split9.i:                                        ; preds = %bb.d, %bb.i
  %i.ah = load atomic i64, ptr %i.ad acquire, align 8
  switch i64 %i.ah, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.f:                                             ; preds = %.split9.i
  %i.ai = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { i64, i32 } %i.ai, 1      ; 3 uses
  %i.al = icmp eq i64 %i.aj, %i.aa
  br i1 %i.al, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.am = icmp ult i32 %i.ak, 1000000000
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.ae)
  %i.an = icmp samesign ult i32 %i.ak, %i.ac
  br i1 %i.an, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp slt i64 %i.aj, %i.aa
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.ap = cmpxchg ptr %i.ad, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ap, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.aq = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.aj, i32 noundef %i.ak) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split9.i

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit: ; preds = %bb.h
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ap, 0
  switch i64 %.sroa.01.0.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ], !prof !52

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #35
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread: ; preds = %.split9.i, %.split9.i, %.split9.us.i, %.split9.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h5e5c5e8dfd220d35E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.at = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !18

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4: ; preds = %.split9.i, %.split9.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  ret void

bb.k:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4159)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !4160, !nonnull !12, !noundef !12
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !4160
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4

bb.m:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4179, !noundef !12 ; 4 uses
  %i.f = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.d, align 8, !alias.scope !4179
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4179, !nonnull !12, !noundef !12 ; 3 uses
  %.idx = mul nuw nsw i64 %i.e, 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = icmp eq i64 %i.e, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.c, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.m, %bb.d ], [ %i.m, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..drain..Drain$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h7facb08d0eca9356E"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #36
          to label %bb.j unwind label %bb.i

bb.b:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %i.b, align 8
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

._crit_edge:                                      ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit8", %bb.a
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.i, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit8" ]
  store ptr %.lcssa, ptr %i.b, align 8
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..drain..Drain$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h7facb08d0eca9356E"(ptr noalias noundef align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  call void @llvm.experimental.noalias.scope.decl(metadata !4181)
  call void @llvm.experimental.noalias.scope.decl(metadata !4182)
  call void @llvm.experimental.noalias.scope.decl(metadata !4183)
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !4184, !nonnull !12, !noundef !12
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !4184
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit" unwind label %bb.i

bb.e:                                             ; preds = %.lr.ph, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit8"
  %i.q = phi ptr [ %i.h, %.lr.ph ], [ %i.r, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit8" ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.s = load i64, ptr %i.k, align 8, !noundef !12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.u = cmpxchg ptr %i.t, i64 0, i64 %i.s acq_rel acquire, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.u, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.f, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val5 = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val5, i64 40 ; 2 uses
  %i.y = atomicrmw xchg ptr %i.x, i32 1 release, align 4
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.g, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.x)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit unwind label %bb.c ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit: ; preds = %bb.f, %bb.g, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !4185)
  call void @llvm.experimental.noalias.scope.decl(metadata !4186)
end_hunk_15
begin_hunk_16_@_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i", %bb.m
  %.sroa.02.015.i.i = phi i64 [ %i.ay, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i" ], [ 0, %bb.m ] ; 4 uses
  %i.ag = phi ptr [ %i.ah, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i" ], [ %i.ae, %bb.m ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4261)
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !4261, !noalias !4262, !nonnull !12, !noundef !12 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !4263, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.ak, %i.ac
  br i1 %.not.i.i.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !4261, !noalias !4262, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = cmpxchg ptr %i.an, i64 0, i64 %i.am acq_rel acquire, align 8, !noalias !4263
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.o, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !4261, !noalias !4262, !noundef !12 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store atomic ptr %i.aq, ptr %i.as release, align 8, !noalias !4263
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val2.i.i.i = load ptr, ptr %i.at, align 8, !noalias !4263, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 40 ; 2 uses
  %i.av = atomicrmw xchg ptr %i.au, i32 1 release, align 4, !noalias !4263
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.r, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit

bb.r:                                             ; preds = %bb.q
  %i.ax = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.au)
          to label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit unwind label %bb.j ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i": ; preds = %bb.n, %.lr.ph.i.i
  %i.ay = add nuw nsw i64 %.sroa.02.015.i.i, 1
  %i.az = icmp eq ptr %i.ah, %i.af
  br i1 %i.az, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit", label %.lr.ph.i.i

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit: ; preds = %bb.q, %bb.r
  %i.ba = icmp samesign ult i64 %.sroa.02.015.i.i, %i.y
  tail call void @llvm.assume(i1 %i.ba)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4264)
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.02.015.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !4260
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = xor i64 %.sroa.02.015.i.i, -1
  %i.be = add nsw i64 %i.y, %i.bd
  %i.bf = mul nuw nsw i64 %i.be, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.bc, i64 %i.bf, i1 false), !noalias !4265
  %i.bg = add nsw i64 %i.y, -1
  store i64 %i.bg, ptr %i.x, align 8, !alias.scope !4266
  %.pr = load ptr, ptr %i.b, align 8, !alias.scope !4267 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4267)
  %i.bh = icmp eq ptr %.pr, null
  br i1 %i.bh, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit", label %bb.s

bb.s:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit
  %i.bi = atomicrmw add ptr %.pr, i64 -1 release, align 8, !noalias !4268
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.t, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit"

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit" unwind label %bb.j

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit": ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i", %bb.l, %bb.s, %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.u unwind label %bb.j

bb.u:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit"
  %i.bk = load i64, ptr %i.x, align 8, !noundef !12 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 384307168202282326
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !12 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 384307168202282326
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = zext i1 %i.bq to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.0.0 = phi i8 [ %i.br, %bb.v ], [ 0, %bb.u ]
  store atomic i8 %.sroa.0.0, ptr %i.c seq_cst, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.k
  br i1 %i.t, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bt = and i64 %i.bs, 9223372036854775807
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.z, !prof !23

bb.z:                                             ; preds = %bb.y
  %i.bv = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.n monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bw = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %bb.ab, label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit", !prof !18

bb.ab:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit"

"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit": ; preds = %bb.ab, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.a
  ret void

bb.ac:                                            ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %0, i64 noundef range(i64 3, 0) %1, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !4287
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !4287
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4287
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !4287
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !4287
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit", label %bb.e, !prof !23

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4288
  store ptr %0, ptr %i.b, align 8, !noalias !4288
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !4288
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @314, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #35
          to label %bb.g unwind label %bb.f, !noalias !4289

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$$GT$17hc6c1405b92e847b4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #36
          to label %common.resume unwind label %bb.h, !noalias !4289

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4289
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.z, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  %i.p = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4290
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !noalias !4290
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.t, align 8, !noalias !4290
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.u, align 8, !noalias !4290
  store ptr %.0.val, ptr %i.a, align 8, !noalias !4290
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !4291, !noundef !12 ; 4 uses
  %i.x = load i64, ptr %i.q, align 8, !range !24, !alias.scope !4291, !noundef !12
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbcbdf408c37e5351E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279)
          to label %bb.o unwind label %bb.k, !noalias !4292

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = atomicrmw add ptr %.0.val, i64 -1 release, align 8, !noalias !4293
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.n:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit"
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.k, %bb.l
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #36
          to label %common.resume unwind label %bb.v

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !4291, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ag = add nsw i64 %i.w, 1                     ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !4291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4290
  %i.ah = icmp slt i64 %i.w, 384307168202282325
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !12 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  %i.an = zext i1 %i.am to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0 = phi i8 [ %i.an, %bb.p ], [ 0, %bb.o ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ao seq_cst, align 8
  br i1 %i.p, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.s, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.as = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.at = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.u, label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit", !prof !18

bb.u:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit"

"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.u
  ret void

bb.v:                                             ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h0a5b9c5b2d8bbd69E"(ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8aa035172ddcce05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4308)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !4309, !nonnull !12, !noundef !12
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !4309
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !4313, !nonnull !12, !noundef !12
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !4313
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h196c607560861f68E"(ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i8 %.sroa.4.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.0.val, i64 32, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %i.d = invoke fastcc noundef i8 @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc92a9a1e03f759f4E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4328)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !4329, !nonnull !12, !noundef !12
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !4329
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4332)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !4333, !nonnull !12, !noundef !12
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !4333
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit8"

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit8"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit8": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %i.d

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h1e71cc9f1787342eE"(ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17heb7b0ef73999bf94E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4348)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !4349, !nonnull !12, !noundef !12
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !4349
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !4353, !nonnull !12, !noundef !12
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !4353
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h6aed0fd83d6f99c0E"(ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h7add430b9b0e0e92E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4368)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !4369, !nonnull !12, !noundef !12
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !4369
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4372)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !4373, !nonnull !12, !noundef !12
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !4373
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h9e6a39b394615d5aE"(ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 2 uses
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i8 %.sroa.4.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.0.val, i64 40, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %i.d = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h6022f70b95152c90E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4388)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !4389, !nonnull !12, !noundef !12
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !4389
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4392)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !4393, !nonnull !12, !noundef !12
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !4393
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit8"

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit8"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit8": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.d

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17ha1886b09161f11caE"(ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17haf216afaed1664c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !4409, !nonnull !12, !noundef !12
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !4409
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4412)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !4413, !nonnull !12, !noundef !12
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !4413
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit6": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e405d77764e4babE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !40, !noundef !12
  %i.b = tail call noundef zeroext i1 @"_ZN71_$LT$core..net..socket_addr..SocketAddr$u20$as$u20$core..fmt..Debug$GT$3fmt17h50b8bebfddd7b8d1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7271186107a99984E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter3pad17h36dd57a07a89d236E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @298, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b199ada190c657cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !40, !noundef !12
  %i.b = tail call noundef zeroext i1 @"_ZN73_$LT$std..os..unix..net..addr..SocketAddr$u20$as$u20$core..fmt..Debug$GT$3fmt17h755854554ffc9990E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(116) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d191b1424e95564E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !40, !noundef !12
  %i.b = tail call noundef zeroext i1 @"_ZN73_$LT$mio..net..tcp..listener..TcpListener$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b03df613461f259E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !14, !noundef !12
  %.val = load i8, ptr %i.a, align 1, !range !19, !noundef !12 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE.938", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9cf0ac7f455bdc38E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !4416, !noundef !12 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb24d1ac7a1707254E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !14, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcda7efab78711dd4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !40, !noundef !12
  %i.b = tail call noundef zeroext i1 @"_ZN74_$LT$mio..net..uds..listener..UnixListener$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbbdfc21a5a4319bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !14, !noundef !12
  %.val = load i8, ptr %i.a, align 1, !range !16, !noundef !12 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE.939", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbd3fb1f146676bc2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !12
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he38fc04a783af194E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !40, !noundef !12
  %i.b = tail call noundef zeroext i1 @"_ZN73_$LT$core..net..socket_addr..SocketAddr$u20$as$u20$core..fmt..Display$GT$3fmt17hebfa5708b1795796E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$LP$$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h03e6a69f3a2ff73dE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
end_hunk_16
begin_hunk_17_@"_ZN4core3ptr114drop_in_place$LT$std..sync..mpsc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h862110b49b067debE":bb.a
  %unroll_iter = and i32 %i.bi, 56
  br label %.lr.ph.i.i.i.i.i7.i.i

.lr.ph.i.i.i.i.i7.i.i:                            ; preds = %.lr.ph.i.i.i.i.i7.i.i, %.lr.ph.i.i.i.i.i7.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i7.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i7.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i7.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i.i.i7.i.i.epil.preheader:             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i7.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i7.i.i.epil

.lr.ph.i.i.i.i.i7.i.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i7.i.i.epil, %.lr.ph.i.i.i.i.i7.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i7.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i7.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #24
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i7.i.i.epil, !llvm.loop !4861

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i7.i.i.epil, %bb.u, %bb.t
  %i.bk = add i32 %.sroa.0.04245.i.i.i.i.i.i, 1   ; 2 uses
  %i.bl = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bm = and i64 %i.bl, 62
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bm, 62
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, %bb.s
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bf, %bb.s ], [ %i.bl, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ]
  %.sroa.0.042.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.s ], [ %i.bk, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ]
  %i.bn = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bo = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bq = atomicrmw xchg ptr %i.bp, ptr null acq_rel, align 8 ; 2 uses
  %i.br = lshr i64 %i.bo, 1                       ; 2 uses
  %i.bs = icmp ne i64 %i.br, %i.bn                ; 2 uses
  %i.bt = icmp eq ptr %i.bq, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ %i.by, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bs, label %.lr.ph51.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i = phi i32 [ %i.bx, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ], [ %.sroa.0.042.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 7
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i

bb.w:                                             ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.i.i.preheader:                 ; preds = %bb.w
  %i.bv = mul nuw i32 %.sroa.0.1.i.i.i.i4.i.i, %.sroa.0.1.i.i.i.i4.i.i ; 2 uses
  %xtraiter22 = and i32 %i.bv, 7                  ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 3
  br i1 %i.bw, label %.lr.ph.i24.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.i.i.i.preheader.new

.lr.ph.i24.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i24.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.bv, 56
  br label %.lr.ph.i24.i.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i.i:                           ; preds = %.lr.ph.i24.i.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i24.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  %niter27.next.7 = add i32 %niter27, 8           ; 2 uses
  %niter27.ncmp.7 = icmp eq i32 %niter27.next.7, %unroll_iter26
  br i1 %niter27.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i24.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i24.i.i.i.i.i.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i24.i.i.i.i.i.i.epil

.lr.ph.i24.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i24.i.i.i.i.i.i.epil, %.lr.ph.i24.i.i.i.i.i.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i24.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #24
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.epil, !llvm.loop !4862

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.i.epil, %bb.w, %bb.v
  %i.bx = add i32 %.sroa.0.1.i.i.i.i4.i.i, 1
  %i.by = atomicrmw xchg ptr %i.bp, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge52.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i", %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i" ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bo, %.loopexit.i.i.i.i.i.i ], [ %i.cz, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i" ]
  %i.bz = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.bz, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf7b70846cf7a84f2E.exit.i.i.i.i.i", label %bb.x

.lr.ph51.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i"
  %i.ca = phi i64 [ %i.da, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i" ], [ %i.br, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.049.i.i.i.i.i.i = phi i64 [ %i.cz, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i" ], [ %i.bo, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.148.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i" ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 6 uses
  %i.cb = and i64 %i.ca, 31                       ; 2 uses
  %.not21.i.i.i.i.i.i = icmp eq i64 %i.cb, 31
  br i1 %.not21.i.i.i.i.i.i, label %bb.y, label %bb.ab

bb.x:                                             ; preds = %._crit_edge52.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 504, i64 noundef 8) #24
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf7b70846cf7a84f2E.exit.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.011.148.i.i.i.i.i.i, i64 496 ; 3 uses
  %i.cd = load atomic ptr, ptr %i.cc acquire, align 8
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h682df42d2a953c78E.exit.i.i.i.i.i.i"

.lr.ph.i28.i.i.i.i.i.i:                           ; preds = %bb.y, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i29.i.i.i.i.i.i = phi i32 [ %i.ci, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i ], [ 0, %bb.y ] ; 6 uses
  %i.cf = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 7
  br i1 %i.cf, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i28.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i28.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.aa
  %i.cg = mul nuw i32 %.sroa.0.02.i29.i.i.i.i.i.i, %.sroa.0.02.i29.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.cg, 7                  ; 3 uses
  %i.ch = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 3
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.cg, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  %niter39.next.7 = add i32 %niter39, 8           ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38
  br i1 %niter39.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #24
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !4863

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %bb.aa, %bb.z
  %i.ci = add i32 %.sroa.0.02.i29.i.i.i.i.i.i, 1
  %i.cj = load atomic ptr, ptr %i.cc acquire, align 8
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h682df42d2a953c78E.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h682df42d2a953c78E.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, %bb.y
  %0 = load atomic ptr, ptr %i.cc acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.148.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.148.i.i.i.i.i.i, i64 noundef 504, i64 noundef 8) #24
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i"

bb.ab:                                            ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.148.i.i.i.i.i.i, i64 %i.cb ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8
  %i.co = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h04e9ce888c9a34aeE.exit.i.i.i.i.i.i"

.lr.ph.i30.i.i.i.i.i.i:                           ; preds = %bb.ab, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i
  %.sroa.0.02.i31.i.i.i.i.i.i = phi i32 [ %i.ct, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i ], [ 0, %bb.ab ] ; 6 uses
  %i.cq = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 7
  br i1 %i.cq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  %.not.i.i33.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i31.i.i.i.i.i.i, 0
  br i1 %.not.i.i33.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader

.lr.ph.i.i34.i.i.i.i.i.i.preheader:               ; preds = %bb.ad
  %i.cr = mul nuw i32 %.sroa.0.02.i31.i.i.i.i.i.i, %.sroa.0.02.i31.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.cr, 7                  ; 3 uses
  %i.cs = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 3
  br i1 %i.cs, label %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new

.lr.ph.i.i34.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.cr, 56
  br label %.lr.ph.i.i34.i.i.i.i.i.i

.lr.ph.i.i34.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i34.i.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i34.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  tail call void @llvm.x86.sse2.pause() #24
  %niter33.next.7 = add i32 %niter33, 8           ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32
  br i1 %niter33.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i34.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i34.i.i.i.i.i.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i34.i.i.i.i.i.i.epil

.lr.ph.i.i34.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.epil, %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i34.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #24
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.epil, !llvm.loop !4864

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i34.i.i.i.i.i.i.epil, %bb.ad, %bb.ac
  %i.ct = add i32 %.sroa.0.02.i31.i.i.i.i.i.i, 1
  %i.cu = load atomic i64, ptr %i.cm acquire, align 8
  %i.cv = and i64 %i.cu, 1
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h04e9ce888c9a34aeE.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h04e9ce888c9a34aeE.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, %bb.ab
  %i.cx = load ptr, ptr %i.cl, align 8, !alias.scope !4868, !noundef !12
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h04e9ce888c9a34aeE.exit.i.i.i.i.i.i"
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cl)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i3.i.i": ; preds = %bb.ae, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h04e9ce888c9a34aeE.exit.i.i.i.i.i.i", %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h682df42d2a953c78E.exit.i.i.i.i.i.i"
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %0, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h682df42d2a953c78E.exit.i.i.i.i.i.i" ], [ %.sroa.011.148.i.i.i.i.i.i, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h04e9ce888c9a34aeE.exit.i.i.i.i.i.i" ], [ %.sroa.011.148.i.i.i.i.i.i, %bb.ae ] ; 2 uses
  %i.cz = add i64 %.sroa.05.049.i.i.i.i.i.i, 2    ; 3 uses
  %i.da = lshr i64 %i.cz, 1                       ; 2 uses
  %.not20.i.i.i.i.i.i = icmp eq i64 %i.da, %i.bn
  br i1 %.not20.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i, label %.lr.ph51.i.i.i.i.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf7b70846cf7a84f2E.exit.i.i.i.i.i": ; preds = %bb.x, %._crit_edge52.i.i.i.i.i.i
  %i.db = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.db, ptr %.8.val release, align 8
  br label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3aade16165d12995E.exit.i.i.i"

"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3aade16165d12995E.exit.i.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf7b70846cf7a84f2E.exit.i.i.i.i.i", %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.dd = atomicrmw xchg ptr %i.dc, i8 1 acq_rel, align 1
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %"_ZN4core3ptr114drop_in_place$LT$std..sync..mpmc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hbbd0d7c8d10d3ac6E.exit", label %bb.af

bb.af:                                            ; preds = %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3aade16165d12995E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h4dd929cc2aa7d4cdE"(ptr noalias noundef align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr114drop_in_place$LT$std..sync..mpmc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hbbd0d7c8d10d3ac6E.exit"

bb.ag:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dg = atomicrmw add ptr %i.df, i64 -1 acq_rel, align 8
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ah, label %"_ZN4core3ptr114drop_in_place$LT$std..sync..mpmc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hbbd0d7c8d10d3ac6E.exit"

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17h50b048951feec4e7E"(ptr noundef nonnull align 8 %.8.val)
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dj = atomicrmw xchg ptr %i.di, i8 1 acq_rel, align 1
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %"_ZN4core3ptr114drop_in_place$LT$std..sync..mpmc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hbbd0d7c8d10d3ac6E.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h311ad3223cd76140E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h2cdf1158becc254eE.exit.i.i.i" unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #24
  br label %common.resume.i.i

"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h2cdf1158becc254eE.exit.i.i.i": ; preds = %bb.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #24
  br label %"_ZN4core3ptr114drop_in_place$LT$std..sync..mpmc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hbbd0d7c8d10d3ac6E.exit"

"_ZN4core3ptr114drop_in_place$LT$std..sync..mpmc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hbbd0d7c8d10d3ac6E.exit": ; preds = %bb.b, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd402bda042490dc3E.exit.i.i.i", %"_ZN4core3ptr186drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h74960f7c8ae6e4c5E.exit.i.i.i", %bb.q, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3aade16165d12995E.exit.i.i.i", %bb.af, %bb.ag, %bb.ah, %"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h2cdf1158becc254eE.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h88bbdf7578b1d887E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4871)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84aff493c7525758E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.e, %"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.010.i.i, 1          ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val8.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4871, !nonnull !12, !noundef !12 ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4871, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.h = load ptr, ptr %.val9.i.i, align 8, !invariant.load !12, !noalias !4871 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void %i.h(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !4871

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !24, !invariant.load !12, !noalias !4871 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !12, !noalias !4871 ; 2 uses
  %i.m = icmp ult i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #24, !noalias !4871
  br label %"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE.exit.i.i"

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !24, !invariant.load !12, !noalias !4871 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !35, !invariant.load !12, !noalias !4871 ; 2 uses
  %i.t = icmp ult i64 %i.s, -9223372036854775807
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %.body.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.s) #24, !noalias !4871
  br label %.body.i.i

"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.c
  %i.v = icmp eq i64 %i.e, %.val1
  br i1 %i.v, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84aff493c7525758E.exit", label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.w = add i64 %.sroa.0.1.i.i22, 1              ; 2 uses
  %i.x = icmp eq i64 %i.w, %.val1
  br i1 %i.x, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.d
  %i.y = icmp eq i64 %i.e, %.val1
  br i1 %i.y, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.w, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !4871, !nonnull !12, !noundef !12
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val7.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !4871, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE"(ptr nonnull %.val.i.i, ptr nonnull %.val7.i.i) #36
          to label %bb.e unwind label %bb.f, !noalias !4871

bb.f:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4871
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !24, !noundef !12 ; 2 uses
  %i.ad = icmp eq i64 %.val4, 0
  br i1 %i.ad, label %"_ZN4core3ptr122drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h27f47b41954e5053E.exit", label %bb.g

bb.g:                                             ; preds = %.body
  %i.ae = mul nuw i64 %.val4, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %"_ZN4core3ptr122drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h27f47b41954e5053E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84aff493c7525758E.exit": ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !24, !noundef !12 ; 2 uses
  %i.af = icmp eq i64 %.val2, 0
  br i1 %i.af, label %"_ZN4core3ptr122drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h27f47b41954e5053E.exit6", label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84aff493c7525758E.exit"
  %i.ag = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %"_ZN4core3ptr122drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h27f47b41954e5053E.exit6"

"_ZN4core3ptr122drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h27f47b41954e5053E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84aff493c7525758E.exit", %bb.h
  ret void

"_ZN4core3ptr122drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h27f47b41954e5053E.exit": ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr115drop_in_place$LT$std..sync..mpsc..SendError$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h9fec4b42e9e31dbeE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4874, !noundef !12
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.g
    i64 2, label %bb.k
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 512
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit"

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8
  %i.i = load i64, ptr %i.e, align 16, !noundef !12
  %i.j = and i64 %i.i, %i.h
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h7152a22d75056cf6E.exit.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17h8d3ee9c2a2799b36E(ptr noundef nonnull align 8 %i.l)
  br label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h7152a22d75056cf6E.exit.i.i.i"

"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h7152a22d75056cf6E.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.n = atomicrmw xchg ptr %i.m, i8 1 acq_rel, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h7152a22d75056cf6E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @"_ZN4core3ptr161drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$17h1f52ee81335f02c6E"(ptr noalias noundef nonnull align 128 dereferenceable(640) %.8.val)
          to label %"_ZN4core3ptr186drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h74960f7c8ae6e4c5E.exit.i.i.i" unwind label %bb.f

common.resume.i.i:                                ; preds = %bb.n, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.ah, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #24
  br label %common.resume.i.i

"_ZN4core3ptr186drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h74960f7c8ae6e4c5E.exit.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #24
  br label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit"

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %i.r = atomicrmw add ptr %i.q, i64 -1 acq_rel, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit"

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.u = atomicrmw or ptr %i.t, i64 1 seq_cst, align 8
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd5106fad73546c69E.exit.i.i.i"

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17h8d3ee9c2a2799b36E(ptr noundef nonnull align 8 %i.x)
  br label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd5106fad73546c69E.exit.i.i.i"

"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd5106fad73546c69E.exit.i.i.i": ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.z = atomicrmw xchg ptr %i.y, i8 1 acq_rel, align 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd5106fad73546c69E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h4dd929cc2aa7d4cdE"(ptr noalias noundef align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit"

bb.k:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 112
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit"

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17h50b048951feec4e7E"(ptr noundef nonnull align 8 %.8.val)
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.af = atomicrmw xchg ptr %i.ae, i8 1 acq_rel, align 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h311ad3223cd76140E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h2cdf1158becc254eE.exit.i.i.i" unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #24
  br label %common.resume.i.i

"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h2cdf1158becc254eE.exit.i.i.i": ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #24
  br label %"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit"

"_ZN4core3ptr112drop_in_place$LT$std..sync..mpmc..Sender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h4d24a4fb8323a036E.exit": ; preds = %bb.b, %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h7152a22d75056cf6E.exit.i.i.i", %"_ZN4core3ptr186drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h74960f7c8ae6e4c5E.exit.i.i.i", %bb.g, %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd5106fad73546c69E.exit.i.i.i", %bb.j, %bb.k, %bb.l, %"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h2cdf1158becc254eE.exit.i.i.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4879)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 3 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4880)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !4881 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4881, !nonnull !12, !noundef !12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !4881
  br label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i"

"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %.val3.i.i.i = load i32, ptr %i.h, align 4, !alias.scope !4881
  %i.i = tail call noundef i32 @close(i32 noundef %.val3.i.i.i) #24, !noalias !4881 ; 0 uses
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit": ; preds = %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !24, !noundef !12 ; 2 uses
  %i.k = icmp eq i64 %.val2, 0
  br i1 %i.k, label %"_ZN4core3ptr124drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17hc97db04f3e44fc21E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit"
  %i.l = mul nuw i64 %.val2, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %"_ZN4core3ptr124drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17hc97db04f3e44fc21E.exit6"

"_ZN4core3ptr124drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17hc97db04f3e44fc21E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1d808f5317b2959bE"(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.f
  ]

common.ret.sink.split:                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit56", %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit36"
  %.sink = phi ptr [ %i.aw, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit36" ], [ %i.cr, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit56" ]
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sink)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit56", %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit36", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4948)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !4948, !nonnull !12, !noundef !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !4948, !noundef !12
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$u5d$$GT$17hd8fe2da27ab1387fE"(ptr noalias noundef nonnull readonly align 8 %.val.i, i64 noundef %.val1.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i" unwind label %bb.c, !noalias !4948

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %i.c, align 8, !range !24, !alias.scope !4948, !noundef !12 ; 2 uses
  %i.g = icmp eq i64 %.val4.i, 0
  br i1 %i.g, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %.val4.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !4948
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i": ; preds = %bb.b
  %.val2.i = load i64, ptr %i.c, align 8, !range !24, !alias.scope !4948, !noundef !12 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i"
  %i.j = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !4948
  br label %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit"

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val31 = load ptr, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr i8, ptr %0, i64 168
  %.val32 = load ptr, ptr %i.l, align 8, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.m = load ptr, ptr %.val32, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  invoke void %i.m(ptr noundef nonnull %.val31)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %"_ZN4core3ptr513drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h05d1b1b6ae39a240E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #24
  br label %"_ZN4core3ptr513drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h05d1b1b6ae39a240E.exit"

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.y = icmp ult i64 %i.x, -9223372036854775807
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %.body33, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.x) #24
  br label %.body33

.body:                                            ; preds = %bb.c, %bb.d
  %.val29 = load i64, ptr %0, align 8, !range !39, !noundef !12
  %i.aa = getelementptr i8, ptr %0, i64 8
  %.val30 = load ptr, ptr %i.aa, align 8
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 %.val29, ptr %.val30) #36
          to label %bb.j unwind label %bb.v

"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit": ; preds = %bb.e, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i"
  %.val27 = load i64, ptr %0, align 8, !range !39, !noundef !12
  %i.ab = getelementptr i8, ptr %0, i64 8
  %.val28 = load ptr, ptr %i.ab, align 8
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 %.val27, ptr %.val28)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.body, %bb.k
  %.pn12 = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.f, %.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.ac) #36
          to label %bb.m unwind label %bb.v

bb.k:                                             ; preds = %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit"
end_hunk_17
begin_hunk_18_@"_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h6e144ab9b1edf35aE":bb.a

"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h845a525c8e6e4575E.exit": ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr177drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf13649aaf31e161E"(ptr noalias noundef align 8 dereferenceable(176) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5552)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5553, !nonnull !12, !noundef !12
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !5553
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit" unwind label %bb.j

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit": ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit6" unwind label %bb.d

"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit": ; preds = %bb.c, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.e, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef align 8 dereferenceable(32) %0) #36
          to label %bb.e unwind label %bb.j

bb.d:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit"
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit"

"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit6": ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit"
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.g, %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit"
  %.pn2 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %.pn, %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit" ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5555)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5556, !nonnull !12, !noundef !12
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !5556
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit"

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit" unwind label %bb.j

bb.g:                                             ; preds = %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit6"
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit6"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5558)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !5559, !nonnull !12, !noundef !12
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !5559
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit8"

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit8"

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit8": ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.f, %bb.c, %"_ZN4core3ptr152drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd2607a758f0e7935E.exit"
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit": ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$..send..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf6670afc2619b3f3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !41, !noundef !12 ; 3 uses
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %"_ZN4core3ptr154drop_in_place$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$..send..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1cbf5d6d25f6ffa8E.exit", label %bb.b

"_ZN4core3ptr154drop_in_place$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$..send..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1cbf5d6d25f6ffa8E.exit": ; preds = %bb.h, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5564)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !5565, !noundef !12
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %0)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !5564, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %.val2.i, i8 %i.b) #36
          to label %bb.j unwind label %bb.i, !noalias !5564

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i": ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !5564, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.j = trunc nuw i8 %i.b to i1
  br i1 %i.j, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i"
  %i.k = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !5564
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !5564
  br i1 %i.n, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.i monotonic, align 4, !noalias !5564
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i"
  %i.o = atomicrmw xchg ptr %.val.i, i32 0 release, align 4, !noalias !5564
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.h, label %"_ZN4core3ptr154drop_in_place$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$..send..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1cbf5d6d25f6ffa8E.exit", !prof !18

bb.h:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.val.i), !noalias !5564
  br label %"_ZN4core3ptr154drop_in_place$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$..send..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1cbf5d6d25f6ffa8E.exit"

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !5564
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr185drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h4dd929cc2aa7d4cdE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5584)
  %i.b = load atomic i64, ptr %i.a monotonic, align 8, !alias.scope !5585
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.d = load atomic i64, ptr %i.c monotonic, align 8, !alias.scope !5585
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8, !alias.scope !5585 ; 2 uses
  %i.g = and i64 %i.b, -2                         ; 2 uses
  %i.h = and i64 %i.d, -2                         ; 2 uses
  %.not14.i.i.i = icmp eq i64 %i.g, %i.h
  br i1 %.not14.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i", %bb.a
  %.sroa.06.0.lcssa.i.i.i = phi ptr [ %i.f, %bb.a ], [ %.sroa.06.1.i.i.i, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i" ] ; 2 uses
  %i.i = icmp eq ptr %.sroa.06.0.lcssa.i.i.i, null
  br i1 %i.i, label %"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab93a8d8f0d734a0E.exit.i.i", label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i"
  %.sroa.0.016.i.i.i = phi i64 [ %i.q, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i" ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.06.015.i.i.i = phi ptr [ %.sroa.06.1.i.i.i, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i" ], [ %i.f, %bb.a ] ; 6 uses
  %i.j = lshr exact i64 %.sroa.0.016.i.i.i, 1
  %i.k = and i64 %i.j, 31                         ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.k, 31
  br i1 %.not11.i.i.i, label %bb.c, label %bb.d

bb.b:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa.i.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !5585
  br label %"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab93a8d8f0d734a0E.exit.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i.i, i64 496
  %i.m = load atomic ptr, ptr %i.l monotonic, align 8, !noalias !5585
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015.i.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !5585
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.015.i.i.i, i64 %i.k ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !5586, !noalias !5585, !noundef !12
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i" unwind label %bb.f, !noalias !5587

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i": ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.06.1.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.06.015.i.i.i, %bb.d ], [ %.sroa.06.015.i.i.i, %bb.e ] ; 2 uses
  %i.q = add i64 %.sroa.0.016.i.i.i, 2            ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.q, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..waker..SyncWaker$GT$17h9805acabda52ea35E"(ptr noalias noundef align 8 dereferenceable(64) %i.s) #36
          to label %bb.k unwind label %bb.i

"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab93a8d8f0d734a0E.exit.i.i": ; preds = %bb.b, %._crit_edge.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h69b442494aa1d1daE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.t)
          to label %"_ZN4core3ptr119drop_in_place$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hdc2fb3f0a7a5c137E.exit.i" unwind label %bb.g

bb.g:                                             ; preds = %"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab93a8d8f0d734a0E.exit.i.i"
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h69b442494aa1d1daE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.v) #36
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !5588
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !5587
  unreachable

"_ZN4core3ptr119drop_in_place$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hdc2fb3f0a7a5c137E.exit.i": ; preds = %"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab93a8d8f0d734a0E.exit.i.i"
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h69b442494aa1d1daE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.y)
          to label %"_ZN4core3ptr160drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$17h6b846d802d2cf646E.exit" unwind label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr119drop_in_place$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hdc2fb3f0a7a5c137E.exit.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

"_ZN4core3ptr160drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$17h6b846d802d2cf646E.exit": ; preds = %"_ZN4core3ptr119drop_in_place$LT$std..sync..mpmc..list..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17hdc2fb3f0a7a5c137E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 512, i64 noundef 128) #24
  ret void

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.u, %bb.g ], [ %i.r, %bb.f ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 512, i64 noundef 128) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h241c0f7e8c2ba797E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5593)
  %i.a = load i64, ptr %0, align 8, !range !34, !alias.scope !5593, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !5593, !align !14, !noundef !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !5593 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !12, !noalias !5594 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f, !noalias !5594

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !24, !invariant.load !12, !noalias !5594 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !35, !invariant.load !12, !noalias !5594 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #24, !noalias !5594
  br label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !24, !invariant.load !12, !noalias !5594 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !35, !invariant.load !12, !noalias !5594 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #24, !noalias !5594
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit5.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit5.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.f
  resume { ptr, i32 } %i.m

"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit": ; preds = %bb.a, %bb.b, %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr189drop_in_place$LT$core..option..Option$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hf411b1f2825ee6aaE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %"_ZN4core3ptr161drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h07319b17753ea06bE.exit", label %bb.b

"_ZN4core3ptr161drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h07319b17753ea06bE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.g = icmp ult i64 %i.f, -9223372036854775807
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %"_ZN4core3ptr161drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h07319b17753ea06bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.f) #24
  br label %"_ZN4core3ptr161drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h07319b17753ea06bE.exit"

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.n = icmp ult i64 %i.m, -9223372036854775807
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.m) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.e
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr190drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$$GT$17h044345b9fb1eb333E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !31, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
end_hunk_18
begin_hunk_19_@"_ZN5tokio4task5local8LocalSet9run_until28_$u7b$$u7b$closure$u7d$$u7d$17h9d9a59c4524adbfcE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7740
  br label %bb.bz

bb.bf:                                            ; preds = %bb.bb
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7738
  unreachable

bb.bg:                                            ; preds = %bb.be, %bb.ax, %bb.aa, %bb.x, %bb.w, %bb.s
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb, %bb.ba, %bb.as, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.bg ], [ %i.cs, %bb.aj ], [ %i.cv, %bb.am ], [ %i.db, %bb.as ], [ %i.db, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cv, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %bb.ba ], [ %i.dn, %bb.bb ]
  %i.dy = load i64, ptr %i.bk, align 8, !noalias !7737, !noundef !12
  %i.dz = add i64 %i.dy, -1
  store i64 %i.dz, ptr %i.bk, align 8, !noalias !7737
  br label %.thread.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i.i, %bb.bo, %bb.bk, %bb.n, %bb.l
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.o
  store i64 %i.bn, ptr %i.bk, align 8, !noalias !7737
  br label %.thread11.i.i.i.i.i.i.i.i.i

.thread11.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.bj, %bb.k
  %i.eb = load i8, ptr %i.aa, align 8, !range !41, !noalias !7737, !noundef !12
  switch i8 %i.eb, label %default.unreachable28 [
    i8 0, label %bb.bk
    i8 1, label %bb.bl
    i8 2, label %bb.bo
  ], !prof !44

bb.bk:                                            ; preds = %.thread11.i.i.i.i.i.i.i.i.i
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h24b4accda2c23457E)
          to label %.noexc19.i.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !7738

.noexc19.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bk
  store i8 1, ptr %i.aa, align 8, !noalias !7737
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc19.i.i.i.i.i.i.i.i.i, %.thread11.i.i.i.i.i.i.i.i.i
  %i.ec = load ptr, ptr %i.z, align 8, !noalias !7737, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !7738, !noundef !12 ; 2 uses
  %i.ed = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.ee, ptr %i.ec, align 8, !noalias !7738
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.bn, label %bb.br, !prof !18

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.trap()
  unreachable

bb.bo:                                            ; preds = %.thread11.i.i.i.i.i.i.i.i.i
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc20.i.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !7738

.noexc20.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %.noexc14.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !7737
  %i.eg = add i64 %.pre.i.i.i.i.i.i.i.i.i.i.i, -1
  store i64 %i.eg, ptr %i.bk, align 8, !noalias !7737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7737
  store ptr @333, ptr %i.n, align 8, !noalias !7737
  br label %.invoke.i.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bs, %bb.bp
  %.sink40.i.sroa.phi.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep1.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.sroa.phi2.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep3.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep4.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.sroa.phi5.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep6.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep7.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.sroa.phi8.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep9.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep10.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.bs ], [ %i.n, %bb.bp ]
  store i64 1, ptr %.sink40.i.sroa.phi.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  store ptr null, ptr %.sink40.i.sroa.phi2.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  store ptr inttoptr (i64 8 to ptr), ptr %.sink40.i.sroa.phi5.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  store i64 0, ptr %.sink40.i.sroa.phi8.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink40.i.i.i.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #35
          to label %.cont.i.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !7738

.cont.i.i.i.i.i.i.i.i.i:                          ; preds = %.invoke.i.i.i.i.i.i.i.i.i
  unreachable

bb.bq:                                            ; preds = %bb.bu
  unreachable

bb.br:                                            ; preds = %bb.bm
  %i.eh = load ptr, ptr %i.z, align 8, !noalias !7737, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7737
  store ptr %i.eh, ptr %i.l, align 8, !noalias !7737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7737
  %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !7737
  %i.ei = trunc nuw i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ei, label %bb.bt, label %bb.bu, !prof !23

bb.bs:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7737
  store ptr @335, ptr %i.m, align 8, !noalias !7737
  br label %.invoke.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.k, ptr noundef nonnull align 8 dereferenceable(248) %i.bg, i64 248, i1 false), !noalias !7737
  %i.ek = invoke fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17h755249f0dc4866deE(ptr noundef nonnull align 8 %i.ej, ptr noalias noundef align 8 captures(address) dereferenceable(248) %i.k)
          to label %bb.bx unwind label %bb.bv, !noalias !7738

bb.bu:                                            ; preds = %bb.br
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #35
          to label %bb.bq unwind label %bb.bv, !noalias !7738

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  %i.em = load ptr, ptr %i.l, align 8, !alias.scope !7759, !noalias !7737, !nonnull !12, !noundef !12 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !noalias !7760, !noundef !12
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  store i64 %i.eo, ptr %i.em, align 8, !noalias !7760
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.bw, label %.body.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.body.i.i.i.i.i.i unwind label %bb.cb, !noalias !7738

bb.bx:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7762)
  %i.eq = load ptr, ptr %i.l, align 8, !alias.scope !7763, !noalias !7737, !nonnull !12, !noundef !12 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !noalias !7764, !noundef !12
  %i.es = add i64 %i.er, -1                       ; 2 uses
  store i64 %i.es, ptr %i.eq, align 8, !noalias !7764
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.by, label %.noexc11.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc11.i.i.i.i.i.i unwind label %bb.cd, !noalias !7765

.noexc11.i.i.i.i.i.i:                             ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7737
  br label %bb.ce

bb.bz:                                            ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ar, %bb.aq
  %.sroa.0.0.i.i6.i.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.ar ], [ %i.cq, %bb.aq ], [ %i.dm, %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre.i.i21.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !7737
  %i.eu = add i64 %.pre.i.i21.i.i.i.i.i.i.i.i.i, -1
  store i64 %i.eu, ptr %i.bk, align 8, !noalias !7737
  %i.ev = load i64, ptr %i.o, align 8, !range !34, !noalias !7737, !noundef !12
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2148715cd225bc0eE"(ptr noundef nonnull align 8 %i.bg)
          to label %bb.ce unwind label %bb.cd, !noalias !7765

bb.cb:                                            ; preds = %bb.cc, %bb.bw
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7738
  unreachable

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bi, %bb.bh
  %.pn4.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %i.ea, %bb.bi ] ; 2 uses
  %i.ey = load i64, ptr %i.o, align 8, !range !34, !noalias !7737, !noundef !12
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.body.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2148715cd225bc0eE"(ptr noundef nonnull align 8 %i.bg)
          to label %.body.i.i.i.i.i.i unwind label %bb.cb, !noalias !7738

bb.cd:                                            ; preds = %bb.ca, %bb.by
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.cd, %bb.cc, %.thread.i.i.i.i.i.i.i.i.i, %bb.bw, %bb.bv
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fa, %bb.cd ], [ %i.el, %bb.bw ], [ %.pn4.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.el, %bb.bv ], [ %.pn4.i.i.i.i.i.i.i.i.i, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i.i.i.i.i)
  br label %bb.ch

bb.ce:                                            ; preds = %bb.ca, %bb.bz, %.noexc11.i.i.i.i.i.i
  %.sroa.0.028.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.noexc11.i.i.i.i.i.i ], [ %.sroa.0.0.i.i6.i.ph.i.i.i.i.i.i.i.i.i, %bb.bz ], [ %.sroa.0.0.i.i6.i.ph.i.i.i.i.i.i.i.i.i, %bb.ca ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7737
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i.i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.028.i.i.i.i.i.i.i.i.i) ]
  %i.fb = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.sroa.0.028.i.i.i.i.i.i.i.i.i)
          to label %.noexc13.i.i.i.i.i.i unwind label %bb.di, !noalias !7765

.noexc13.i.i.i.i.i.i:                             ; preds = %bb.ce
  br i1 %i.fb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.noexc13.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.sroa.0.028.i.i.i.i.i.i.i.i.i)
          to label %bb.cg unwind label %bb.di, !noalias !7765

bb.cg:                                            ; preds = %bb.cf, %.noexc13.i.i.i.i.i.i
  store i8 0, ptr %i.av, align 1, !noalias !7735
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !7735, !noundef !12 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.fd, ptr %i.fe, align 8, !noalias !7735
  br label %bb.ck

bb.ch:                                            ; preds = %bb.di, %.body22.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %.pn9.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hf, %bb.di ], [ %eh.lpad-body23.i.i.i.i.i.i, %.body22.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.fg = load i8, ptr %i.ff, align 1, !range !31, !noalias !7735, !noundef !12
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.dn, label %bb.dm

bb.ci:                                            ; preds = %.noexc3.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.do, !noalias !7732

.noexc.i.i.i.i.i:                                 ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %.noexc3.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #35
          to label %.noexc4.i.i.i.i.i unwind label %bb.do, !noalias !7732

.noexc4.i.i.i.i.i:                                ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cg, %._crit_edge.i.i.i.i.i.i
  %i.fi = phi ptr [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.fd, %bb.cg ] ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7736)
  call void @llvm.experimental.noalias.scope.decl(metadata !7766)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.db, label %bb.cl, !prof !18

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !7767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7768
  %i.fk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !range !41, !noalias !7769, !noundef !12
  switch i8 %i.fm, label %default.unreachable28 [
    i8 0, label %bb.cm
    i8 1, label %bb.cn
    i8 2, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"
  ], !prof !44

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.fk, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc17.i.i.i.i.i.i unwind label %bb.dg, !noalias !7765

.noexc17.i.i.i.i.i.i:                             ; preds = %bb.cm
  store i8 1, ptr %i.fl, align 8, !noalias !7769
  br label %bb.cn

bb.cn:                                            ; preds = %.noexc17.i.i.i.i.i.i, %bb.cl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 68
  %i.fo = load i8, ptr %i.fn, align 4, !range !31, !noalias !7770, !noundef !12 ; 2 uses
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 69 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !7770 ; 4 uses
  br i1 %i.fp, label %bb.co, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i"

bb.co:                                            ; preds = %bb.cn
  %.not.i.i.i.i.i15.i.i.i.i.i.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i15.i.i.i.i.i.i, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread.i.i.i.i.i.i.i", label %bb.cp

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread.i.i.i.i.i.i.i": ; preds = %bb.co
  invoke void @_ZN5tokio4task4coop14register_waker17hc1a950aa71c31494E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc18.i.i.i.i.i.i unwind label %bb.dg, !noalias !7732

.noexc18.i.i.i.i.i.i:                             ; preds = %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7768
  store i24 0, ptr %i.b, align 4, !noalias !7768
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.fs)
          to label %.noexc19.i.i.i.i.i.i unwind label %bb.dg, !noalias !7732

.noexc19.i.i.i.i.i.i:                             ; preds = %.noexc18.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7768
  br label %bb.dp

bb.cp:                                            ; preds = %bb.co
  %i.ft = add i8 %i.fr, -1
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.cp, %bb.cn
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ft, %bb.cp ], [ %i.fr, %bb.cn ]
  store i8 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fq, align 1, !noalias !7770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7768
  store i24 0, ptr %i.b, align 4, !noalias !7768
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.fu)
          to label %.noexc20.i.i.i.i.i.i unwind label %bb.dg, !noalias !7765

.noexc20.i.i.i.i.i.i:                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7768
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %.noexc20.i.i.i.i.i.i, %bb.cl
  %.sroa.03.012.i37.off8.i.i.i.i.i.i.i.i = phi i8 [ %i.fo, %.noexc20.i.i.i.i.i.i ], [ 0, %bb.cl ]
  %.sroa.03.012.i37.off16.i.i.i.i.i.i.i.i = phi i8 [ %i.fr, %.noexc20.i.i.i.i.i.i ], [ 0, %bb.cl ]
  store i8 %.sroa.03.012.i37.off8.i.i.i.i.i.i.i.i, ptr %i.c, align 1, !noalias !7768
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.012.i37.off16.i.i.i.i.i.i.i.i, ptr %i.fv, align 1, !noalias !7768
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fi, i64 48 ; 4 uses
  %i.fx = invoke noundef i64 @_ZN5tokio4sync7oneshot5State4load17h7852ae69f84d6a44E(ptr noundef nonnull align 8 %i.fw, i8 noundef 2)
          to label %bb.cr unwind label %bb.cq, !noalias !7771 ; 3 uses

bb.cq:                                            ; preds = %.thread.i.i.i.i.i.i.i.i, %bb.cx, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.c)
          to label %.body22.i.i.i.i.i.i unwind label %bb.da, !noalias !7772

bb.cr:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"
  %i.fz = and i64 %i.fx, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cs, label %bb.dc

bb.cs:                                            ; preds = %bb.cr
  %i.ga = and i64 %i.fx, 4
  %.not29.i.i.i.i.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not29.i.i.i.i.i.i.i.i, label %bb.ct, label %.thread.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.gb = and i64 %i.fx, 1
  %.not30.i.i.i.i.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not30.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.cu

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.cs
  store i8 0, ptr %i.c, align 1, !noalias !7768
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.c)
          to label %.noexc21.i.i.i.i.i.i unwind label %bb.dg, !noalias !7765

.noexc21.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7768
  br label %bb.dd

bb.cu:                                            ; preds = %bb.ct
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.gd = load ptr, ptr %1, align 8, !alias.scope !7773, !noalias !7732, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !7774, !noundef !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !7771, !noundef !12
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.gj = load ptr, ptr %i.gd, align 8, !noalias !7771, !nonnull !12, !align !13, !noundef !12
  %i.gk = load ptr, ptr %i.gc, align 8, !noalias !7774, !nonnull !12, !align !13, !noundef !12
  %i.gl = icmp eq ptr %i.gk, %i.gj
  br i1 %i.gl, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.gm = atomicrmw and ptr %i.fw, i64 -2 acq_rel, align 8, !noalias !7774
  %i.gn = and i64 %i.gm, 2
  %.not31.i.i.i.i.i.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not31.i.i.i.i.i.i.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN5tokio4sync7oneshot4Task9drop_task17h4716b0adcea0322aE(ptr noundef nonnull align 8 %i.gc)
          to label %.thread.i.i.i.i.i.i.i.i unwind label %bb.cq, !noalias !7771

bb.cy:                                            ; preds = %bb.cw
  %i.go = atomicrmw or ptr %i.fw, i64 1 acq_rel, align 8, !noalias !7774 ; 0 uses
  br label %bb.dc

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.cx, %bb.ct
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  invoke void @_ZN5tokio4sync7oneshot4Task8set_task17hf2a8b67a2f898703E(ptr noundef nonnull align 8 %i.gp, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.cz unwind label %bb.cq, !noalias !7772

bb.cz:                                            ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.gq = atomicrmw or ptr %i.fw, i64 1 acq_rel, align 8, !noalias !7775
  %i.gr = and i64 %i.gq, 2
  %.not33.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not33.i.i.i.i.i.i.i.i, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i", label %bb.dc

bb.da:                                            ; preds = %bb.cq
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7772
  unreachable

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i": ; preds = %bb.cz, %bb.cv
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.c)
end_hunk_19
begin_hunk_20_@_ZN5tokio7runtime4task3raw21drop_join_handle_slow17hda2b46b79cfe490eE:bb.a
          to label %bb.h unwind label %bb.i, !noalias !7955

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !24, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !35, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #24, !noalias !7955
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i"

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !24, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !35, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.y = icmp ult i64 %i.x, -9223372036854775807
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.x) #24, !noalias !7955
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.t, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i" ], [ %i.t, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.m, %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i"
  %i.aa = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.aa, label %bb.k, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h2840cdd03bcba41fE.exit"

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr242drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hcd5aa988f161cb20E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i": ; preds = %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h2840cdd03bcba41fE.exit"

bb.m:                                             ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZN5tokio7runtime4task4core7Trailer9set_waker17h4ecbb5fce603c1a0E(ptr noundef nonnull align 8 %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h2840cdd03bcba41fE.exit": ; preds = %bb.j, %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h8d1cba1c4250ea72E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = alloca [256 x i8], align 8               ; 7 uses
  %i.c = alloca [256 x i8], align 8               ; 4 uses
  %i.d = alloca [256 x i8], align 8               ; 7 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  %i.f = alloca [256 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [256 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7972
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !7973
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !7974, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7974
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !7974, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !7974
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd840104c694c9946E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !7972

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7974
  store ptr @356, ptr %i.h, align 8, !noalias !7974
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !7974
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !7974
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !7974
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !7974
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !7972

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7972
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7974
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7975
  store i32 2, ptr %i.i, align 8, !noalias !7975
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7972
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7972
  store i32 2, ptr %i.f, align 8, !noalias !7972
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !7972

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7972
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7972
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !7973 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7973
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah), "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !7973, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7976
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !7973
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !7973
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7973
  store i32 1, ptr %i.e, align 8, !noalias !7976
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !7973

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !7973 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7973
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7976
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !7977 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !7977

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !7977
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !7977
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7972
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17he40d5b15687bdcd0E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$8schedule17h173c6497b05515f0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr242drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hcd5aa988f161cb20E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr242drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hcd5aa988f161cb20E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i", %bb.af, %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i", %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h97543f300089c877E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [128 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7994
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !7995
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !7996, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7996
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !7996, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !7996
  %i.v = invoke noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !7994

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7996
  store ptr @356, ptr %i.h, align 8, !noalias !7996
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !7996
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !7996
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !7996
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !7996
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !7994

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7994
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7996
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7997
  store i32 2, ptr %i.i, align 8, !noalias !7997
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7994
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7994
  store i32 2, ptr %i.f, align 8, !noalias !7994
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !7994

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7994
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7994
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !7995 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7995
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah), "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !7995, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7998
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !7995
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !7995
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7995
  store i32 1, ptr %i.e, align 8, !noalias !7998
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !7995

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !7995 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7995
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7998
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !7999 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !7999

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !7999
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !7999
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7994
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17heaab7690effae0faE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$8schedule17h173c6497b05515f0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hb71a7039b7716641E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hb71a7039b7716641E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i", %bb.af, %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i.i", %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hae6b08d5ee64d6f7E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [128 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8016
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8017
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8018, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8018
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8018, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8018
  %i.v = invoke noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8016

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8018
  store ptr @356, ptr %i.h, align 8, !noalias !8018
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8018
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8018
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8018
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8018
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8016

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8016
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8018
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8019
  store i32 2, ptr %i.i, align 8, !noalias !8019
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8016
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8016
  store i32 2, ptr %i.f, align 8, !noalias !8016
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8016

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8016
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8016
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8017 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8017
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah), "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8017, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8020
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8017
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8017
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8017
  store i32 1, ptr %i.e, align 8, !noalias !8020
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8017

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8017 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8017
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8020
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8021 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8021

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8021
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8021
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8016
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h094655b160d53463E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio7runtime9scheduler14current_thread134_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$8schedule17hf8ca7dccab44d288E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h45a5ee6ed59119f1E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h45a5ee6ed59119f1E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i", %bb.af, %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i.i", %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hb3afda82d630c17bE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = alloca [256 x i8], align 8               ; 7 uses
  %i.c = alloca [256 x i8], align 8               ; 4 uses
  %i.d = alloca [256 x i8], align 8               ; 7 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  %i.f = alloca [256 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [256 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8038
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8039
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8040, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8040
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8040, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8040
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd840104c694c9946E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8038

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8040
  store ptr @356, ptr %i.h, align 8, !noalias !8040
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8040
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8040
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8040
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8040
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8038

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8038
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8040
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8041
  store i32 2, ptr %i.i, align 8, !noalias !8041
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8038
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8038
  store i32 2, ptr %i.f, align 8, !noalias !8038
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8038

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8038
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8038
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8039 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8039
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah), "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8039, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8042
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8039
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8039
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8039
  store i32 1, ptr %i.e, align 8, !noalias !8042
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8039

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8039 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8039
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8042
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8043 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8043

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8043
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8043
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8038
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h840b81f01ea6317aE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio7runtime9scheduler14current_thread134_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$8schedule17hf8ca7dccab44d288E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr265drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h9cd8db710db39e66E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr265drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h9cd8db710db39e66E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i", %bb.af, %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i.i", %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hfc0f7b05b349aa70E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [192 x i8], align 8               ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 7 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [192 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8060
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8061
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8062, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8062
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8062, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8062
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8060

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8062
  store ptr @356, ptr %i.h, align 8, !noalias !8062
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8062
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8062
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8062
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8062
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8060

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8060
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8062
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8063
  store i32 2, ptr %i.i, align 8, !noalias !8063
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8060
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8060
  store i32 2, ptr %i.f, align 8, !noalias !8060
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8060

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8060
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8060
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8061 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8061
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah), "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8061, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8064
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8061
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8061
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8061
  store i32 1, ptr %i.e, align 8, !noalias !8064
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8061

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8061 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8061
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8064
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8065 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8065

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8065
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8065
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8060
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h2f70169177527d3bE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$8schedule17h173c6497b05515f0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr213drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h82241c80bf4baf57E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr213drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h82241c80bf4baf57E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i", %bb.af, %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i.i", %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hfff6135bea75e003E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [192 x i8], align 8               ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 7 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [192 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h07d11f2602ca0174E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8082
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8083
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8084, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8084
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8084, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8084
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8082

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8084
  store ptr @356, ptr %i.h, align 8, !noalias !8084
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8084
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8084
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8084
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8084
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8082

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8082
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8084
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8085
  store i32 2, ptr %i.i, align 8, !noalias !8085
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8082
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8082
  store i32 2, ptr %i.f, align 8, !noalias !8082
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8082

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8082
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8082
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8083 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8083
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah), "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8083, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8086
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8083
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8083
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8083
  store i32 1, ptr %i.e, align 8, !noalias !8086
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8083

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8083 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8083
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8086
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8087 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8087

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8087
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8087
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h1c9d2ee158b3bd45E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h1c9d2ee158b3bd45E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h1c9d2ee158b3bd45E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8082
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h07d11f2602ca0174E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread6.i"
end_hunk_20
begin_hunk_21_@"_ZN83_$LT$actix_server..worker..ServerWorkerConfig$u20$as$u20$core..default..Default$GT$7default17hb8f9b6a9731e343eE":bb.a
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %"_ZN4core3ptr113drop_in_place$LT$core..result..Result$LT$core..num..nonzero..NonZero$LT$usize$GT$$C$std..io..error..Error$GT$$GT$17h6f10ec3539047deeE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6map_or17h1219a80b8cfe20cfE.exit"

"_ZN4core3ptr113drop_in_place$LT$core..result..Result$LT$core..num..nonzero..NonZero$LT$usize$GT$$C$std..io..error..Error$GT$$GT$17h6f10ec3539047deeE.exit.i": ; preds = %bb.a
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6map_or17h1219a80b8cfe20cfE.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$6map_or17h1219a80b8cfe20cfE.exit": ; preds = %bb.b, %"_ZN4core3ptr113drop_in_place$LT$core..result..Result$LT$core..num..nonzero..NonZero$LT$usize$GT$$C$std..io..error..Error$GT$$GT$17h6f10ec3539047deeE.exit.i"
  %.sroa.0.05.i = phi i64 [ 2, %"_ZN4core3ptr113drop_in_place$LT$core..result..Result$LT$core..num..nonzero..NonZero$LT$usize$GT$$C$std..io..error..Error$GT$$GT$17h6f10ec3539047deeE.exit.i" ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = udiv i64 512, %.sroa.0.05.i
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.h, i64 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 30, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.j, align 8
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 25600, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$actix_server..test_server..TestServerHandle$u20$as$u20$core..ops..drop..Drop$GT$4drop17h987ae0a8adfafa5aE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8439
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN12actix_server6handle12ServerHandle4stop17hb43e8fbb4077a0b7E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i1 noundef zeroext false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !16, !noalias !8439, !noundef !12
  switch i8 %i.g, label %"_ZN4core3ptr90drop_in_place$LT$actix_server..handle..ServerHandle..stop..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2df7e24d4ae79c2cE.exit.i" [
    i8 0, label %common.ret.sink.split.i.i
    i8 3, label %bb.b
  ]

common.ret.sink.split.i.i:                        ; preds = %bb.b, %bb.a
  %.sink.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$tokio..sync..oneshot..Receiver$LT$$LP$$RP$$GT$$GT$17hda34d53a9da8a35cE"(ptr noalias noundef align 8 dereferenceable(8) %.sink.i.i), !noalias !8439
  br label %"_ZN4core3ptr90drop_in_place$LT$actix_server..handle..ServerHandle..stop..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2df7e24d4ae79c2cE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %common.ret.sink.split.i.i

"_ZN4core3ptr90drop_in_place$LT$actix_server..handle..ServerHandle..stop..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2df7e24d4ae79c2cE.exit.i": ; preds = %common.ret.sink.split.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8439
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !alias.scope !8439 ; 2 uses
  store ptr null, ptr %i.i, align 8, !alias.scope !8439
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %bb.y, label %bb.c, !prof !18

bb.c:                                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$actix_server..handle..ServerHandle..stop..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2df7e24d4ae79c2cE.exit.i"
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.0.copyload.i, ptr %i.c, align 8, !noalias !8439
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !8440)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !8440, !noalias !8439, !noundef !12
  invoke void @_ZN3std3sys6thread4unix6Thread4join17h6768b35fcb3b5365E(i64 noundef %i.k)
          to label %bb.f unwind label %bb.d, !noalias !8441

bb.d:                                             ; preds = %bb.k, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.thread.i.i", %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8442)
  call void @llvm.experimental.noalias.scope.decl(metadata !8443)
  call void @llvm.experimental.noalias.scope.decl(metadata !8444)
  call void @llvm.experimental.noalias.scope.decl(metadata !8445)
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !8446, !noalias !8439, !nonnull !12, !noundef !12
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !8447
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i" unwind label %bb.o, !noalias !8448

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !8440, !noalias !8439, !nonnull !12, !noundef !12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.q = cmpxchg ptr %i.p, i64 1, i64 -1 acquire monotonic, align 8, !noalias !8441
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.i.i", label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.thread.i.i", !prof !36

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.i.i": ; preds = %bb.f
  %i.r = load atomic i64, ptr %.val.i.i acquire, align 8, !noalias !8441
  %i.s = icmp eq i64 %i.r, 1
  store atomic i64 1, ptr %i.p release, align 8, !noalias !8441
  br i1 %i.s, label %bb.g, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.thread.i.i", !prof !37

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.thread.i.i": ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.i.i", %bb.f
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @286, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #35
          to label %bb.h unwind label %bb.d, !noalias !8441

bb.g:                                             ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.i.i"
  %i.t = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !8440, !noalias !8439, !nonnull !12, !noundef !12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 8, !noalias !8441
  store i64 0, ptr %i.u, align 8, !noalias !8441
  %i.v = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.v, label %bb.i, label %bb.k, !prof !23

bb.h:                                             ; preds = %bb.k, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h120cf74431ee8e52E.exit.thread.i.i"
  unreachable

bb.i:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.0.0.copyload6.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8449 ; 2 uses
  %.sroa.57.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !8449 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8450)
  call void @llvm.experimental.noalias.scope.decl(metadata !8451)
  call void @llvm.experimental.noalias.scope.decl(metadata !8452)
  call void @llvm.experimental.noalias.scope.decl(metadata !8453)
  %i.w = load ptr, ptr %i.c, align 8, !alias.scope !8454, !noalias !8439, !nonnull !12, !noundef !12
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !8455
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i"

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i" unwind label %bb.l, !noalias !8448

bb.k:                                             ; preds = %bb.g
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #35
          to label %bb.h unwind label %bb.d, !noalias !8441

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8456)
  call void @llvm.experimental.noalias.scope.decl(metadata !8457)
  %i.aa = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !8458, !noalias !8439, !nonnull !12, !noundef !12
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !8459
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %common.resume.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h666af4fa9371a64dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.5.0..sroa_idx2.i)
          to label %common.resume.i unwind label %bb.o, !noalias !8448

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i": ; preds = %bb.j, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8460)
  call void @llvm.experimental.noalias.scope.decl(metadata !8461)
  %i.ad = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !8462, !noalias !8439, !nonnull !12, !noundef !12
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !8463
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.n, label %"_ZN3std6thread18JoinInner$LT$T$GT$4join17h8c229fe2225fb420E.exit.i"

bb.n:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h666af4fa9371a64dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.5.0..sroa_idx2.i), !noalias !8448
  br label %"_ZN3std6thread18JoinInner$LT$T$GT$4join17h8c229fe2225fb420E.exit.i"

bb.o:                                             ; preds = %bb.p, %bb.m, %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8448
  unreachable

common.resume.i:                                  ; preds = %bb.v, %bb.r, %bb.p, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i", %bb.m, %bb.l
  %common.resume.op.i = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.l, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i" ], [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.l, %bb.p ], [ %i.an, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i": ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8464)
  call void @llvm.experimental.noalias.scope.decl(metadata !8465)
  %i.ah = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !8466, !noalias !8439, !nonnull !12, !noundef !12
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !8467
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %common.resume.i

bb.p:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h666af4fa9371a64dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.5.0..sroa_idx2.i)
          to label %common.resume.i unwind label %bb.o, !noalias !8448

"_ZN3std6thread18JoinInner$LT$T$GT$4join17h8c229fe2225fb420E.exit.i": ; preds = %bb.n, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit7.i.i"
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload6.i, null
  br i1 %.not.i4.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hde78eaac2e243766E.exit.i", label %bb.q, !prof !23

bb.q:                                             ; preds = %"_ZN3std6thread18JoinInner$LT$T$GT$4join17h8c229fe2225fb420E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8468
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  store ptr %.sroa.0.0.copyload6.i, ptr %i.a, align 8, !noalias !8468
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.57.0.copyload.i, ptr %i.ak, align 8, !noalias !8468
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #35
          to label %bb.s unwind label %bb.r, !noalias !8468

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haceb59e96844710cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #36
          to label %common.resume.i unwind label %bb.t, !noalias !8468

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8468
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hde78eaac2e243766E.exit.i": ; preds = %"_ZN3std6thread18JoinInner$LT$T$GT$4join17h8c229fe2225fb420E.exit.i"
  %.not.i.i = icmp eq ptr %.sroa.57.0.copyload.i, null
  br i1 %.not.i.i, label %_ZN12actix_server11test_server16TestServerHandle4stop17h57d5ebdcf5d41d1fE.exit, label %bb.u, !prof !23

bb.u:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hde78eaac2e243766E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8469
  store ptr %.sroa.57.0.copyload.i, ptr %i.b, align 8, !noalias !8469
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #35
          to label %bb.w unwind label %bb.v, !noalias !8439

bb.v:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #36
          to label %common.resume.i unwind label %bb.x, !noalias !8439

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8439
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$actix_server..handle..ServerHandle..stop..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2df7e24d4ae79c2cE.exit.i"
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #35, !noalias !8439
  unreachable

_ZN12actix_server11test_server16TestServerHandle4stop17h57d5ebdcf5d41d1fE.exit: ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hde78eaac2e243766E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef range(i8 0, 4) i8 @"_ZN88_$LT$tokio..sync..oneshot..Receiver$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17ha2f649d5212ad23bE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !noundef !12  ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.r, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8484)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8484
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !41, !noalias !8485, !noundef !12
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i"
  ], !prof !44

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E), !noalias !8485
  store i8 1, ptr %i.f, align 8, !noalias !8485
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.i = load i8, ptr %i.h, align 4, !range !31, !noalias !8486, !noundef !12 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 69 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !8486 ; 4 uses
  br i1 %i.j, label %bb.e, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i"

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit.thread", label %bb.f

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit.thread": ; preds = %bb.e
  tail call void @_ZN5tokio4task4coop14register_waker17hc1a950aa71c31494E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8484
  store i24 0, ptr %i.a, align 4, !noalias !8484
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8484
  br label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.n = add i8 %i.l, -1
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i": ; preds = %bb.d, %bb.f
  %.sroa.5.0.i.i.i.i = phi i8 [ %i.n, %bb.f ], [ %i.l, %bb.d ]
  store i8 %.sroa.5.0.i.i.i.i, ptr %i.k, align 1, !noalias !8486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8484
  store i24 0, ptr %i.a, align 4, !noalias !8484
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8484
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i", %bb.b
  %.sroa.03.012.i43.off8.i = phi i8 [ %i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i" ], [ 0, %bb.b ]
  %.sroa.03.012.i43.off16.i = phi i8 [ %i.l, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i" ], [ 0, %bb.b ]
  store i8 %.sroa.03.012.i43.off8.i, ptr %i.b, align 1, !noalias !8484
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.012.i43.off16.i, ptr %i.p, align 1, !noalias !8484
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.r = invoke noundef i64 @_ZN5tokio4sync7oneshot5State4load17h7852ae69f84d6a44E(ptr noundef nonnull align 8 %i.q, i8 noundef 2)
          to label %bb.h unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %.thread.i, %bb.n, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.b)
          to label %common.resume unwind label %bb.q

bb.h:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i"
  %i.t = and i64 %i.r, 2
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.i, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit"

bb.i:                                             ; preds = %bb.h
  %i.u = and i64 %i.r, 4
  %.not32.i = icmp eq i64 %i.u, 0
  br i1 %.not32.i, label %bb.j, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit.thread11"

bb.j:                                             ; preds = %bb.i
  %i.v = and i64 %i.r, 1
  %.not33.i = icmp eq i64 %i.v, 0
  br i1 %.not33.i, label %.thread.i, label %bb.k

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit.thread11": ; preds = %bb.i
  store i8 0, ptr %i.b, align 1, !noalias !8484
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.x = load ptr, ptr %1, align 8, !alias.scope !8484, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !noalias !8484, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !12
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.x, align 8, !nonnull !12, !align !13, !noundef !12
  %i.ae = load ptr, ptr %i.w, align 8, !noalias !8484, !nonnull !12, !align !13, !noundef !12
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit.thread9", label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = atomicrmw and ptr %i.q, i64 -2 acq_rel, align 8, !noalias !8484
  %i.ah = and i64 %i.ag, 2
  %.not34.i = icmp eq i64 %i.ah, 0
  br i1 %.not34.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5tokio4sync7oneshot4Task9drop_task17h4716b0adcea0322aE(ptr noundef nonnull align 8 %i.w)
          to label %.thread.i unwind label %bb.g

bb.o:                                             ; preds = %bb.m
  %i.ai = atomicrmw or ptr %i.q, i64 1 acq_rel, align 8, !noalias !8484 ; 0 uses
  br label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit"

.thread.i:                                        ; preds = %bb.j, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZN5tokio4sync7oneshot4Task8set_task17hf2a8b67a2f898703E(ptr noundef nonnull align 8 %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.p unwind label %bb.g

bb.p:                                             ; preds = %.thread.i
  %i.ak = atomicrmw or ptr %i.q, i64 1 acq_rel, align 8, !noalias !8484
  %i.al = and i64 %i.ak, 2
  %.not37.i = icmp eq i64 %i.al, 0
  br i1 %.not37.i, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit.thread9", label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hfc02ac8957a96653E.exit"

bb.q:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_21
