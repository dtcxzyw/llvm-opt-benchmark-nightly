Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/bstr-a490daa9957f02e1.bstr.7a768d85a95191e5-cgu.02?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/util/search.rs\00", align 1
@1 = private unnamed_addr constant [42 x i8] c"\0Dinvalid span \C0\18 for haystack of length \C0\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"m\00\00\00\00\00\00\00\AA\01\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/util/empty.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"l\00\00\00\00\00\00\00\F9\00\00\00:\00\00\00" }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1A_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.f = load i32, ptr %1, align 8, !range !8, !alias.scope !6, !noalias !9, !noundef !11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !6, !noalias !9, !noundef !11 ; 2 uses
  %i.j = icmp ult i64 %4, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !12, !noundef !11 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !12, !nonnull !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = load i64, ptr %i.p, align 8, !noalias !12
  %.fr.i = freeze i64 %i.q                        ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i.i = icmp ugt i64 %.fr.i, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted.i = load i64, ptr %i.o, align 8, !noalias !12 ; 4 uses
  br i1 %.not.i.i, label %.split.us.i, label %.split.preheader.i, !prof !13

.split.preheader.i:                               ; preds = %bb.c
  %i.t = add i64 %.fr.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i, i64 %i.t)
  br label %.split.i

.split.us.i:                                      ; preds = %bb.c
  %i.u = icmp ult i64 %4, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us.i
  %i.v = icmp eq i64 %4, %i.l
  br i1 %i.v, label %.split76.us.i, label %bb.f

bb.e:                                             ; preds = %.split.us.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %4
  %i.x = load i8, ptr %i.w, align 1, !noalias !12, !noundef !11
  %or.cond60.us.i = icmp sgt i8 %i.x, -65
  br i1 %or.cond60.us.i, label %.split76.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = icmp eq i64 %.promoted.i, -1
  br i1 %i.y, label %.split79.us.i, label %.split81.us.i, !prof !14

.split81.us.i:                                    ; preds = %bb.f
  %i.z = add nuw i64 %.promoted.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18
  store i64 %i.z, ptr %i.d, align 8, !noalias !18
  store i64 %.fr.i, ptr %i.r, align 8, !noalias !18
  br label %.split81.i

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !6, !noalias !9, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %4
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !12, !noundef !11
  %or.cond.i = icmp sgt i8 %i.ad, -65
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ae = icmp eq i64 %4, %i.i
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !3, !noalias !19
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !19
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !19
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  store i64 1, ptr %0, align 8, !alias.scope !3, !noalias !19
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !3, !noalias !19
  %.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx10.i, align 8, !alias.scope !3, !noalias !19
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

.split.i:                                         ; preds = %bb.p, %.split.preheader.i
  %i.af = phi i64 [ %i.al, %bb.p ], [ %.promoted.i, %.split.preheader.i ] ; 3 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.4.16.extract.trunc.i.i, %bb.p ], [ %3, %.split.preheader.i ] ; 2 uses
  %.sroa.015.0.i = phi i64 [ %i.ar, %bb.p ], [ %2, %.split.preheader.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.ar, %bb.p ], [ %4, %.split.preheader.i ] ; 3 uses
  %i.ag = icmp ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !20, !noundef !11
  %or.cond60.i = icmp sgt i8 %i.ai, -65
  br i1 %or.cond60.i, label %.split76.us.i, label %bb.m

bb.l:                                             ; preds = %.split.i
  %i.aj = icmp eq i64 %.sroa.0.0.i, %i.l
  br i1 %i.aj, label %.split76.us.i, label %bb.m

