Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/bstr-a490daa9957f02e1.bstr.7a768d85a95191e5-cgu.04?download=true
inline.NumInlined: 21
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bstr-1.13.0/src/utf8.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\\\00\00\00\00\00\00\00\03\03\00\00#\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10MatchErrorECsavRPklju9Q7_4bstr, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs19_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_10MatchErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@3 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@4 = private unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08", align 1
@5 = private unnamed_addr constant [108 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\18$<`T\00\00\000H\00\0C\00\00\00\00\00\0C\00\0C\00\00\00\18\00\00\00\00\00\18\00\18\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\18\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00$\00$\00\00\00$\00\00\00\00\00$\00$\00\00\00$\00\00\00\00\00\00\00\00\00\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\\\00\00\00\00\00\00\00O\03\00\00\0E\00\00\00" }>, align 8
@7 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bstr-1.13.0/src/unicode/grapheme.rs\00", align 1
@_RNvNtNtNtCsavRPklju9Q7_4bstr7unicode3fsm18grapheme_break_fwd18GRAPHEME_BREAK_FWD = external hidden global { { ptr, { { { ptr } } }, {} } }
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"h\00\00\00\00\00\00\00\D8\00\00\003\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"h\00\00\00\00\00\00\00\DB\00\00\00#\00\00\00" }>, align 8
@10 = private unnamed_addr constant [3 x i8] c"\EF\BF\BD", align 1
@_RNvNtNtNtCsavRPklju9Q7_4bstr7unicode3fsm18grapheme_break_rev18GRAPHEME_BREAK_REV = external hidden global { { ptr, { { { ptr } } }, {} } }
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"h\00\00\00\00\00\00\00\EA\00\00\003\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"h\00\00\00\00\00\00\00\EE\00\00\00#\00\00\00" }>, align 8
@_RNvNtNtNtCsavRPklju9Q7_4bstr7unicode3fsm22regional_indicator_rev22REGIONAL_INDICATOR_REV = external hidden global { { ptr, { { { ptr } } }, {} } }
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"h\00\00\00\00\00\00\00\15\01\00\007\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"h\00\00\00\00\00\00\00\17\01\00\00\11\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4util6search14MatchErrorKindENtB6_5Debug3fmtCsavRPklju9Q7_4bstr }>, align 8
@16 = private unnamed_addr constant [10 x i8] c"MatchError", align 1

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10MatchErrorECsavRPklju9Q7_4bstr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 16, i64 noundef 8) #12
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme15decode_grapheme(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 10 uses
  switch i64 %2, label %bb.k [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_.exit, %bb.w, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 1, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %2, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = tail call noundef nonnull align 16 ptr @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata4util4lazy4lazyINtB5_4LazyINtNtNtBb_3dfa6sparse3DFARShEFEB15_E3getCsavRPklju9Q7_4bstr(ptr noundef nonnull align 8 @_RNvNtNtNtCsavRPklju9Q7_4bstr7unicode3fsm18grapheme_break_fwd18GRAPHEME_BREAK_FWD) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8, !noalias !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 704
  %.val.i = load i8, ptr %i.h, align 16, !range !11, !alias.scope !7, !noalias !12, !noundef !3
  %i.i = trunc nuw i8 %.val.i to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 705
  %.val15.i = load i8, ptr %i.j, align 1, !range !11, !alias.scope !7, !noalias !12
  %i.k = trunc nuw i8 %.val15.i to i1
  %.sroa.0.0.i = select i1 %i.i, i1 %i.k, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e), !noalias !4
  %i.l = load i64, ptr %i.a, align 8, !range !13, !noalias !9, !noundef !3 ; 2 uses
  %i.m = icmp eq i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !9 ; 2 uses
  br i1 %i.m, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread6, label %bb.e

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread6: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = trunc nuw i64 %i.l to i1
  br i1 %i.q, label %bb.f, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread

bb.f:                                             ; preds = %bb.e
  br i1 %.sroa.0.0.i, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.p, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !4, !noalias !15
  br label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread: ; preds = %bb.e, %bb.g
  %.ph = phi i64 [ 1, %bb.g ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit: ; preds = %bb.f
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1A_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, i64 noundef %i.p, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.pr = load i64, ptr %i.d, align 8, !alias.scope !16, !noalias !19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.r = icmp eq i64 %.pr, 2
  br i1 %i.r, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit, !prof !23

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !16, !noalias !19
  br label %bb.h

bb.h:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread6
  %i.s = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit._crit_edge ], [ %i.o, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread6 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24
  store ptr %i.s, ptr %i.c, align 8, !noalias !24
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13
          to label %bb.i unwind label %bb.j, !noalias !25

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %.val.i5 = load ptr, ptr %i.c, align 8, !alias.scope !26, !noalias !25, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5, i64 noundef 16, i64 noundef 8) #12, !noalias !29
  resume { ptr, i32 } %i.t

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit
  %i.u = phi i64 [ %.ph, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !25, !noalias !30 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.n, label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.w = load i8, ptr %1, align 1, !noundef !3    ; 2 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !3
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l
  switch i8 %i.w, label %bb.w [
    i8 9, label %bb.d
    i8 10, label %bb.d
    i8 12, label %bb.d
    i8 13, label %bb.d
    i8 32, label %bb.d
  ]

bb.n:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit
  %.not4 = icmp ugt i64 %.sroa.4.0.copyload, %2
  br i1 %.not4, label %bb.u, label %bb.v, !prof !31

bb.o:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.ab = load i8, ptr %1, align 1, !alias.scope !32, !noundef !3
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.o
  %exitcond.not.i45 = icmp eq i64 %2, 0
  br i1 %exitcond.not.i45, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_.exit, label %.lr.ph

.preheader.i:                                     ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i
  %i.ad = zext i8 %i.aw to i64
  %exitcond.not.i = icmp eq i64 %i.ax, %2
  br i1 %exitcond.not.i, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.03.0.i48 = phi i64 [ %i.ax, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.sroa.017.0.i47 = phi i32 [ %storemerge.i.i, %.preheader.i ], [ 0, %.preheader.i.preheader ]
  %.sroa.015.0.i46 = phi i64 [ %i.ad, %.preheader.i ], [ 12, %.preheader.i.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.0.i48
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !32, !noundef !3 ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @4, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !35, !noundef !3 ; 2 uses
  %i.aj = zext i8 %i.af to i32                    ; 2 uses
  %i.ak = icmp eq i64 %.sroa.015.0.i46, 12
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.al = and i8 %i.ai, 31
  %i.am = zext nneg i8 %i.al to i32
  %i.an = lshr i32 255, %i.am
  %i.ao = and i32 %i.an, %i.aj
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.ap = and i32 %i.aj, 63
  %i.aq = shl i32 %.sroa.017.0.i47, 6
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge.i.i = phi i32 [ %i.ar, %bb.q ], [ %i.ao, %bb.p ]
  %i.as = zext i8 %i.ai to i64
  %i.at = add nuw nsw i64 %.sroa.015.0.i46, %i.as ; 3 uses
  %i.au = icmp samesign ult i64 %i.at, 108
  br i1 %i.au, label %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef 108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !35
  unreachable

_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i: ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr @5, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !noalias !35, !noundef !3 ; 2 uses
  %i.ax = add nuw i64 %.sroa.03.0.i48, 1          ; 3 uses
  switch i8 %i.aw, label %.preheader.i [
    i8 12, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_.exit
    i8 0, label %bb.t
  ]

bb.t:                                             ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i
  %.sroa.0.0.i.i = call noundef range(i64 1, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %.sroa.03.0.i48, i64 1)
  br label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_.exit

_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_.exit: ; preds = %.preheader.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i, %.preheader.i.preheader, %bb.o, %bb.t
  %.sroa.6.1.i = phi i64 [ 1, %bb.o ], [ %.sroa.0.0.i.i, %bb.t ], [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %i.ax, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i ]
  store ptr @10, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.1.i, ptr %i.az, align 8
  br label %bb.c

bb.u:                                             ; preds = %bb.n
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.4.0.copyload, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.v:                                             ; preds = %bb.n
  store ptr %1, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %i.bb, align 8
  br label %bb.c

bb.w:                                             ; preds = %bb.m
  store ptr %1, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.bd, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme20decode_last_grapheme(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 12 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 1, ptr %i.h, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %2, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = tail call noundef nonnull align 16 ptr @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata4util4lazy4lazyINtB5_4LazyINtNtNtBb_3dfa6sparse3DFARShEFEB15_E3getCsavRPklju9Q7_4bstr(ptr noundef nonnull align 8 @_RNvNtNtNtCsavRPklju9Q7_4bstr7unicode3fsm18grapheme_break_rev18GRAPHEME_BREAK_REV) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %.val.i = load i8, ptr %i.l, align 16, !range !11, !alias.scope !42, !noalias !44, !noundef !3
  %i.m = trunc nuw i8 %.val.i to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 705
  %.val15.i = load i8, ptr %i.n, align 1, !range !11, !alias.scope !42, !noalias !44
  %i.o = trunc nuw i8 %.val15.i to i1
  %.sroa.0.0.i = select i1 %i.m, i1 %i.o, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h), !noalias !39
  %i.p = load i64, ptr %i.e, align 8, !range !13, !noalias !46, !noundef !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !46 ; 2 uses
  br i1 %i.q, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread8, label %bb.d

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread8: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46
  %i.t = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.u = trunc nuw i64 %i.p to i1
  br i1 %i.u, label %bb.e, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread62

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.0.0.i, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread, !prof !14

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread62: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread: ; preds = %bb.e
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.t, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !39, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit: ; preds = %bb.e
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1A_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, i64 noundef %i.t, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.k)
  %.pr = load i64, ptr %i.g, align 8, !alias.scope !48, !noalias !51 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.v = icmp eq i64 %.pr, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.v, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit, !prof !23

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !48, !noalias !51
  br label %bb.f

bb.f:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread8
  %i.w = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit._crit_edge ], [ %i.s, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread8 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !55
  store ptr %i.w, ptr %i.f, align 8, !noalias !55
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
          to label %bb.g unwind label %bb.h, !noalias !56

bb.g:                                             ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %.sink = phi ptr [ %i.b, %bb.o ], [ %i.f, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.x, %bb.h ]
  %.val.i.i = load ptr, ptr %.sink, align 8, !noalias !3, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 16, i64 noundef 8) #12, !noalias !3
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit
  %.sroa.4.0.copyload = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !56, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.y = trunc nuw i64 %.pr to i1
  br i1 %i.y, label %bb.j, label %bb.s

bb.i:                                             ; preds = %bb.ac, %_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit
  %.sroa.4.0.copyload61 = phi i64 [ %i.t, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread ], [ %.sroa.4.0.copyload, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit ] ; 3 uses
  %i.z = sub i64 %2, %.sroa.4.0.copyload61
  %i.aa = icmp eq i64 %i.z, 8
  br i1 %i.aa, label %.preheader.i, label %_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme33adjust_rev_for_regional_indicator.exit

.preheader.i:                                     ; preds = %bb.j
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.preheader.i
  %.sroa.010.0.i = phi i32 [ %i.av, %bb.q ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.5.0.copyload36.i, %bb.q ], [ %2, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58
  store i32 1, ptr %i.d, align 8, !noalias !58
  store ptr %1, ptr %.sroa.713.0..sroa_idx.i, align 8, !noalias !58
  store i64 %.sroa.7.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !58
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !58
  store i64 %.sroa.7.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !58
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58
  %i.ac = call noundef nonnull align 16 ptr @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata4util4lazy4lazyINtB5_4LazyINtNtNtBb_3dfa5dense3DFARSmEFEB15_E3getCsavRPklju9Q7_4bstr(ptr noundef nonnull align 8 @_RNvNtNtNtCsavRPklju9Q7_4bstr7unicode3fsm22regional_indicator_rev22REGIONAL_INDICATOR_REV) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 752
  %i.ae = load i8, ptr %i.ad, align 16, !range !11, !alias.scope !64, !noalias !67, !noundef !3
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 753
  %i.ah = load i8, ptr %i.ag, align 1, !range !11, !alias.scope !61, !noalias !67
  %i.ai = trunc nuw i8 %i.ah to i1
  %.sroa.0.0.i.i = select i1 %i.af, i1 %i.ai, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFARSmEECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(768) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d), !noalias !71
  %i.aj = load i64, ptr %i.a, align 8, !range !13, !noalias !70, !noundef !3 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 2
  %i.al = load ptr, ptr %i.ab, align 8, !noalias !70 ; 2 uses
  br i1 %i.ak, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread14.i, label %bb.l

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread14.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  %i.am = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.an = trunc nuw i64 %i.aj to i1
  br i1 %i.an, label %bb.m, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread37.i

bb.m:                                             ; preds = %bb.l
  br i1 %.sroa.0.0.i.i, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread.i, !prof !14

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread37.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  br label %.loopexit39.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  br label %bb.p

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.m
  %.sroa.69.16.extract.trunc11.i.i = trunc i64 %.sroa.5.0.copyload.i.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1A_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, i64 noundef %i.am, i32 noundef %.sroa.69.16.extract.trunc11.i.i, i64 noundef %i.am, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(768) %i.ac)
  %.pr.i = load i64, ptr %i.c, align 8, !alias.scope !72, !noalias !75 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ao = icmp eq i64 %.pr.i, 2
  br i1 %i.ao, label %.loopexit.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.i, !prof !23

.loopexit.loopexit.i:                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.i
  %.pre.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !72, !noalias !75
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread14.i
  %i.ap = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.al, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.thread14.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79
  store ptr %i.ap, ptr %i.b, align 8, !noalias !79
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
          to label %bb.n unwind label %bb.o, !noalias !80

bb.n:                                             ; preds = %.loopexit.i
  unreachable

bb.o:                                             ; preds = %.loopexit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.i: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr.exit.i
  %.sroa.5.0.copyload.i4 = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !80, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  %i.ar = trunc nuw i64 %.pr.i to i1
  br i1 %i.ar, label %bb.p, label %.loopexit39.i

bb.p:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread.i
  %.sroa.5.0.copyload36.i = phi i64 [ %i.am, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread.i ], [ %.sroa.5.0.copyload.i4, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.i ] ; 3 uses
  %.not.i = icmp ugt i64 %.sroa.5.0.copyload36.i, %.sroa.7.0.i
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !14

.loopexit39.i:                                    ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread37.i
  %i.as = shl i32 %.sroa.010.0.i, 2
  %i.at = and i32 %i.as, 4
  %i.au = zext nneg i32 %i.at to i64
  %spec.select.i = add i64 %.sroa.4.0.copyload61, %i.au
  br label %_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme33adjust_rev_for_regional_indicator.exit

bb.q:                                             ; preds = %bb.p
  %i.av = add i32 %.sroa.010.0.i, 1
  br label %bb.k

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.5.0.copyload36.i, i64 noundef %.sroa.7.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
  unreachable

_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme33adjust_rev_for_regional_indicator.exit: ; preds = %bb.j, %.loopexit39.i
  %.sroa.09.0.i = phi i64 [ %.sroa.4.0.copyload61, %bb.j ], [ %spec.select.i, %.loopexit39.i ] ; 4 uses
  %i.aw = icmp ugt i64 %.sroa.09.0.i, %2
  br i1 %i.aw, label %bb.ad, label %bb.ac, !prof !14

bb.s:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit.thread62, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.ax = call i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %2, i64 4) ; 3 uses
  %i.ay = add nsw i64 %2, -1
  %umin.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ay) ; 2 uses
  %.sroa.03.0.i109 = add nsw i64 %2, -1           ; 2 uses
  %i.az = icmp ugt i64 %.sroa.03.0.i109, %i.ax
  br i1 %i.az, label %.lr.ph.a, label %._crit_edge

bb.t:                                             ; preds = %.lr.ph.a
  %.sroa.03.0.i = add nsw i64 %.sroa.03.0.i110, -1 ; 2 uses
  %i.ba = icmp ugt i64 %.sroa.03.0.i, %i.ax
  br i1 %i.ba, label %.lr.ph.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %.lr.ph.a, %bb.s
  %.sroa.03.0.lcssa.i = phi i64 [ %umin.i, %bb.s ], [ %umin.i, %bb.t ], [ %.sroa.03.0.i110, %.lr.ph.a ] ; 5 uses
  %i.bb = icmp ugt i64 %.sroa.03.0.lcssa.i, %2
  br i1 %i.bb, label %bb.ab, label %bb.u, !prof !14

.lr.ph.a:                                         ; preds = %bb.s, %bb.t
  %.sroa.03.0.i110 = phi i64 [ %.sroa.03.0.i, %bb.t ], [ %.sroa.03.0.i109, %bb.s ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.0.i110
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !82, !noundef !3
  %i.be = icmp slt i8 %i.bd, -64
  br i1 %i.be, label %bb.t, label %._crit_edge

bb.u:                                             ; preds = %._crit_edge
  %i.bf = sub nuw nsw i64 %2, %.sroa.03.0.lcssa.i ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.0.lcssa.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !88, !noundef !3
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_.exit, label %.preheader.i.i.preheader

.preheader.i.i:                                   ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i
  %i.bj = zext i8 %i.cc to i64
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.bf
  br i1 %exitcond.not.i.i, label %_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.v, %.preheader.i.i
  %.sroa.03.0.i.i115 = phi i64 [ %i.cd, %.preheader.i.i ], [ 0, %bb.v ] ; 3 uses
  %.sroa.017.0.i.i114 = phi i32 [ %storemerge.i.i.i, %.preheader.i.i ], [ 0, %bb.v ]
  %.sroa.015.0.i.i113 = phi i64 [ %i.bj, %.preheader.i.i ], [ 12, %bb.v ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.03.0.i.i115
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !88, !noundef !3 ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @4, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !89, !noundef !3 ; 2 uses
  %i.bp = zext i8 %i.bl to i32                    ; 2 uses
  %i.bq = icmp eq i64 %.sroa.015.0.i.i113, 12
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader.i.i.preheader
  %i.br = and i8 %i.bo, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = lshr i32 255, %i.bs
  %i.bu = and i32 %i.bt, %i.bp
  br label %bb.y

bb.x:                                             ; preds = %.preheader.i.i.preheader
  %i.bv = and i32 %i.bp, 63
  %i.bw = shl i32 %.sroa.017.0.i.i114, 6
  %i.bx = or disjoint i32 %i.bv, %i.bw
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %storemerge.i.i.i = phi i32 [ %i.bx, %bb.x ], [ %i.bu, %bb.w ]
  %i.by = zext i8 %i.bo to i64
  %i.bz = add nuw nsw i64 %.sroa.015.0.i.i113, %i.by ; 3 uses
  %i.ca = icmp samesign ult i64 %i.bz, 108
  br i1 %i.ca, label %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef 108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !89
  unreachable

_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i: ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr @5, i64 %i.bz
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !89, !noundef !3 ; 2 uses
  %i.cd = add nuw i64 %.sroa.03.0.i.i115, 1       ; 3 uses
  switch i8 %i.cc, label %.preheader.i.i [
    i8 12, label %_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_.exit
    i8 0, label %bb.aa
  ]

bb.aa:                                            ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i
  %.sroa.0.0.i.i.i = call noundef range(i64 1, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %.sroa.03.0.i.i115, i64 1)
  br label %_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.03.0.lcssa.i, i64 noundef range(i64 1, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13, !noalias !82
  unreachable

_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_.exit: ; preds = %.preheader.i.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i, %bb.v, %bb.u, %bb.aa
  %.sroa.6.1.i.i = phi i64 [ 0, %bb.u ], [ %.sroa.0.0.i.i.i, %bb.aa ], [ 1, %bb.v ], [ %i.bf, %.preheader.i.i ], [ %i.cd, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i ] ; 2 uses
  %i.ce = add i64 %.sroa.6.1.i.i, %.sroa.03.0.lcssa.i
  %.not.i6 = icmp eq i64 %i.ce, %2
  %spec.select.i7 = select i1 %.not.i6, i64 %.sroa.6.1.i.i, i64 1
  store ptr @10, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i7, ptr %i.cg, align 8
  br label %bb.i

bb.ac:                                            ; preds = %_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme33adjust_rev_for_regional_indicator.exit
  %i.ch = sub nuw nsw i64 %2, %.sroa.09.0.i       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.0.i
  store ptr %i.ci, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ch, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ck, align 8
  br label %bb.i

bb.ad:                                            ; preds = %_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme33adjust_rev_for_regional_indicator.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs19_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_10MatchErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata4util4lazy4lazyINtB5_4LazyINtNtNtBb_3dfa6sparse3DFARShEFEB15_E3getCsavRPklju9Q7_4bstr(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata4util4lazy4lazyINtB5_4LazyINtNtNtBb_3dfa5dense3DFARSmEFEB15_E3getCsavRPklju9Q7_4bstr(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4util6search14MatchErrorKindENtB6_5Debug3fmtCsavRPklju9Q7_4bstr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFARSmEECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(768), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1A_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i32 noundef, i64 noundef, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(768)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1A_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i32 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1A_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i32 noundef, i64 noundef, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr: argument 0"}
!6 = distinct !{!6, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr: argument 1"}
!9 = !{!5, !8, !10}
!10 = distinct !{!10, !6, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_fwdCsavRPklju9Q7_4bstr: argument 2"}
!11 = !{i8 0, i8 2}
!12 = !{!5, !10}
!13 = !{i64 0, i64 3}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!8, !10}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 1"}
!18 = distinct !{!18, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 0"}
!21 = distinct !{!21, !18, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 2"}
!22 = !{!20}
!23 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!24 = !{!20, !17, !21}
!25 = !{!20, !17}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10MatchErrorECsavRPklju9Q7_4bstr: argument 0"}
!28 = distinct !{!28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10MatchErrorECsavRPklju9Q7_4bstr"}
!29 = !{!27, !20, !17}
!30 = !{!21}
!31 = !{!"branch_weights", i32 4001, i32 4000000}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_: argument 0"}
!34 = distinct !{!34, !"_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_"}
!35 = !{!36, !38, !33}
!36 = distinct !{!36, !37, !"_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step: argument 0"}
!37 = distinct !{!37, !"_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step"}
!38 = distinct !{!38, !37, !"_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step: argument 1"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr: argument 0"}
!41 = distinct !{!41, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr: argument 1"}
!44 = !{!40, !45}
!45 = distinct !{!45, !41, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr: argument 2"}
!46 = !{!40, !43, !45}
!47 = !{!43, !45}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 1"}
!50 = distinct !{!50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr"}
!51 = !{!52, !53}
!52 = distinct !{!52, !50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 0"}
!53 = distinct !{!53, !50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 2"}
!54 = !{!52}
!55 = !{!52, !49, !53}
!56 = !{!52, !49}
!57 = !{!53}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme33adjust_rev_for_regional_indicator: argument 0"}
!60 = distinct !{!60, !"_RNvNtNtCsavRPklju9Q7_4bstr7unicode8grapheme33adjust_rev_for_regional_indicator"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr: argument 1"}
!63 = distinct !{!63, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr"}
!64 = !{!65, !62}
!65 = distinct !{!65, !66, !"_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmENtNtB7_9automaton9Automaton9has_emptyCsavRPklju9Q7_4bstr: argument 0"}
!66 = distinct !{!66, !"_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmENtNtB7_9automaton9Automaton9has_emptyCsavRPklju9Q7_4bstr"}
!67 = !{!68, !69}
!68 = distinct !{!68, !63, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr: argument 0"}
!69 = distinct !{!69, !63, !"_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton14try_search_revCsavRPklju9Q7_4bstr: argument 2"}
!70 = !{!68, !62, !69, !59}
!71 = !{!68}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 1"}
!74 = distinct !{!74, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr"}
!75 = !{!76, !77, !59}
!76 = distinct !{!76, !74, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 0"}
!77 = distinct !{!77, !74, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapCsavRPklju9Q7_4bstr: argument 2"}
!78 = !{!76}
!79 = !{!76, !73, !77, !59}
!80 = !{!76, !73}
!81 = !{!77, !59}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_: argument 0"}
!84 = distinct !{!84, !"_RINvNtCsavRPklju9Q7_4bstr4utf811decode_lastRShEB4_"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_: argument 0"}
!87 = distinct !{!87, !"_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShEB4_"}
!88 = !{!86, !83}
!89 = !{!90, !92, !86, !83}
!90 = distinct !{!90, !91, !"_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step: argument 0"}
!91 = distinct !{!91, !"_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step"}
!92 = distinct !{!92, !91, !"_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step: argument 1"}
end_hunk_0