.split76.us.i:                                    ; preds = %bb.l, %bb.k, %bb.e, %bb.d
  %.us-phi.i = phi i32 [ %3, %bb.d ], [ %3, %bb.e ], [ %.sroa.6.0.i, %bb.k ], [ %.sroa.6.0.i, %bb.l ]
  %.us-phi77.i = phi i64 [ %2, %bb.d ], [ %2, %bb.e ], [ %.sroa.015.0.i, %bb.k ], [ %.sroa.015.0.i, %bb.l ]
  store i64 1, ptr %0, align 8, !alias.scope !3, !noalias !19
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi77.i, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !19
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.us-phi.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = icmp eq i64 %i.af, -1
  br i1 %i.ak, label %.split79.us.i, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.al = add nuw i64 %i.af, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18
  store i64 %i.al, ptr %i.d, align 8, !noalias !18
  store i64 %.fr.i, ptr %i.r, align 8, !noalias !18
  %exitcond.not.i = icmp eq i64 %i.af, %umax.i
  br i1 %exitcond.not.i, label %.split81.i, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i, !prof !13

.split81.i:                                       ; preds = %bb.n, %.split81.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18
  store i64 %i.l, ptr %i.c, align 8, !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18
  store ptr %i.d, ptr %i.b, align 8, !noalias !18
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.am, align 8, !noalias !18
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !18
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #8, !noalias !21
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.n
  store i64 %i.al, ptr %i.o, align 8, !alias.scope !15, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFARSmEECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e), !noalias !26
  %i.an = load i64, ptr %i.a, align 8, !range !27, !noalias !22, !noundef !11 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = load ptr, ptr %i.s, align 8, !noalias !22 ; 2 uses
  br i1 %i.ao, label %bb.o, label %bb.p

.split79.us.i:                                    ; preds = %bb.m, %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #8, !noalias !20
  unreachable

bb.o:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !3, !noalias !19
  br label %.loopexit.i

bb.p:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  %.sroa.4.16.extract.trunc.i.i = trunc i64 %.sroa.511.0.copyload.i.i to i32
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = trunc nuw i64 %i.an to i1
  br i1 %i.as, label %.split.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.p, %bb.o
  %storemerge.i = phi i64 [ 2, %bb.o ], [ 0, %bb.p ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3, !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit: ; preds = %bb.i, %bb.j, %.split76.us.i, %.loopexit.i
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1A_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.f = load i32, ptr %1, align 8, !range !8, !alias.scope !31, !noalias !33, !noundef !11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !31, !noalias !33, !noundef !11 ; 2 uses
  %i.j = icmp ult i64 %4, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !35, !noundef !11 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !35, !nonnull !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = load i64, ptr %i.p, align 8, !noalias !35
  %.fr.i = freeze i64 %i.q                        ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i.i = icmp ugt i64 %.fr.i, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted.i = load i64, ptr %i.o, align 8, !noalias !35 ; 4 uses
  br i1 %.not.i.i, label %.split.us.i, label %.split.preheader.i, !prof !13

.split.preheader.i:                               ; preds = %bb.c
  %i.t = add i64 %.fr.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i, i64 %i.t)
  br label %.split.i

.split.us.i:                                      ; preds = %bb.c
  %i.u = icmp ult i64 %4, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us.i
  %i.v = icmp eq i64 %4, %i.l
  br i1 %i.v, label %.split76.us.i, label %bb.f

bb.e:                                             ; preds = %.split.us.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %4
  %i.x = load i8, ptr %i.w, align 1, !noalias !35, !noundef !11
  %or.cond60.us.i = icmp sgt i8 %i.x, -65
  br i1 %or.cond60.us.i, label %.split76.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = icmp eq i64 %.promoted.i, -1
  br i1 %i.y, label %.split79.us.i, label %.split81.us.i, !prof !14

.split81.us.i:                                    ; preds = %bb.f
  %i.z = add nuw i64 %.promoted.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39
  store i64 %i.z, ptr %i.d, align 8, !noalias !39
  store i64 %.fr.i, ptr %i.r, align 8, !noalias !39
  br label %.split81.i

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !31, !noalias !33, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %4
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !35, !noundef !11
  %or.cond.i = icmp sgt i8 %i.ad, -65
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ae = icmp eq i64 %4, %i.i
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !28, !noalias !40
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !28, !noalias !40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !28, !noalias !40
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  store i64 1, ptr %0, align 8, !alias.scope !28, !noalias !40
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !28, !noalias !40
  %.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx10.i, align 8, !alias.scope !28, !noalias !40
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

.split.i:                                         ; preds = %bb.p, %.split.preheader.i
  %i.af = phi i64 [ %i.al, %bb.p ], [ %.promoted.i, %.split.preheader.i ] ; 3 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.4.16.extract.trunc.i.i, %bb.p ], [ %3, %.split.preheader.i ] ; 2 uses
  %.sroa.015.0.i = phi i64 [ %i.ar, %bb.p ], [ %2, %.split.preheader.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.ar, %bb.p ], [ %4, %.split.preheader.i ] ; 3 uses
  %i.ag = icmp ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !41, !noundef !11
  %or.cond60.i = icmp sgt i8 %i.ai, -65
  br i1 %or.cond60.i, label %.split76.us.i, label %bb.m

bb.l:                                             ; preds = %.split.i
  %i.aj = icmp eq i64 %.sroa.0.0.i, %i.l
  br i1 %i.aj, label %.split76.us.i, label %bb.m

.split76.us.i:                                    ; preds = %bb.l, %bb.k, %bb.e, %bb.d
  %.us-phi.i = phi i32 [ %3, %bb.d ], [ %3, %bb.e ], [ %.sroa.6.0.i, %bb.k ], [ %.sroa.6.0.i, %bb.l ]
  %.us-phi77.i = phi i64 [ %2, %bb.d ], [ %2, %bb.e ], [ %.sroa.015.0.i, %bb.k ], [ %.sroa.015.0.i, %bb.l ]
  store i64 1, ptr %0, align 8, !alias.scope !28, !noalias !40
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi77.i, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !28, !noalias !40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.us-phi.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = icmp eq i64 %i.af, -1
  br i1 %i.ak, label %.split79.us.i, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.al = add nuw i64 %i.af, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39
  store i64 %i.al, ptr %i.d, align 8, !noalias !39
  store i64 %.fr.i, ptr %i.r, align 8, !noalias !39
  %exitcond.not.i = icmp eq i64 %i.af, %umax.i
  br i1 %exitcond.not.i, label %.split81.i, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i, !prof !13

.split81.i:                                       ; preds = %bb.n, %.split81.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39
  store i64 %i.l, ptr %i.c, align 8, !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39
  store ptr %i.d, ptr %i.b, align 8, !noalias !39
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.am, align 8, !noalias !39
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !39
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #8, !noalias !42
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.n
  store i64 %i.al, ptr %i.o, align 8, !alias.scope !36, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e), !noalias !47
  %i.an = load i64, ptr %i.a, align 8, !range !27, !noalias !43, !noundef !11 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = load ptr, ptr %i.s, align 8, !noalias !43 ; 2 uses
  br i1 %i.ao, label %bb.o, label %bb.p

.split79.us.i:                                    ; preds = %bb.m, %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #8, !noalias !41
  unreachable

bb.o:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !28, !noalias !40
  br label %.loopexit.i

bb.p:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  %.sroa.4.16.extract.trunc.i.i = trunc i64 %.sroa.511.0.copyload.i.i to i32
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = trunc nuw i64 %i.an to i1
  br i1 %i.as, label %.split.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.p, %bb.o
  %storemerge.i = phi i64 [ 2, %bb.o ], [ 0, %bb.p ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !28, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit

_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr.exit: ; preds = %bb.i, %bb.j, %.split76.us.i, %.loopexit.i
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1A_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(768) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.f = load i32, ptr %1, align 8, !range !8, !alias.scope !51, !noalias !53, !noundef !11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !51, !noalias !53, !noundef !11 ; 2 uses
  %i.j = icmp ult i64 %4, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !55, !noundef !11 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !55, !nonnull !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noalias !55 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted.i = load i64, ptr %i.o, align 8, !noalias !55
  %.promoted.i.fr = freeze i64 %.promoted.i       ; 3 uses
  %i.t = add i64 %.promoted.i.fr, -1              ; 2 uses
  %.not.i.first_iter.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i.first_iter.i, label %.split.us, label %.split, !prof !13

.split.us:                                        ; preds = %bb.c
  %i.u = icmp ult i64 %4, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.v = icmp eq i64 %4, %i.l
  br i1 %i.v, label %.split8.us, label %bb.f

bb.e:                                             ; preds = %.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %4
  %i.x = load i8, ptr %i.w, align 1, !noalias !56, !noundef !11
  %or.cond61.i.us = icmp sgt i8 %i.x, -65
  br i1 %or.cond61.i.us, label %.split8.us, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = icmp eq i64 %.promoted.i.fr, 0
  br i1 %i.y, label %.loopexit.i, label %.split11.us

.split11.us:                                      ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !60
  store i64 %i.q, ptr %i.d, align 8, !noalias !60
  store i64 %i.t, ptr %i.r, align 8, !noalias !60
  br label %.split11

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !51, !noalias !53, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %4
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !55, !noundef !11
  %or.cond.i = icmp sgt i8 %i.ac, -65
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ad = icmp eq i64 %4, %i.i
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !48, !noalias !61
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !61
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !61
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  store i64 1, ptr %0, align 8, !alias.scope !48, !noalias !61
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !48, !noalias !61
  %.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx10.i, align 8, !alias.scope !48, !noalias !61
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

.split:                                           ; preds = %bb.c, %bb.p
  %i.ae = phi i64 [ %i.ak, %bb.p ], [ %.promoted.i.fr, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.4.16.extract.trunc.i.i, %bb.p ], [ %3, %bb.c ] ; 2 uses
  %.sroa.015.0.i = phi i64 [ %i.aq, %bb.p ], [ %2, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.aq, %bb.p ], [ %4, %bb.c ] ; 3 uses
  %i.af = icmp ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !56, !noundef !11
  %or.cond61.i = icmp sgt i8 %i.ah, -65
  br i1 %or.cond61.i, label %.split8.us, label %bb.m

bb.l:                                             ; preds = %.split
  %i.ai = icmp eq i64 %.sroa.0.0.i, %i.l
  br i1 %i.ai, label %.split8.us, label %bb.m

.split8.us:                                       ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.us-phi = phi i32 [ %3, %bb.e ], [ %3, %bb.d ], [ %.sroa.6.0.i, %bb.l ], [ %.sroa.6.0.i, %bb.k ]
  %.us-phi9 = phi i64 [ %2, %bb.e ], [ %2, %bb.d ], [ %.sroa.015.0.i, %bb.l ], [ %.sroa.015.0.i, %bb.k ]
  store i64 1, ptr %0, align 8, !alias.scope !48, !noalias !61
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi9, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !61
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.us-phi, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !55
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = icmp eq i64 %i.ae, 0
  br i1 %i.aj, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = add i64 %i.ae, -1                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !60
  store i64 %i.q, ptr %i.d, align 8, !noalias !60
  store i64 %i.ak, ptr %i.r, align 8, !noalias !60
  %.not8.i.i = icmp ugt i64 %i.q, %i.ae
  br i1 %.not8.i.i, label %.split11, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i, !prof !13

.split11:                                         ; preds = %bb.n, %.split11.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60
  store i64 %i.l, ptr %i.c, align 8, !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  store ptr %i.d, ptr %i.b, align 8, !noalias !60
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.al, align 8, !noalias !60
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !60
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #8, !noalias !62
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.n
  store i64 %i.ak, ptr %i.o, align 8, !alias.scope !57, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFARSmEECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(768) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e), !noalias !67
  %i.am = load i64, ptr %i.a, align 8, !range !27, !noalias !63, !noundef !11 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = load ptr, ptr %i.s, align 8, !noalias !63 ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

.loopexit.i:                                      ; preds = %bb.m, %bb.p, %bb.f, %bb.o
  %storemerge53.i = phi i64 [ 2, %bb.o ], [ 0, %bb.f ], [ 0, %bb.p ], [ 0, %bb.m ]
  store i64 %storemerge53.i, ptr %0, align 8, !alias.scope !48, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !55
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

bb.o:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !48, !noalias !61
  br label %.loopexit.i

bb.p:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  %.sroa.4.16.extract.trunc.i.i = trunc i64 %.sroa.511.0.copyload.i.i to i32
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = trunc nuw i64 %i.am to i1
  br i1 %i.ar, label %.split, label %.loopexit.i

_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit: ; preds = %bb.i, %bb.j, %.split8.us, %.loopexit.i
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1A_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.f = load i32, ptr %1, align 8, !range !8, !alias.scope !71, !noalias !73, !noundef !11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !71, !noalias !73, !noundef !11 ; 2 uses
  %i.j = icmp ult i64 %4, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !75, !noundef !11 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !75, !nonnull !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noalias !75 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted.i = load i64, ptr %i.o, align 8, !noalias !75
  %.promoted.i.fr = freeze i64 %.promoted.i       ; 3 uses
  %i.t = add i64 %.promoted.i.fr, -1              ; 2 uses
  %.not.i.first_iter.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i.first_iter.i, label %.split.us, label %.split, !prof !13

.split.us:                                        ; preds = %bb.c
  %i.u = icmp ult i64 %4, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.v = icmp eq i64 %4, %i.l
  br i1 %i.v, label %.split8.us, label %bb.f

bb.e:                                             ; preds = %.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %4
  %i.x = load i8, ptr %i.w, align 1, !noalias !76, !noundef !11
  %or.cond61.i.us = icmp sgt i8 %i.x, -65
  br i1 %or.cond61.i.us, label %.split8.us, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = icmp eq i64 %.promoted.i.fr, 0
  br i1 %i.y, label %.loopexit.i, label %.split11.us

.split11.us:                                      ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80
  store i64 %i.q, ptr %i.d, align 8, !noalias !80
  store i64 %i.t, ptr %i.r, align 8, !noalias !80
  br label %.split11

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !71, !noalias !73, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %4
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !75, !noundef !11
  %or.cond.i = icmp sgt i8 %i.ac, -65
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ad = icmp eq i64 %4, %i.i
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !68, !noalias !81
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !68, !noalias !81
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !68, !noalias !81
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  store i64 1, ptr %0, align 8, !alias.scope !68, !noalias !81
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !68, !noalias !81
  %.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx10.i, align 8, !alias.scope !68, !noalias !81
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

.split:                                           ; preds = %bb.c, %bb.p
  %i.ae = phi i64 [ %i.ak, %bb.p ], [ %.promoted.i.fr, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.4.16.extract.trunc.i.i, %bb.p ], [ %3, %bb.c ] ; 2 uses
  %.sroa.015.0.i = phi i64 [ %i.aq, %bb.p ], [ %2, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.aq, %bb.p ], [ %4, %bb.c ] ; 3 uses
  %i.af = icmp ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !76, !noundef !11
  %or.cond61.i = icmp sgt i8 %i.ah, -65
  br i1 %or.cond61.i, label %.split8.us, label %bb.m

bb.l:                                             ; preds = %.split
  %i.ai = icmp eq i64 %.sroa.0.0.i, %i.l
  br i1 %i.ai, label %.split8.us, label %bb.m

.split8.us:                                       ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.us-phi = phi i32 [ %3, %bb.e ], [ %3, %bb.d ], [ %.sroa.6.0.i, %bb.l ], [ %.sroa.6.0.i, %bb.k ]
  %.us-phi9 = phi i64 [ %2, %bb.e ], [ %2, %bb.d ], [ %.sroa.015.0.i, %bb.l ], [ %.sroa.015.0.i, %bb.k ]
  store i64 1, ptr %0, align 8, !alias.scope !68, !noalias !81
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi9, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !68, !noalias !81
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.us-phi, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !68, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = icmp eq i64 %i.ae, 0
  br i1 %i.aj, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = add i64 %i.ae, -1                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80
  store i64 %i.q, ptr %i.d, align 8, !noalias !80
  store i64 %i.ak, ptr %i.r, align 8, !noalias !80
  %.not8.i.i = icmp ugt i64 %i.q, %i.ae
  br i1 %.not8.i.i, label %.split11, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i, !prof !13

.split11:                                         ; preds = %bb.n, %.split11.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80
  store i64 %i.l, ptr %i.c, align 8, !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80
  store ptr %i.d, ptr %i.b, align 8, !noalias !80
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.al, align 8, !noalias !80
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !80
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #8, !noalias !82
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.n
  store i64 %i.ak, ptr %i.o, align 8, !alias.scope !77, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e), !noalias !87
  %i.am = load i64, ptr %i.a, align 8, !range !27, !noalias !83, !noundef !11 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = load ptr, ptr %i.s, align 8, !noalias !83 ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

.loopexit.i:                                      ; preds = %bb.m, %bb.p, %bb.f, %bb.o
  %storemerge53.i = phi i64 [ 2, %bb.o ], [ 0, %bb.f ], [ 0, %bb.p ], [ 0, %bb.m ]
  store i64 %storemerge53.i, ptr %0, align 8, !alias.scope !68, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit

bb.o:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !68, !noalias !81
  br label %.loopexit.i

bb.p:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr.exit.i
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  %.sroa.4.16.extract.trunc.i.i = trunc i64 %.sroa.511.0.copyload.i.i to i32
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = trunc nuw i64 %i.am to i1
  br i1 %i.ar, label %.split, label %.loopexit.i

_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_rev0ECsavRPklju9Q7_4bstr.exit: ; preds = %bb.i, %bb.j, %.split8.us, %.loopexit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFARSmEECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFARSmEECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(768), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr: argument 0"}
!5 = distinct !{!5, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr: argument 1"}
!8 = !{i32 0, i32 3}
!9 = !{!4, !10}
!10 = distinct !{!10, !5, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFARSmENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr: argument 2"}
!11 = !{}
!12 = !{!4, !7, !10}
!13 = !{!"branch_weights", i32 4001, i32 4000000}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr: argument 0"}
!17 = distinct !{!17, !"_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr"}
!18 = !{!16, !4, !7, !10}
!19 = !{!7, !10}
!20 = !{!4, !7}
!21 = !{!16, !4, !7}
!22 = !{!23, !25, !4, !7, !10}
!23 = distinct !{!23, !24, !"_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB9_9automaton9Automaton14try_search_fwd0CsavRPklju9Q7_4bstr: argument 0"}
!24 = distinct !{!24, !"_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB9_9automaton9Automaton14try_search_fwd0CsavRPklju9Q7_4bstr"}
!25 = distinct !{!25, !24, !"_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB9_9automaton9Automaton14try_search_fwd0CsavRPklju9Q7_4bstr: argument 1"}
!26 = !{!23, !4, !7}
!27 = !{i64 0, i64 3}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr: argument 0"}
!30 = distinct !{!30, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr: argument 1"}
!33 = !{!29, !34}
!34 = distinct !{!34, !30, !"_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty11skip_splitsNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa6sparse3DFARShENtNtB1w_9automaton9Automaton14try_search_fwd0ECsavRPklju9Q7_4bstr: argument 2"}
!35 = !{!29, !32, !34}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr: argument 0"}
!38 = distinct !{!38, !"_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsavRPklju9Q7_4bstr"}
!39 = !{!37, !29, !32, !34}
!40 = !{!32, !34}
!41 = !{!29, !32}
!42 = !{!37, !29, !32}
!43 = !{!44, !46, !29, !32, !34}
!44 = distinct !{!44, !45, !"_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB9_9automaton9Automaton14try_search_fwd0CsavRPklju9Q7_4bstr: argument 0"}
end_hunk_0
