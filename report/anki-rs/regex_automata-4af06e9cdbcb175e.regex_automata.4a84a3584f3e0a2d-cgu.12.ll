Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.12?download=true
inline.NumInlined: 610
inline.NumDeleted: 309
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [120 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/nfa/thompson/compiler.rs\00", align 1
@1 = private unnamed_addr constant [60 x i8] c"assertion failed: self.state.uncompiled[last].last.is_none()", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00#\07\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [15 x i8] c"non-empty nodes", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\22\07\00\00\0E\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00F\07\00\00\0E\00\00\00" }>, align 8
@6 = private unnamed_addr constant [43 x i8] c"assertion failed: prefix_len < ranges.len()", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\FE\06\00\00\09\00\00\00" }>, align 8
@8 = private unnamed_addr constant [8 x i8] c"\01\00\00\00\00\00\00\00", align 8
@9 = private unnamed_addr constant [57 x i8] c"assertion failed: self.state.uncompiled[0].last.is_none()", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00<\07\00\00\09\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00;\07\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00m\06\00\00\16\00\00\00" }>, align 8
@13 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00,\04\00\00\16\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\000\04\00\00(\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00S\06\00\00\16\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00Z\06\00\00\16\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\90\06\00\00\16\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\9D\05\00\00,\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\9E\05\00\002\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\85\05\00\000\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\8E\05\00\000\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\8F\05\00\006\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00l\05\00\00?\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00m\05\00\00;\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\85\06\00\00\16\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00|\06\00\00\16\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\ED\05\00\00*\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00O\06\00\00\16\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\B5\03\00\00\16\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\B6\03\00\00\16\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\DD\03\00\00\0E\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\94\06\00\00\16\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00t\06\00\00\16\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00^\06\00\00\16\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00\98\06\00\00\16\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00b\06\00\00\16\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00x\06\00\00\16\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h800be8c82c92677eE" }>, align 8
@40 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h130a3580d72e0dc3E" }>, align 8
@42 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@43 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@44 = private unnamed_addr constant [3 x i8] c"All", align 1
@45 = private unnamed_addr constant [8 x i8] c"Implicit", align 1
@46 = private unnamed_addr constant [4 x i8] c"None", align 1
@switch.table._ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E = private unnamed_addr constant [18 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072], align 4
@switch.table._ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E.116 = private unnamed_addr constant [18 x i32] [i32 2, i32 1, i32 8, i32 4, i32 32, i32 16, i32 64, i32 128, i32 256, i32 512, i32 2048, i32 1024, i32 8192, i32 4096, i32 32768, i32 16384, i32 131072, i32 65536], align 4
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h536dca1dc81ee12bE" = private unnamed_addr constant [3 x i8] c"\03\08\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h536dca1dc81ee12bE.117" = private unnamed_addr constant [3 x ptr] [ptr @44, ptr @45, ptr @46], align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0d30e49e1b29aec2E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7387c7f80813af72E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3
  %i.h = sub i64 %i.c, %i.g
  %diff.check = icmp ugt i64 %i.h, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x ptr>, ptr %i.k, align 8, !noalias !36
  %wide.load4 = load <2 x ptr>, ptr %i.l, align 8, !noalias !36
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x ptr> %wide.load, ptr %i.m, align 8, !noalias !37
  store <2 x ptr> %wide.load4, ptr %i.n, align 8, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7387c7f80813af72E.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load ptr, ptr %i.q, align 8, !noalias !36, !nonnull !6, !align !7, !noundef !6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  store ptr %.val16.i.prol, ptr %i.r, align 8, !noalias !37
  %i.s = add i64 %i.p, 1                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !34

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7387c7f80813af72E.exit", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.x, align 8, !noalias !36, !nonnull !6, !align !7, !noundef !6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  store ptr %.val16.i, ptr %i.y, align 8, !noalias !37
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val16.i.1 = load ptr, ptr %i.aa, align 8, !noalias !36, !nonnull !6, !align !7, !noundef !6
  %i.ab = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %.val16.i.1, ptr %i.ac, align 8, !noalias !37
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val16.i.2 = load ptr, ptr %i.ae, align 8, !noalias !36, !nonnull !6, !align !7, !noundef !6
  %i.af = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  store ptr %.val16.i.2, ptr %i.ag, align 8, !noalias !37
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.val16.i.3 = load ptr, ptr %i.ai, align 8, !noalias !36, !nonnull !6, !align !7, !noundef !6
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  store ptr %.val16.i.3, ptr %i.ak, align 8, !noalias !37
  %i.al = add i64 %i.w, 4                         ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7387c7f80813af72E.exit", label %scalar.ph, !llvm.loop !35

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7387c7f80813af72E.exit": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !36
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0db0c3565d006847E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb510d83b6351405dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %i.m, %bb.d ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.n, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i32, ptr %i.j, align 4, !noalias !54, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !56
  %i.k = zext i32 %.val16.i to i64
  store i64 %i.k, ptr %i.c, align 8, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56
  store ptr %i.c, ptr %i.b, align 8, !noalias !56
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57
  store ptr @43, ptr %i.a, align 8, !noalias !58
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !58
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !58
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !58
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !58
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.e, !noalias !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !56
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !59
  %i.m = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !55
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.i
  br i1 %i.o, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb510d83b6351405dE.exit", label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !54
  resume { ptr, i32 } %i.p

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb510d83b6351405dE.exit": ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h105404675f68e106E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZN4core4iter6traits8iterator8Iterator4fold17ha02f813f8001db84E.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.h = shl i64 %.sroa.4.0.copyload, 2
  %i.i = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.h
  %i.j = add i64 %.sroa.4.0.copyload, %i.d
  %i.k = sub i64 %i.j, %i.b
  %i.l = shl i64 %i.k, 2
  %i.m = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.i, %i.n
  %bound1 = icmp ult ptr %i.e, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 4 uses
  %i.o = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.p = add i64 %i.b, %n.vec
  %i.q = load i64, ptr %i.e, align 8, !alias.scope !73, !noalias !74
  %i.r = and i64 %i.q, 63
  %broadcast.splatinsert4 = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat5 = shufflevector <2 x i64> %broadcast.splatinsert4, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.s = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.t = shl <2 x i64> %vec.ind, %broadcast.splat5
  %i.u = shl <2 x i64> %step.add, %broadcast.splat5
  %i.v = trunc <2 x i64> %i.t to <2 x i32>
  %i.w = trunc <2 x i64> %i.u to <2 x i32>
  %i.x = getelementptr [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <2 x i32> %i.v, ptr %i.x, align 4, !alias.scope !75, !noalias !76
  store <2 x i32> %i.w, ptr %i.y, align 4, !alias.scope !75, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN4core4iter6traits8iterator8Iterator4fold17ha02f813f8001db84E.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 5 uses
  %i.aa = sub i64 %i.d, %.sroa.0.011.i.ph
  %.neg = add i64 %.sroa.0.011.i.ph, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader7
  %i.ab = add nuw i64 %.sroa.0.011.i.ph, 1
  %i.ac = load i64, ptr %i.e, align 8, !noalias !74, !noundef !6
  %i.ad = and i64 %i.ac, 63
  %i.ae = shl i64 %.sroa.0.011.i.ph, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.ph
  store i32 %i.af, ptr %i.ag, align 4, !noalias !77
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader7
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader7 ], [ %i.ah, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader7 ], [ %i.ah, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader7 ], [ %i.ab, %.lr.ph.i.prol ]
  %i.ai = icmp eq i64 %i.d, %.neg
  br i1 %i.ai, label %_ZN4core4iter6traits8iterator8Iterator4fold17ha02f813f8001db84E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.aj = phi i64 [ %i.ax, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ak = add nuw i64 %.sroa.0.011.i, 1
  %i.al = load i64, ptr %i.e, align 8, !noalias !74, !noundef !6
  %i.am = and i64 %i.al, 63
  %i.an = shl i64 %.sroa.0.011.i, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.aj
  store i32 %i.ao, ptr %i.ap, align 4, !noalias !77
  %i.aq = add nuw i64 %.sroa.0.011.i, 2           ; 2 uses
  %i.ar = load i64, ptr %i.e, align 8, !noalias !74, !noundef !6
  %i.as = and i64 %i.ar, 63
  %i.at = shl i64 %i.ak, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store i32 %i.au, ptr %i.aw, align 4, !noalias !77
  %i.ax = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aq, %i.d
  br i1 %exitcond.not.i.1, label %_ZN4core4iter6traits8iterator8Iterator4fold17ha02f813f8001db84E.exit, label %.lr.ph.i, !llvm.loop !72

_ZN4core4iter6traits8iterator8Iterator4fold17ha02f813f8001db84E.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ax, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !78
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1507b3b81318b33cE"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1a24e378f8bb7594E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.m, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  store ptr %i.j, ptr %i.c, align 8, !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  store ptr %i.c, ptr %i.b, align 8, !noalias !98
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d44f299d145b8b1E", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  store ptr @43, ptr %i.a, align 8, !noalias !100
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !100
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !100
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !100
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !100
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.e, !noalias !101

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !102
  %i.l = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.i
  br i1 %i.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1a24e378f8bb7594E.exit", label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !101
  resume { ptr, i32 } %i.o

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1a24e378f8bb7594E.exit": ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !101
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2fbf1d29eea840cbE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %i.g, align 8
  call void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8a72ad9bf4befe80E"(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3b4847dda5eb8461E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0e5f6db52ab1bbd0E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h645a1ac346b3af09E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d6eb3c42390b382E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 48                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 192
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 576460752303423484       ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %0, <2 x i64> %vec.ind
  %wide.gep2 = getelementptr inbounds nuw [48 x i8], ptr %0, <2 x i64> %step.add
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x ptr> %wide.gep, ptr %i.h, align 8, !noalias !116
  store <2 x ptr> %wide.gep2, ptr %i.i, align 8, !noalias !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d6eb3c42390b382E.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.n, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k
  store ptr %i.l, ptr %i.m, align 8, !noalias !116
  %i.n = add i64 %i.k, 1                          ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d6eb3c42390b382E.exit", label %scalar.ph, !llvm.loop !115

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d6eb3c42390b382E.exit": ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.n, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !117
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h6b424b2ee5674866E"(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 64
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val13.i = load i64, ptr %i.h, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i, i64 %.val13.i)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val13.i.1 = load i64, ptr %i.j, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 %.val13.i.1)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %.val13.i.2 = load i64, ptr %i.l, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.2 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.1, i64 %.val13.i.2)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 56
  %.val13.i.3 = load i64, ptr %i.n, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.3 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.2, i64 %.val13.i.3) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit.loopexit.unr-lcssa": ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit.loopexit.unr-lcssa", %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit.loopexit.unr-lcssa" ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val13.i.epil = load i64, ptr %i.q, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i.epil, i64 %.val13.i.epil) ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit", label %bb.d, !llvm.loop !118

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit.loopexit.unr-lcssa", %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hadc86299082c6824E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h6fffe1fc380cdb26E"(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 5                   ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 128
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423484
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val13.i = load i64, ptr %i.h, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i, i64 %.val13.i)
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %.val13.i.1 = load i64, ptr %i.j, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 %.val13.i.1)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 80
  %.val13.i.2 = load i64, ptr %i.l, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.2 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.1, i64 %.val13.i.2)
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 112
  %.val13.i.3 = load i64, ptr %i.n, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.3 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.2, i64 %.val13.i.3) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit.loopexit.unr-lcssa": ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit.loopexit.unr-lcssa", %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit.loopexit.unr-lcssa" ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %.val13.i.epil = load i64, ptr %i.q, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i.epil, i64 %.val13.i.epil) ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit", label %bb.d, !llvm.loop !119

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit.loopexit.unr-lcssa", %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h446cedeff4d8caacE.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h90d810540d8b1f75E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9f8812fe25dc9fa0E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.j, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  invoke void @_ZN14regex_automata4meta13reverse_inner7flatten17hd61ca37704e9187bE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !130

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !131
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9f8812fe25dc9fa0E.exit", label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !130
  resume { ptr, i32 } %i.l

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9f8812fe25dc9fa0E.exit": ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !130
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb7d89c7e0b20414fE"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc8158041a2355896E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.m, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !150
  store ptr %i.j, ptr %i.c, align 8, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !151
  store ptr %i.c, ptr %i.b, align 8, !noalias !151
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hafbdebb88cf3858aE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  store ptr @43, ptr %i.a, align 8, !noalias !153
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !153
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !153
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !153
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !153
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.e, !noalias !154

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !150
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !155
  %i.l = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !150
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.i
  br i1 %i.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc8158041a2355896E.exit", label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !154
  resume { ptr, i32 } %i.o

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc8158041a2355896E.exit": ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !154
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbb5caefc637231edE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZN4core4iter6traits8iterator8Iterator4fold17h6b9dfb4f139aa816E.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.h = shl i64 %.sroa.4.0.copyload, 2
  %i.i = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.h
  %i.j = add i64 %.sroa.4.0.copyload, %i.d
  %i.k = sub i64 %i.j, %i.b
  %i.l = shl i64 %i.k, 2
  %i.m = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.i, %i.n
  %bound1 = icmp ult ptr %i.e, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 4 uses
  %i.o = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.p = add i64 %i.b, %n.vec
  %i.q = load i64, ptr %i.e, align 8, !alias.scope !169, !noalias !170
  %i.r = and i64 %i.q, 63
  %broadcast.splatinsert4 = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat5 = shufflevector <2 x i64> %broadcast.splatinsert4, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.s = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.t = shl <2 x i64> %vec.ind, %broadcast.splat5
  %i.u = shl <2 x i64> %step.add, %broadcast.splat5
  %i.v = trunc <2 x i64> %i.t to <2 x i32>
  %i.w = trunc <2 x i64> %i.u to <2 x i32>
  %i.x = getelementptr [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <2 x i32> %i.v, ptr %i.x, align 4, !alias.scope !171, !noalias !172
  store <2 x i32> %i.w, ptr %i.y, align 4, !alias.scope !171, !noalias !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN4core4iter6traits8iterator8Iterator4fold17h6b9dfb4f139aa816E.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 5 uses
  %i.aa = sub i64 %i.d, %.sroa.0.011.i.ph
  %.neg = add i64 %.sroa.0.011.i.ph, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader7
  %i.ab = add nuw i64 %.sroa.0.011.i.ph, 1
  %i.ac = load i64, ptr %i.e, align 8, !noalias !170, !noundef !6
  %i.ad = and i64 %i.ac, 63
  %i.ae = shl i64 %.sroa.0.011.i.ph, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.ph
  store i32 %i.af, ptr %i.ag, align 4, !noalias !173
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader7
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader7 ], [ %i.ah, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader7 ], [ %i.ah, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader7 ], [ %i.ab, %.lr.ph.i.prol ]
  %i.ai = icmp eq i64 %i.d, %.neg
  br i1 %i.ai, label %_ZN4core4iter6traits8iterator8Iterator4fold17h6b9dfb4f139aa816E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.aj = phi i64 [ %i.ax, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ak = add nuw i64 %.sroa.0.011.i, 1
  %i.al = load i64, ptr %i.e, align 8, !noalias !170, !noundef !6
  %i.am = and i64 %i.al, 63
  %i.an = shl i64 %.sroa.0.011.i, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.aj
  store i32 %i.ao, ptr %i.ap, align 4, !noalias !173
  %i.aq = add nuw i64 %.sroa.0.011.i, 2           ; 2 uses
  %i.ar = load i64, ptr %i.e, align 8, !noalias !170, !noundef !6
  %i.as = and i64 %i.ar, 63
  %i.at = shl i64 %i.ak, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store i32 %i.au, ptr %i.aw, align 4, !noalias !173
  %i.ax = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aq, %i.d
  br i1 %exitcond.not.i.1, label %_ZN4core4iter6traits8iterator8Iterator4fold17h6b9dfb4f139aa816E.exit, label %.lr.ph.i, !llvm.loop !168

_ZN4core4iter6traits8iterator8Iterator4fold17h6b9dfb4f139aa816E.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ax, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !174
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he14b9bc9c48fe2adE"(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 5                   ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 128
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423484
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val13.i = load i64, ptr %i.h, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.02.0.i, i64 %.val13.i)
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %.val13.i.1 = load i64, ptr %i.j, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i, i64 %.val13.i.1)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 80
  %.val13.i.2 = load i64, ptr %i.l, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.2 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.1, i64 %.val13.i.2)
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 112
  %.val13.i.3 = load i64, ptr %i.n, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.3 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.2, i64 %.val13.i.3) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit.loopexit.unr-lcssa": ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit.loopexit.unr-lcssa", %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit.loopexit.unr-lcssa" ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %.val13.i.epil = load i64, ptr %i.q, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.02.0.i.epil, i64 %.val13.i.epil) ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit", label %bb.d, !llvm.loop !175

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit.loopexit.unr-lcssa", %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h852cdad195f633bfE.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17heb19457b030fbc7bE"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h47a0e5f54c9271a6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.j, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  invoke void @_ZN14regex_automata4meta13reverse_inner7flatten17hd61ca37704e9187bE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !186

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !187
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h47a0e5f54c9271a6E.exit", label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !186
  resume { ptr, i32 } %i.l

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h47a0e5f54c9271a6E.exit": ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !186
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hec081d7c12bb682bE"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he3ea37aea814f589E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.6.0.copyload, %bb.b ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.j, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !197
  invoke void @_ZN14regex_automata4meta13reverse_inner7flatten17hd61ca37704e9187bE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !198

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !199
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !197
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he3ea37aea814f589E.exit", label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !198
  resume { ptr, i32 } %i.l

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he3ea37aea814f589E.exit": ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !198
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfc5f0f18e83e9da1E"(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 64
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val13.i = load i64, ptr %i.h, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.02.0.i, i64 %.val13.i)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val13.i.1 = load i64, ptr %i.j, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i, i64 %.val13.i.1)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %.val13.i.2 = load i64, ptr %i.l, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.2 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.1, i64 %.val13.i.2)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 56
  %.val13.i.3 = load i64, ptr %i.n, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.3 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.2, i64 %.val13.i.3) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit.loopexit.unr-lcssa": ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit.loopexit.unr-lcssa", %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit.loopexit.unr-lcssa" ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val13.i.epil = load i64, ptr %i.q, align 8, !noundef !6
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.02.0.i.epil, i64 %.val13.i.epil) ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit", label %bb.d, !llvm.loop !200

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit.loopexit.unr-lcssa", %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha757067d5f7533c1E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f308e36b9067460E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %.sroa.19 = alloca [112 x i8], align 8          ; 8 uses
  %i.f = load ptr, ptr %1, align 8, !alias.scope !222, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !222, !nonnull !6, !noundef !6
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.j, ptr %1, align 8, !alias.scope !222
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !223
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 16 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !224, !noundef !6
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i", label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !225
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i": ; preds = %bb.b
  store i64 -1, ptr %i.l, align 8, !noalias !224
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 4 uses
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder13start_pattern17h56b3617f7895182cE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i unwind label %common.resume.i, !noalias !223

_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i"
  %i.p = load i64, ptr %i.l, align 8, !noalias !225, !noundef !6
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.l, align 8, !noalias !225
  %i.r = load i64, ptr %i.e, align 8, !range !10, !noalias !223, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.r, -9223372036854775800
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.541.0.copyload.i = load i32, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !223
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.14.12.copyload = load i32, ptr %.sroa.642.0..sroa_idx.i, align 4, !noalias !226
  %.sroa.19.12..sroa.642.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.12..sroa.642.0..sroa_idx.i.sroa_idx, i64 112, i1 false), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !223
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit"

bb.e:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !223
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5c_cap17hf644a255ba82e980E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.d, ptr noundef nonnull align 8 %.val, i32 noundef 0, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f), !noalias !227
  %i.s = load i64, ptr %i.d, align 8, !range !10, !noalias !223, !noundef !6 ; 2 uses
  %.not75.i = icmp eq i64 %i.s, -9223372036854775800
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load i32, ptr %i.t, align 8, !noalias !223 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.w = load i32, ptr %i.v, align 4, !noalias !223 ; 2 uses
  br i1 %.not75.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx.i, i64 112, i1 false), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !223
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit"

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !223
  %i.x = load i64, ptr %i.l, align 8, !noalias !228, !noundef !6
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i", label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !229
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i": ; preds = %bb.g
  store i64 -1, ptr %i.l, align 8, !noalias !228
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_match17hfe3661d7457dd598E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i unwind label %common.resume.i, !noalias !227

_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i"
  %i.z = load i64, ptr %i.l, align 8, !noalias !230, !noundef !6
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.l, align 8, !noalias !230
  %i.ab = load i64, ptr %i.c, align 8, !range !10, !noalias !223, !noundef !6 ; 2 uses
  %.not76.i = icmp eq i64 %i.ab, -9223372036854775800
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !noalias !223 ; 3 uses
  br i1 %.not76.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.14.12.copyload7 = load i32, ptr %.sroa.662.0..sroa_idx.i, align 4, !noalias !226
  %.sroa.19.12..sroa.662.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.12..sroa.662.0..sroa_idx.i.sroa_idx, i64 112, i1 false), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !223
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit"

bb.j:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !223
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i", label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !231
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i": ; preds = %bb.j
  store i64 -1, ptr %i.l, align 8, !noalias !232
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder5patch17hfdc50f8b24d65ca3E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o, i32 noundef %i.w, i32 noundef %i.ad)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i unwind label %common.resume.i, !noalias !227

_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i"
  %i.af = load i64, ptr %i.l, align 8, !noalias !233, !noundef !6
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.l, align 8, !noalias !233
  %i.ah = load i64, ptr %i.b, align 8, !range !10, !noalias !223, !noundef !6 ; 2 uses
  %.not77.i = icmp eq i64 %i.ah, -9223372036854775800
  br i1 %.not77.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload4 = load i32, ptr %.sroa.9.0..sroa_idx3, align 8, !noalias !226
  %.sroa.14.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.14.0.copyload6 = load i32, ptr %.sroa.14.0..sroa_idx5, align 4, !noalias !226
  %.sroa.19.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.0..sroa_idx9, i64 112, i1 false), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit"

bb.m:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i", label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22, !noalias !234
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i": ; preds = %bb.m
  store i64 -1, ptr %i.l, align 8, !noalias !235
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder14finish_pattern17hc91c85da91c5cf1eE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o, i32 noundef %i.u)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i unwind label %common.resume.i, !noalias !227

common.resume.i:                                  ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i64, ptr %i.l, align 8, !noalias !223, !noundef !6
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.l, align 8, !noalias !223
  resume { ptr, i32 } %i.aj

_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i"
  %i.am = load i64, ptr %i.l, align 8, !noalias !236, !noundef !6
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.l, align 8, !noalias !236
  %i.ao = load i64, ptr %i.a, align 8, !range !10, !noalias !223, !noundef !6 ; 2 uses
  %.not78.i = icmp eq i64 %i.ao, -9223372036854775800
  br i1 %.not78.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.570.0.copyload.i = load i32, ptr %.sroa.570.0..sroa_idx.i, align 8, !noalias !223
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.14.12.copyload8 = load i32, ptr %.sroa.671.0..sroa_idx.i, align 4, !noalias !226
  %.sroa.19.12..sroa.671.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.12..sroa.671.0..sroa_idx.i.sroa_idx, i64 112, i1 false), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit"

bb.p:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit"

"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit": ; preds = %bb.d, %bb.f, %bb.i, %bb.l, %bb.o, %bb.p
  %.sroa.14.0 = phi i32 [ %i.ad, %bb.p ], [ %.sroa.14.12.copyload8, %bb.o ], [ %.sroa.14.0.copyload6, %bb.l ], [ %.sroa.14.12.copyload7, %bb.i ], [ %i.w, %bb.f ], [ %.sroa.14.12.copyload, %bb.d ]
  %.sroa.9.0 = phi i32 [ %i.u, %bb.p ], [ %.sroa.570.0.copyload.i, %bb.o ], [ %.sroa.9.0.copyload4, %bb.l ], [ %i.ad, %bb.i ], [ %i.u, %bb.f ], [ %.sroa.541.0.copyload.i, %bb.d ]
  %.sroa.0.0 = phi i64 [ -9223372036854775800, %bb.p ], [ %i.ao, %bb.o ], [ %i.ah, %bb.l ], [ %i.ab, %bb.i ], [ %i.s, %bb.f ], [ %i.r, %bb.d ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hc6e22e4c37c1092dE.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda8ab081be663646E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %.sroa.19 = alloca [112 x i8], align 8          ; 8 uses
  %i.f = load ptr, ptr %1, align 8, !alias.scope !257, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !257, !nonnull !6, !noundef !6
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %1, align 8, !alias.scope !257
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %.val2 = load ptr, ptr %i.f, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !258
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 16 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !259, !noundef !6
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i", label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !260
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i": ; preds = %bb.b
  store i64 -1, ptr %i.l, align 8, !noalias !259
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 4 uses
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder13start_pattern17h56b3617f7895182cE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i unwind label %common.resume.i, !noalias !258

_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i"
  %i.p = load i64, ptr %i.l, align 8, !noalias !260, !noundef !6
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.l, align 8, !noalias !260
  %i.r = load i64, ptr %i.e, align 8, !range !10, !noalias !258, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.r, -9223372036854775800
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.541.0.copyload.i = load i32, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !258
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.14.12.copyload = load i32, ptr %.sroa.642.0..sroa_idx.i, align 4
  %.sroa.19.12..sroa.642.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.12..sroa.642.0..sroa_idx.i.sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !258
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit"

bb.e:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !258
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5c_cap17hf644a255ba82e980E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.d, ptr noundef nonnull align 8 %.val, i32 noundef 0, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2), !noalias !258
  %i.s = load i64, ptr %i.d, align 8, !range !10, !noalias !258, !noundef !6 ; 2 uses
  %.not75.i = icmp eq i64 %i.s, -9223372036854775800
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load i32, ptr %i.t, align 8, !noalias !258 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.w = load i32, ptr %i.v, align 4, !noalias !258 ; 2 uses
  br i1 %.not75.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx.i, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !258
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit"

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !258
  %i.x = load i64, ptr %i.l, align 8, !noalias !261, !noundef !6
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i", label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !262
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i": ; preds = %bb.g
  store i64 -1, ptr %i.l, align 8, !noalias !261
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_match17hfe3661d7457dd598E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i unwind label %common.resume.i, !noalias !258

_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i"
  %i.z = load i64, ptr %i.l, align 8, !noalias !262, !noundef !6
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.l, align 8, !noalias !262
  %i.ab = load i64, ptr %i.c, align 8, !range !10, !noalias !258, !noundef !6 ; 2 uses
  %.not76.i = icmp eq i64 %i.ab, -9223372036854775800
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !noalias !258 ; 3 uses
  br i1 %.not76.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.14.12.copyload8 = load i32, ptr %.sroa.662.0..sroa_idx.i, align 4
  %.sroa.19.12..sroa.662.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.12..sroa.662.0..sroa_idx.i.sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !258
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit"

bb.j:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_match17hb6444477dc5e2a28E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !258
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i", label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !263
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i": ; preds = %bb.j
  store i64 -1, ptr %i.l, align 8, !noalias !264
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder5patch17hfdc50f8b24d65ca3E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o, i32 noundef %i.w, i32 noundef %i.ad)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i unwind label %common.resume.i, !noalias !258

_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i"
  %i.af = load i64, ptr %i.l, align 8, !noalias !263, !noundef !6
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.l, align 8, !noalias !263
  %i.ah = load i64, ptr %i.b, align 8, !range !10, !noalias !258, !noundef !6 ; 2 uses
  %.not77.i = icmp eq i64 %i.ah, -9223372036854775800
  br i1 %.not77.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload5 = load i32, ptr %.sroa.9.0..sroa_idx4, align 8
  %.sroa.14.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.14.0.copyload7 = load i32, ptr %.sroa.14.0..sroa_idx6, align 4
  %.sroa.19.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.0..sroa_idx10, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit"

bb.m:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i", label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22, !noalias !265
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i": ; preds = %bb.m
  store i64 -1, ptr %i.l, align 8, !noalias !266
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder14finish_pattern17hc91c85da91c5cf1eE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o, i32 noundef %i.u)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i unwind label %common.resume.i, !noalias !258

common.resume.i:                                  ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i80.i", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i79.i", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i64, ptr %i.l, align 8, !noalias !258, !noundef !6
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.l, align 8, !noalias !258
  resume { ptr, i32 } %i.aj

_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i81.i"
  %i.am = load i64, ptr %i.l, align 8, !noalias !265, !noundef !6
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.l, align 8, !noalias !265
  %i.ao = load i64, ptr %i.a, align 8, !range !10, !noalias !258, !noundef !6 ; 2 uses
  %.not78.i = icmp eq i64 %i.ao, -9223372036854775800
  br i1 %.not78.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.570.0.copyload.i = load i32, ptr %.sroa.570.0..sroa_idx.i, align 8, !noalias !258
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.14.12.copyload9 = load i32, ptr %.sroa.671.0..sroa_idx.i, align 4
  %.sroa.19.12..sroa.671.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.12..sroa.671.0..sroa_idx.i.sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit"

bb.p:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit"

"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit": ; preds = %bb.d, %bb.f, %bb.i, %bb.l, %bb.o, %bb.p
  %.sroa.14.0 = phi i32 [ %i.ad, %bb.p ], [ %.sroa.14.12.copyload9, %bb.o ], [ %.sroa.14.0.copyload7, %bb.l ], [ %.sroa.14.12.copyload8, %bb.i ], [ %i.w, %bb.f ], [ %.sroa.14.12.copyload, %bb.d ]
  %.sroa.9.0 = phi i32 [ %i.u, %bb.p ], [ %.sroa.570.0.copyload.i, %bb.o ], [ %.sroa.9.0.copyload5, %bb.l ], [ %i.ad, %bb.i ], [ %i.u, %bb.f ], [ %.sroa.541.0.copyload.i, %bb.d ]
  %.sroa.0.0 = phi i64 [ -9223372036854775800, %bb.p ], [ %i.ao, %bb.o ], [ %i.ah, %bb.l ], [ %i.ab, %bb.i ], [ %i.s, %bb.f ], [ %i.r, %bb.d ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.19, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %"_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile28_$u7b$$u7b$closure$u7d$$u7d$17hadcdb47530c64c92E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN12regex_syntax3hir3Hir3dot17hd45f32b3dcf814feE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call { i8, i8 } @_ZN12regex_syntax3hir15ClassBytesRange3new17h248b360a9ec5b374E(i8 noundef 0, i8 noundef -1) ; 2 uses
  %i.g = extractvalue { i8, i8 } %i.f, 0
  %i.h = extractvalue { i8, i8 } %i.f, 1
  %.sroa.424.0.insert.ext = zext i8 %i.h to i16
  %.sroa.424.0.insert.shift = shl nuw i16 %.sroa.424.0.insert.ext, 8
  %.sroa.023.0.insert.ext = zext i8 %i.g to i16
  %.sroa.023.0.insert.insert = or disjoint i16 %.sroa.424.0.insert.shift, %.sroa.023.0.insert.ext
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$3new17he4ce64fc12b73588E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, i16 %.sroa.023.0.insert.insert)
  store i64 1, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.in.in.in.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.in.in.i = load i64, ptr %.sroa.0.0.in.in.in.i, align 8, !alias.scope !276, !noundef !6
  %.sroa.0.0.in.i = icmp eq i64 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !277
  invoke void @_ZN12regex_syntax3hir5Class7literal17h7b35cc71c1d212ebE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.g unwind label %bb.f, !noalias !275

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !279
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_ZN12regex_syntax3hir10ClassBytes5empty17h76a58ae6f9687756E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j)
          to label %.noexc.i unwind label %bb.f, !noalias !277

.noexc.i:                                         ; preds = %bb.c
  store i64 1, ptr %i.b, align 8, !noalias !279
  %i.k = invoke noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties5class17hb24b03876ee65975E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %_ZN12regex_syntax3hir3Hir4fail17h2f8d5b150ebf6ad5E.exit.i unwind label %bb.d, !noalias !279

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$regex_syntax..hir..Class$GT$17h1a163f9f63f265aaE"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #23
          to label %.body.i unwind label %bb.e, !noalias !279

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !279
  unreachable

_ZN12regex_syntax3hir3Hir4fail17h2f8d5b150ebf6ad5E.exit.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !276
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.n, align 8, !alias.scope !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  br label %bb.m

bb.f:                                             ; preds = %bb.l, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h4727b6d2cafd1ff1E.exit.i.i", %bb.h, %bb.c, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.o, %bb.f ], [ %i.y, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$regex_syntax..hir..Class$GT$17h1a163f9f63f265aaE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e) #23
          to label %bb.p unwind label %bb.o, !noalias !275

bb.g:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.d, align 8, !range !11, !noalias !277, !noundef !6
  %.not.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !277
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.q = invoke { ptr, i64 } @"_ZN5alloc3vec126_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$T$C$A$GT$$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$GT$4from17h91293608a4fea442E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc2.i unwind label %bb.f, !noalias !275 ; 2 uses

.noexc2.i:                                        ; preds = %bb.h
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 4 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h4727b6d2cafd1ff1E.exit.i.i", label %bb.i

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h4727b6d2cafd1ff1E.exit.i.i": ; preds = %.noexc2.i
  %i.u = invoke noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties5empty17hf593d2b0ff7d23caE()
          to label %.noexc3.i unwind label %bb.f, !noalias !275

.noexc3.i:                                        ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h4727b6d2cafd1ff1E.exit.i.i"
  store i64 2, ptr %0, align 8, !alias.scope !282
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !282
  br label %_ZN12regex_syntax3hir3Hir7literal17h91ba62c8ae01a776E.exit.i

bb.i:                                             ; preds = %.noexc2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !283
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  store ptr %i.r, ptr %i.a, align 8, !noalias !283
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.w, align 8, !noalias !283
  %i.x = invoke noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties7literal17h711c8d0a161ef055E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.k unwind label %bb.j, !noalias !284

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, 0) %i.s, i64 noundef 1) #25, !noalias !284
  br label %.body.i

bb.k:                                             ; preds = %bb.i
  store i64 3, ptr %0, align 8, !alias.scope !282
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !282
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !282
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.z, align 8, !alias.scope !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  br label %_ZN12regex_syntax3hir3Hir7literal17h91ba62c8ae01a776E.exit.i

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !277
  %i.aa = invoke noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties5class17hb24b03876ee65975E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.n unwind label %bb.f, !noalias !275

_ZN12regex_syntax3hir3Hir7literal17h91ba62c8ae01a776E.exit.i: ; preds = %bb.k, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !277
  br label %bb.m

bb.m:                                             ; preds = %_ZN12regex_syntax3hir3Hir7literal17h91ba62c8ae01a776E.exit.i, %_ZN12regex_syntax3hir3Hir4fail17h2f8d5b150ebf6ad5E.exit.i
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$regex_syntax..hir..Class$GT$17h1a163f9f63f265aaE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e), !noalias !275
  br label %_ZN12regex_syntax3hir3Hir5class17h4d1863435257b84cE.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !alias.scope !277
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !275
  br label %_ZN12regex_syntax3hir3Hir5class17h4d1863435257b84cE.exit

bb.o:                                             ; preds = %.body.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !275
  unreachable

bb.p:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_ZN12regex_syntax3hir3Hir5class17h4d1863435257b84cE.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler12compile_from17h9b443b21e4439619E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = add i64 %2, 1                            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 4 uses
  %i.k = icmp ult i64 %i.j, 288230376151711744
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.f, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val16 = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %.sroa.06.0.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.bb, %bb.n ]
  %.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.bc, %bb.n ] ; 2 uses
  %i.s = icmp eq i64 %.lcssa, 0
  br i1 %i.s, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.v = getelementptr [32 x i8], ptr %i.u, i64 %.lcssa ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -32      ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 -8       ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.x, align 8, !alias.scope !295
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.v, i64 -7
  %.sroa.4.0.copyload.i.i = load i16, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !295
  store i8 0, ptr %i.x, align 8, !alias.scope !295
  %i.y = trunc nuw i8 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.y, label %bb.d, label %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler15top_last_freeze17h93420886247947cbE.exit

bb.d:                                             ; preds = %bb.c
  %i.z = zext i16 %.sroa.4.0.copyload.i.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 32
  %.sroa.06.0.insert.ext.i.i = zext i32 %.sroa.06.0.lcssa to i64
  %.sroa.06.0.insert.insert.i.i = or disjoint i64 %i.aa, %.sroa.06.0.insert.ext.i.i
  %i.ab = getelementptr i8, ptr %i.v, i64 -16     ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !296, !noundef !6 ; 3 uses
  %i.ad = load i64, ptr %i.w, align 8, !range !13, !alias.scope !296, !noundef !6
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i"

bb.e:                                             ; preds = %bb.d
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2b4434d9eacf3cc0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i": ; preds = %bb.e, %bb.d
  %i.af = getelementptr i8, ptr %i.v, i64 -24
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !296, !nonnull !6, !noundef !6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  store i64 %.sroa.06.0.insert.insert.i.i, ptr %i.ah, align 4
  %i.ai = add i64 %i.ac, 1
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !296
  br label %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler15top_last_freeze17h93420886247947cbE.exit

_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler15top_last_freeze17h93420886247947cbE.exit: ; preds = %bb.c, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i"
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %i.aj = phi i64 [ %i.j, %.lr.ph ], [ %i.bc, %bb.n ]
  %.sroa.06.032 = phi i32 [ %i.e, %.lr.ph ], [ %i.bb, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !297
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  store i64 %i.ak, ptr %i.i, align 8, !noalias !297
  %i.al = load i64, ptr %i.m, align 8, !range !13, !noalias !297, !noundef !6
  %i.am = icmp samesign ult i64 %i.ak, %i.al
  call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %i.n, align 8, !noalias !297, !nonnull !6, !noundef !6
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !noalias !297
  %.sroa.0.0.copyload.i.i18 = load i8, ptr %i.o, align 8, !alias.scope !298, !noalias !297
  %.sroa.4.0.copyload.i.i20 = load i16, ptr %.sroa.4.0..sroa_idx.i.i19, align 1, !alias.scope !298, !noalias !297
  store i8 0, ptr %i.o, align 8, !alias.scope !298, !noalias !297
  %i.ap = trunc nuw i8 %.sroa.0.0.copyload.i.i18 to i1
  br i1 %i.ap, label %bb.g, label %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler10pop_freeze17h4ab692450df42220E.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = zext i16 %.sroa.4.0.copyload.i.i20 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 32
  %.sroa.06.0.insert.ext.i.i21 = zext i32 %.sroa.06.032 to i64
  %.sroa.06.0.insert.insert.i.i22 = or disjoint i64 %i.ar, %.sroa.06.0.insert.ext.i.i21
  %i.as = load i64, ptr %i.p, align 8, !alias.scope !299, !noalias !297, !noundef !6 ; 3 uses
  %i.at = load i64, ptr %i.a, align 8, !range !13, !alias.scope !299, !noalias !297, !noundef !6
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i23"

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2b4434d9eacf3cc0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i23" unwind label %bb.i, !noalias !297

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i23": ; preds = %bb.h, %bb.g
  %i.av = load ptr, ptr %i.q, align 8, !alias.scope !299, !noalias !297, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as
  store i64 %.sroa.06.0.insert.insert.i.i22, ptr %i.aw, align 4, !noalias !297
  %i.ax = add i64 %i.as, 1
  store i64 %i.ax, ptr %i.p, align 8, !alias.scope !299, !noalias !297
  br label %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler10pop_freeze17h4ab692450df42220E.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$17h049883ff9f83eaacE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #23
          to label %bb.k unwind label %bb.j, !noalias !297

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !297
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ay

_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler10pop_freeze17h4ab692450df42220E.exit: ; preds = %bb.f, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i.i23"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler7compile17h43250e9f14022f36E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.b, ptr %.val16, ptr %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  %i.ba = load i64, ptr %i.b, align 8, !range !10, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.ba, -9223372036854775800
  %i.bb = load i32, ptr %i.r, align 8             ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler3new17h8e6765883d01150bE:bb.a
bb.f:                                             ; preds = %.lr.ph32
  %i.p = add i64 %.sroa.0.1.i.i31, 1              ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.i
  br i1 %i.q, label %common.resume, label %.lr.ph32

bb.g:                                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E.exit.i.i.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.n, %bb.d ] ; 2 uses
  %i.s = icmp eq i64 %i.m, %i.i
  br i1 %i.s, label %common.resume, label %.lr.ph32

.lr.ph32:                                         ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i31 = phi i64 [ %i.p, %bb.f ], [ %i.m, %.body.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.0.1.i.i31
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$17h049883ff9f83eaacE"(ptr noalias noundef align 8 dereferenceable(32) %i.t) #23
          to label %bb.f unwind label %bb.h

common.resume:                                    ; preds = %bb.f, %.body.i.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.lr.ph32
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

_ZN14regex_automata3nfa8thompson8compiler9Utf8State5clear17h8d09fc318eea0b73E.exit: ; preds = %"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$17h049883ff9f83eaacE.exit.i.i", %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.w, align 8
  %i.x = load i64, ptr %i.h, align 8, !alias.scope !333, !noundef !6 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !13, !alias.scope !333, !noundef !6
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler9add_empty17h581590c65fde3a76E.exit

bb.i:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler9Utf8State5clear17h8d09fc318eea0b73E.exit
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd327d59fa5138c5fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler9add_empty17h581590c65fde3a76E.exit unwind label %bb.j, !noalias !334

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$17h049883ff9f83eaacE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #23
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler9add_empty17h581590c65fde3a76E.exit: ; preds = %_ZN14regex_automata3nfa8thompson8compiler9Utf8State5clear17h8d09fc318eea0b73E.exit, %bb.i
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !333, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.ae = add i64 %i.x, 1
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.af, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler9add_empty17h581590c65fde3a76E.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler6finish17h0ded245a82fe7dc7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [128 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler12compile_from17h9b443b21e4439619E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.e, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.f, -9223372036854775800
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %.val15, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !337, !noundef !6 ; 3 uses
  store i64 %i.i, ptr %i.b, align 8, !noalias !337
  %i.j = icmp ult i64 %i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !337
  store ptr null, ptr %i.a, align 8, !noalias !337
  call void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22, !noalias !337
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val15, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !noalias !337, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i8, ptr %i.n, align 8, !range !14, !noalias !337, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler8pop_root17hf5c99dda39bd4a13E.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 57, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !337
  unreachable

_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler8pop_root17hf5c99dda39bd4a13E.exit: ; preds = %bb.e
  store i64 0, ptr %i.h, align 8, !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8
  call fastcc void @_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler7compile17h43250e9f14022f36E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.c, ptr %.val, ptr %.val15, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  %i.q = load i64, ptr %i.c, align 8, !range !10, !noundef !6 ; 2 uses
  %.not13 = icmp eq i64 %i.q, -9223372036854775800
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler8pop_root17hf5c99dda39bd4a13E.exit
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.69.0..sroa_idx, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.q, ptr %0, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %.sroa.211.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler8pop_root17hf5c99dda39bd4a13E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.u, ptr %i.w, align 4
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler7compile17h43250e9f14022f36E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr %.0.val, ptr nonnull %.8.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.h = invoke noundef i64 @_ZN14regex_automata3nfa8thompson3map14Utf8BoundedMap4hash17h9b007b2fd86c0e0dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.8.val, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %bb.b unwind label %bb.n       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = invoke { i32, i32 } @_ZN14regex_automata3nfa8thompson3map14Utf8BoundedMap3get17h1ff1930ae73bf65aE(ptr noalias noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef %i.h)
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i32 } %i.i, 0
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i32, i32 } %i.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %i.m, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h07d24727683b7992E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.i unwind label %bb.n

bb.f:                                             ; preds = %bb.k, %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04fc86ed3f7c5c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h010eff5055960f1cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E.exit": ; preds = %bb.f
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h010eff5055960f1cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder10add_sparse17h9cd488fa93560438E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(112) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = load i64, ptr %i.c, align 8, !range !10, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.p, -9223372036854775800
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.316.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.613.0..sroa_idx, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.p, ptr %0, align 8
  store i32 %i.r, ptr %i.s, align 8
  br label %bb.f

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_ZN14regex_automata3nfa8thompson3map14Utf8BoundedMap3set17ha31e2f4c2b6390d0E(ptr noalias noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.h, i32 noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.r, ptr %i.s, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E.exit"
  ret void

bb.n:                                             ; preds = %bb.i, %bb.e, %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E"(ptr noalias noundef align 8 dereferenceable(24) %1) #23
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h649e8ac96042645bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [128 x i8], align 8               ; 8 uses
  %i.h = alloca [128 x i8], align 8               ; 8 uses
  %i.i = alloca [128 x i8], align 8               ; 8 uses
  %i.j = alloca [128 x i8], align 8               ; 8 uses
  %i.k = alloca [128 x i8], align 8               ; 8 uses
  %i.l = alloca [128 x i8], align 8               ; 8 uses
  %i.m = alloca [128 x i8], align 8               ; 8 uses
  %i.n = alloca [128 x i8], align 8               ; 8 uses
  %i.o = alloca [128 x i8], align 8               ; 8 uses
  %.sroa.42.i = alloca [112 x i8], align 8        ; 16 uses
  %i.p = alloca [128 x i8], align 8               ; 7 uses
  %i.q = alloca [128 x i8], align 8               ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 16 uses
  %i.t = alloca [128 x i8], align 8               ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 2 uses
  %i.v = alloca [240 x i8], align 8               ; 8 uses
  %i.w = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.67 = alloca [48 x i8], align 8           ; 6 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  store i64 0, ptr %i.z, align 8
  %.idx = shl nuw nsw i64 %3, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  br label %bb.q

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.013.078 = phi ptr [ %2, %.lr.ph ], [ %i.ae, %bb.l ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.078, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_ZN12regex_syntax6parser13ParserBuilder5build17h67e4cca3850d45b8E(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.v, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body35:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.ac, %bb.ad, %bb.ak, %bb.aq, %bb.au, %bb.bc, %bb.bf, %bb.cd, %bb.cg, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dj, %bb.ad ], [ %i.db, %bb.ac ], [ %.pn.i.i, %bb.ak ], [ %.pn.i206.i, %bb.aq ], [ %i.fu, %bb.cd ], [ %i.fa, %bb.bf ], [ %i.ee, %bb.au ], [ %i.er, %bb.bc ], [ %i.bg, %bb.v ], [ %i.gc, %bb.cg ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE"(ptr noalias noundef align 8 dereferenceable(24) %i.x) #23
          to label %common.resume unwind label %bb.p

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.bu, %bb.bs, %bb.k, %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h5cb6df9888ffa161E.exit.i", %.invoke, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.ay, %bb.ar, %bb.f
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %.body35

bb.c:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.c ], [ %i.al, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hc22c94985b6fae15E"(ptr noalias noundef align 8 dereferenceable(240) %i.v) #23
          to label %.body35 unwind label %bb.p

bb.d:                                             ; preds = %bb.b
  %.sroa.013.0.val = load ptr, ptr %.sroa.013.078, align 8, !nonnull !6, !align !15, !noundef !6
  %i.ag = getelementptr i8, ptr %.sroa.013.078, i64 8
  %.sroa.013.0.val32 = load i64, ptr %i.ag, align 8, !noundef !6
  invoke void @_ZN12regex_syntax6parser6Parser5parse17h1996957eccbbc346E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(240) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.013.0.val, i64 noundef %.sroa.013.0.val32)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ah = load i64, ptr %i.w, align 8, !range !385, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.ah, -9223372036854775807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.328.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.320.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.67, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.227.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 %i.ah, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hc22c94985b6fae15E"(ptr noalias noundef align 8 dereferenceable(240) %i.v)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.67, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %i.ai = load i64, ptr %i.z, align 8, !alias.scope !386, !noundef !6 ; 3 uses
  %i.aj = load i64, ptr %i.x, align 8, !range !13, !alias.scope !386, !noundef !6
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h59b46e0f5b26a4e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.k unwind label %bb.i, !noalias !387

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u) #23
end_hunk_1
begin_hunk_2_@_ZN14regex_automata3nfa8thompson8compiler8Compiler10c_at_least17h9ae902da1fcc5762E:bb.a

bb.cq:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i449"
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load i64, ptr %i.he, align 8, !noalias !554, !noundef !6
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.he, align 8, !noalias !554
  br label %common.resume

_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit450: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i449"
  %i.hr = load i64, ptr %i.he, align 8, !noalias !554, !noundef !6
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr %i.he, align 8, !noalias !554
  %i.ht = load i64, ptr %i.k, align 8, !range !10, !noundef !6 ; 2 uses
  %.not419 = icmp eq i64 %i.ht, -9223372036854775800
  br i1 %.not419, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit450
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2372.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4370.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.ht, ptr %0, align 8
  br label %bb.cv

bb.cs:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.j, ptr noundef nonnull align 8 %1, i32 noundef %i.hd, i32 noundef %i.gh)
  %i.hu = load i64, ptr %i.j, align 8, !range !10, !noundef !6 ; 2 uses
  %.not421 = icmp eq i64 %i.hu, -9223372036854775800
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not421, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.hv, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4376.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.hu, ptr %0, align 8
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i32 %i.eq, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.hd, ptr %i.hw, align 4
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.by, %bb.cj, %bb.cn, %bb.cr, %bb.ct, %bb.ca, %bb.bo, %bb.bs, %bb.bw, %bb.bf, %bb.bx, %bb.cu, %bb.ar, %bb.bc, %bb.bb, %bb.ax, %bb.at, %bb.n, %bb.r, %bb.v, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.aa, %bb.e, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler13start_pattern17hf73d5b5e1f435071E(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !558, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit", label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit": ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8, !noalias !558
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder13start_pattern17h56b3617f7895182cE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit"
  %i.e = load i64, ptr %i.a, align 8, !noundef !6
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit"
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.a, align 8, !noundef !6
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler14build_from_hir17h72d541d9c207e2afE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler7compile17h00ac14881cd910b2E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler14finish_pattern17h97162eabf8ef7d2fE(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !561, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit", label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit": ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8, !noalias !561
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder14finish_pattern17hc91c85da91c5cf1eE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d, i32 noundef %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit"
  %i.e = load i64, ptr %i.a, align 8, !noundef !6
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit"
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.a, align 8, !noundef !6
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_union_reverse17he80b67658b460473E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !564, !noundef !6
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit", label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit": ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8, !noalias !564
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.g, align 8
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder17add_union_reverse17h55cc8aa8ba07027fE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load i64, ptr %i.b, align 8, !noundef !6
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit"
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.b, align 8, !noundef !6
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.b, align 8
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [128 x i8], align 8               ; 6 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [128 x i8], align 8               ; 6 uses
  %i.l = alloca [128 x i8], align 8               ; 7 uses
  %i.m = alloca [128 x i8], align 8               ; 8 uses
  %i.n = alloca [128 x i8], align 8               ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [128 x i8], align 8               ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [128 x i8], align 8               ; 6 uses
  %i.u = alloca [128 x i8], align 8               ; 6 uses
  %i.v = alloca [8 x i8], align 8                 ; 8 uses
  %i.w = alloca [9 x i8], align 1                 ; 7 uses
  %i.x = alloca [9 x i8], align 1                 ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [128 x i8], align 8              ; 7 uses
  %i.ab = alloca [128 x i8], align 8              ; 7 uses
  %i.ac = alloca [128 x i8], align 8              ; 6 uses
  %i.ad = alloca [9 x i8], align 1                ; 6 uses
  %i.ae = alloca [9 x i8], align 1                ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [128 x i8], align 8              ; 7 uses
  %.sroa.744.i = alloca [24 x i8], align 8        ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [128 x i8], align 8              ; 6 uses
  %i.ak = alloca [128 x i8], align 8              ; 7 uses
  %.sroa.729.i = alloca [24 x i8], align 8        ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [9 x i8], align 1                ; 6 uses
  %i.an = alloca [9 x i8], align 1                ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [128 x i8], align 8              ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 11 uses
  %i.at = alloca [128 x i8], align 8              ; 7 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [128 x i8], align 8              ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 11 uses
  %i.az = alloca [128 x i8], align 8              ; 7 uses
  %i.ba = alloca [128 x i8], align 8              ; 6 uses
  %i.bb = alloca [32 x i8], align 8               ; 15 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [128 x i8], align 8              ; 6 uses
  %.sroa.11 = alloca [112 x i8], align 8          ; 3 uses
  %.sroa.10 = alloca [112 x i8], align 8          ; 3 uses
  %i.be = alloca [128 x i8], align 8              ; 7 uses
  %i.bf = alloca [128 x i8], align 8              ; 7 uses
  %.sroa.7.i110.i.i = alloca [112 x i8], align 8  ; 4 uses
  %i.bg = alloca [128 x i8], align 8              ; 7 uses
  %.sroa.7.i94.i.i = alloca [112 x i8], align 8   ; 4 uses
  %i.bh = alloca [128 x i8], align 8              ; 7 uses
  %i.bi = alloca [128 x i8], align 8              ; 7 uses
  %.sroa.7.i79.i.i = alloca [112 x i8], align 8   ; 4 uses
  %i.bj = alloca [128 x i8], align 8              ; 7 uses
  %.sroa.7.i.i.i = alloca [112 x i8], align 8     ; 4 uses
  %i.bk = alloca [128 x i8], align 8              ; 6 uses
  %.sroa.15.i.i = alloca [112 x i8], align 8      ; 5 uses
  %.sroa.14.i.i = alloca [112 x i8], align 8      ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 9 uses
  %i.bm = alloca [128 x i8], align 8              ; 7 uses
  %i.bn = load i64, ptr %2, align 8, !range !22, !noundef !6 ; 4 uses
  %i.bo = icmp ne i64 %i.bn, 4
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nsw i64 %i.bn, -2
  %.inv = icmp samesign ult i64 %i.bn, 2
  %i.bq = select i1 %.inv, i64 2, i64 %i.bp
  switch i64 %i.bq, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.h
    i64 2, label %bb.ar
    i64 3, label %switch.lookup
    i64 4, label %bb.aw
    i64 5, label %bb.ce
    i64 6, label %bb.cf
    i64 7, label %bb.db
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !775
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.bs = load i64, ptr %i.br, align 8, !noalias !776, !noundef !6
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i", label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !777
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i": ; preds = %bb.c
  store i64 -1, ptr %i.br, align 8, !noalias !776
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_empty17h375d0859a7648b39E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bu)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i unwind label %bb.e, !noalias !775

common.resume:                                    ; preds = %bb.eq, %bb.ev, %.loopexit.split-lp37.i.i, %.body182.i, %bb.ii, %bb.il, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %common.resume.sink.split.i, %bb.ef, %bb.ek, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %bb.dk, %bb.l, %bb.q, %bb.u, %bb.ad, %bb.ai, %bb.ao, %bb.cy, %bb.cl, %bb.bx, %bb.bt, %bb.bp, %bb.bl, %bb.be, %bb.bb, %bb.at, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.e ], [ %i.qb, %common.resume.sink.split.i ], [ %i.gm, %bb.at ], [ %i.hr, %bb.bb ], [ %i.hx, %bb.be ], [ %i.io, %bb.bl ], [ %i.ix, %bb.bp ], [ %i.je, %bb.bt ], [ %i.jl, %bb.bx ], [ %i.le, %bb.cl ], [ %i.ma, %bb.cy ], [ %i.ft, %bb.ao ], [ %i.ok, %bb.dk ], [ %lpad.loopexit.split-lp432, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cw, %bb.l ], [ %i.dl, %bb.q ], [ %i.dx, %bb.u ], [ %i.eu, %bb.ad ], [ %i.fi, %bb.ai ], [ %.pn.i, %.body ], [ %i.qf, %bb.ef ], [ %i.qr, %bb.ek ], [ %i.rc, %bb.eq ], [ %.pn.i.i, %.loopexit.split-lp37.i.i ], [ %lpad.loopexit.split-lp394, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn130.i, %bb.ev ], [ %.pn141.i, %.body182.i ], [ %i.zk, %bb.ii ], [ %i.zo, %bb.il ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load i64, ptr %i.br, align 8, !noalias !777, !noundef !6
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.br, align 8, !noalias !777
  br label %common.resume

_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i"
  %i.by = load i64, ptr %i.br, align 8, !noalias !777, !noundef !6
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.br, align 8, !noalias !777
  %i.ca = load i64, ptr %i.bm, align 8, !range !10, !noalias !775, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.ca, -9223372036854775800
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !noalias !775 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.cd, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.69.0..sroa_idx.i, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !775
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE.exit

bb.g:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !775
  store i32 %i.cc, ptr %i.cd, align 4, !alias.scope !775
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE.exit

_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE.exit: ; preds = %bb.f, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cc, ptr %i.ce, align 8, !alias.scope !775
  store i64 %i.ca, ptr %0, align 8, !alias.scope !775
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit

bb.h:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !779
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  store ptr %i.cg, ptr %i.bl, align 8, !noalias !779
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !noalias !779
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 5 uses
  store ptr %1, ptr %i.cl, align 8, !noalias !779
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 19 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !range !16, !noalias !782, !noundef !6
  %i.co = icmp eq i8 %i.cn, 1
  br i1 %i.co, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.cp = call { i1, i8 } @"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20c825bf2b405184E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl), !noalias !784 ; 2 uses
  %i.cq = extractvalue { i1, i8 } %i.cp, 0
  br i1 %i.cq, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.val.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !785, !noalias !779, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !786
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40 ; 6 uses
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !787, !noundef !6
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i.i.i", label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22, !noalias !788
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i.i.i": ; preds = %bb.j
  %i.cu = extractvalue { i1, i8 } %i.cp, 1
  store i64 -1, ptr %i.cr, align 8, !noalias !787
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  %.sroa.53.0.insert.ext.i.i.i.i.i.i = zext i8 %i.cu to i64
  %.sroa.42.0.insert.insert.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.53.0.insert.ext.i.i.i.i.i.i, 1103806595072
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_range17h261bbd9553ef3668E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.cv, i64 %.sroa.42.0.insert.insert.i.i.i.i.i.i)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_range17h365734b694ce7d6bE.exit.i.i.i.i.i unwind label %bb.l, !noalias !789

bb.l:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i.i.i"
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load i64, ptr %i.cr, align 8, !noalias !788, !noundef !6
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cr, align 8, !noalias !788
  br label %common.resume

_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_range17h365734b694ce7d6bE.exit.i.i.i.i.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i.i.i"
  %i.cz = load i64, ptr %i.cr, align 8, !noalias !788, !noundef !6
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.cr, align 8, !noalias !788
  %i.db = load i64, ptr %i.bj, align 8, !range !10, !noalias !786, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.db, -9223372036854775800
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !noalias !786 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_literal28_$u7b$$u7b$closure$u7d$$u7d$17h8a0569a1f2a94ea5E.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_range17h365734b694ce7d6bE.exit.i.i.i.i.i
  %.sroa.69.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.sroa.5.12.copyload.i.i.i = load i32, ptr %.sroa.69.0..sroa_idx.i.i.i.i.i, align 4, !noalias !790
  %.sroa.7.12..sroa.69.0..sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.12..sroa.69.0..sroa_idx.i.i.sroa_idx.i.i.i, i64 112, i1 false), !noalias !790
  br label %"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_literal28_$u7b$$u7b$closure$u7d$$u7d$17h8a0569a1f2a94ea5E.exit.i.i.i"
end_hunk_2
begin_hunk_3_@_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E:bb.a
.lr.ph.preheader:                                 ; preds = %bb.dd, %bb.de
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dm
  %.sroa.0.0.i7182 = phi ptr [ %i.ny, %bb.dm ], [ %i.mh, %.lr.ph.preheader ] ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7182, i64 48 ; 2 uses
  %i.nz = load i64, ptr %.sroa.0.0.i7182, align 8, !range !22, !alias.scope !873, !noundef !6 ; 2 uses
  %i.oa = icmp ne i64 %i.nz, 4
  call void @llvm.assume(i1 %i.oa)
  %i.ob = icmp eq i64 %i.nz, 3
  br i1 %i.ob, label %bb.dg, label %bb.dh, !prof !9

._crit_edge:                                      ; preds = %bb.dm
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.od = load i64, ptr %i.oc, align 8, !noalias !877, !noundef !6
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %bb.do, label %bb.df, !prof !9

bb.df:                                            ; preds = %._crit_edge
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !876
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7182, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !alias.scope !873, !nonnull !6, !noundef !6
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7182, i64 16
  %i.oi = load i64, ptr %i.oh, align 8, !alias.scope !873, !noundef !6
  invoke void @_ZN14regex_automata3nfa8thompson12literal_trie11LiteralTrie3add17h3ee41f717220f174E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.og, i64 noundef %i.oi)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !875, !inline_history !713

bb.dh:                                            ; preds = %.lr.ph
  invoke void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !875, !inline_history !713

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dg, %bb.df, %bb.dh
  %lpad.loopexit.split-lp432 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E"(ptr noalias noundef align 8 dereferenceable(32) %i.bb) #23
          to label %common.resume unwind label %bb.du, !noalias !875, !inline_history !713

bb.di:                                            ; preds = %bb.dg
  %i.oj = load i64, ptr %i.ba, align 8, !range !10, !noalias !876, !noundef !6
  %.not5.i = icmp eq i64 %i.oj, -9223372036854775800
  br i1 %.not5.i, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.ba, i64 128, i1 false), !noalias !873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !876
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef282e1c90f4bd10E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E.exit52" unwind label %bb.dk, !noalias !875

bb.dk:                                            ; preds = %bb.dj
  %i.ok = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7205a69b6417b3c9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %common.resume unwind label %bb.dl, !noalias !875

bb.dl:                                            ; preds = %bb.dk
  %i.ol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !875
  unreachable

"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E.exit52": ; preds = %bb.dj
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7205a69b6417b3c9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb), !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !876
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit

bb.dm:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !876
  %i.om = icmp eq ptr %i.ny, %i.mk
  br i1 %i.om, label %._crit_edge, label %.lr.ph

bb.dn:                                            ; preds = %bb.dh
  unreachable

bb.do:                                            ; preds = %._crit_edge
  store i64 -1, ptr %i.oc, align 8, !noalias !877
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZN14regex_automata3nfa8thompson12literal_trie11LiteralTrie7compile17h7cce8f1c129699b5E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.on)
          to label %bb.dq unwind label %bb.dp, !inline_history !713

bb.dp:                                            ; preds = %bb.do
  %i.oo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E"(ptr noalias noundef align 8 dereferenceable(32) %i.bb) #23
          to label %.body unwind label %bb.du, !noalias !875, !inline_history !713

bb.dq:                                            ; preds = %bb.do
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef282e1c90f4bd10E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17hc85aa4bba2eb8855E.exit.i" unwind label %bb.dr, !noalias !875

bb.dr:                                            ; preds = %bb.dq
  %i.op = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7205a69b6417b3c9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %.body unwind label %bb.ds, !noalias !875

bb.ds:                                            ; preds = %bb.dr
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !875
  unreachable

"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17hc85aa4bba2eb8855E.exit.i": ; preds = %bb.dq
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7205a69b6417b3c9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E.exit" unwind label %bb.dt

.body:                                            ; preds = %bb.dt, %bb.dr, %bb.dp
  %.pn.i = phi { ptr, i32 } [ %i.oo, %bb.dp ], [ %i.ot, %bb.dt ], [ %i.op, %bb.dr ]
  %i.or = load i64, ptr %i.oc, align 8, !noalias !875, !noundef !6
  %i.os = add i64 %i.or, 1
  store i64 %i.os, ptr %i.oc, align 8, !noalias !875
  br label %common.resume

bb.dt:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17hc85aa4bba2eb8855E.exit.i"
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E.exit": ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17hc85aa4bba2eb8855E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !876
  %i.ou = load i64, ptr %i.oc, align 8, !noalias !875, !noundef !6
  %i.ov = add i64 %i.ou, 1
  store i64 %i.ov, ptr %i.oc, align 8, !noalias !875
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit

bb.du:                                            ; preds = %bb.dp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !875, !inline_history !713
  unreachable

_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit: ; preds = %"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E.exit", %"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E.exit52", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h88b3ff30fd7eca33E.exit.thread", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf778279f95dab3d0E.exit.thread", %bb.co, %_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE.exit41, %bb.cz, %bb.cv, %bb.bz, %bb.by, %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.bg, %bb.ej, %bb.ei, %bb.dx, %bb.cd, %bb.cc, %bb.cb, %bb.ce, %_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17hec08d8f22e81d0fcE.exit, %_ZN14regex_automata3nfa8thompson8compiler8Compiler6c_look17ha90d26bf90339d26E.exit, %_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_literal17h8bfd350d89df8800E.exit, %_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE.exit
  ret void

bb.dv:                                            ; preds = %bb.ar
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load ptr, ptr %i.ox, align 8           ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val2 = load i64, ptr %i.oy, align 8           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !878
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 10 uses
  %i.pa = load i64, ptr %i.oz, align 8, !noalias !879, !noundef !6
  %i.pb = icmp eq i64 %i.pa, 0
  br i1 %i.pb, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i8", label %bb.dw, !prof !9

bb.dw:                                            ; preds = %bb.dv
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !880
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i8": ; preds = %bb.dv
  store i64 -1, ptr %i.oz, align 8, !noalias !879
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_empty17h375d0859a7648b39E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.pc)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i9 unwind label %common.resume.sink.split.i, !noalias !878

_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i9: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i8"
  %i.pd = load i64, ptr %i.oz, align 8, !noalias !880, !noundef !6
  %i.pe = add i64 %i.pd, 1
  store i64 %i.pe, ptr %i.oz, align 8, !noalias !880
  %i.pf = load i64, ptr %i.az, align 8, !range !10, !noalias !878, !noundef !6 ; 2 uses
  %.not.i10 = icmp eq i64 %i.pf, -9223372036854775800
  %i.pg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ph = load i32, ptr %i.pg, align 8, !noalias !878 ; 3 uses
  br i1 %.not.i10, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i9
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.sroa.328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.328.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.625.0..sroa_idx.i, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !878
  store i64 %i.pf, ptr %0, align 8, !alias.scope !878
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ph, ptr %.sroa.227.0..sroa_idx.i, align 8, !alias.scope !878
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit

bb.dy:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !878
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf2d9c00461ec9392E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, i64 noundef %.val2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !878
  %i.pi = load i64, ptr %i.av, align 8, !range !21, !noalias !878, !noundef !6
  %i.pj = trunc nuw i64 %i.pi to i1
  %i.pk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.pl = load i64, ptr %i.pk, align 8, !range !11, !noalias !878, !noundef !6 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  br i1 %i.pj, label %bb.dz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haedffbbb4d01876aE.exit.i", !prof !12

bb.dz:                                            ; preds = %bb.dy
  %i.pn = load i64, ptr %i.pm, align 8, !noalias !878
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.pl, i64 %i.pn) #22, !noalias !878
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haedffbbb4d01876aE.exit.i": ; preds = %bb.dy
  %i.po = load ptr, ptr %i.pm, align 8, !noalias !878, !nonnull !6, !noundef !6
  %i.pp = icmp ule i64 %.val2, %i.pl
  call void @llvm.assume(i1 %i.pp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !878
  store i64 %i.pl, ptr %i.ay, align 8, !noalias !878
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.po, ptr %i.pq, align 8, !noalias !878
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  store i64 0, ptr %i.pr, align 8, !noalias !878
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %.idx.i = shl nuw nsw i64 %.val2, 1
  %i.ps = getelementptr inbounds nuw i8, ptr %.val1, i64 %.idx.i
  %.not473.i = icmp eq i64 %.val2, 0
  br i1 %.not473.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haedffbbb4d01876aE.exit.i"
  %.sroa.040.0.insert.ext.i = zext i32 %i.ph to i64
  br label %bb.ea

bb.ea:                                            ; preds = %bb.eg, %.lr.ph.i
  %i.pt = phi i64 [ 0, %.lr.ph.i ], [ %i.qi, %bb.eg ] ; 3 uses
  %.sroa.029.04.i = phi ptr [ %.val1, %.lr.ph.i ], [ %i.qj, %bb.eg ] ; 2 uses
  %i.pu = load i16, ptr %.sroa.029.04.i, align 1, !noalias !878
  %i.pv = zext i16 %i.pu to i64
  %i.pw = shl nuw nsw i64 %i.pv, 32
  %.sroa.040.0.insert.insert.i = or disjoint i64 %i.pw, %.sroa.040.0.insert.ext.i
  %i.px = load i64, ptr %i.ay, align 8, !range !13, !alias.scope !881, !noalias !878, !noundef !6
  %i.py = icmp eq i64 %i.pt, %i.px
  br i1 %i.py, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2b4434d9eacf3cc0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.eg unwind label %bb.ek, !noalias !878

._crit_edge.i:                                    ; preds = %bb.eg, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haedffbbb4d01876aE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !878
  %i.pz = load i64, ptr %i.oz, align 8, !noalias !882, !noundef !6
  %i.qa = icmp eq i64 %i.pz, 0
  br i1 %i.qa, label %bb.ed, label %bb.ec, !prof !9

bb.ec:                                            ; preds = %._crit_edge.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22
          to label %.noexc.i.i unwind label %bb.ef, !noalias !883

.noexc.i.i:                                       ; preds = %bb.ec
  unreachable

common.resume.sink.split.i:                       ; preds = %bb.ed, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i8"
  %i.qb = landingpad { ptr, i32 }
          cleanup
  %i.qc = load i64, ptr %i.oz, align 8, !noalias !878, !noundef !6
  %i.qd = add i64 %i.qc, 1
  store i64 %i.qd, ptr %i.oz, align 8, !noalias !878
  br label %common.resume

bb.ed:                                            ; preds = %._crit_edge.i
  store i64 -1, ptr %i.oz, align 8, !noalias !882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !878
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder10add_sparse17h9cd488fa93560438E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.pc, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.au)
          to label %bb.eh unwind label %common.resume.sink.split.i, !noalias !884

bb.ee:                                            ; preds = %bb.ef
  %i.qe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !885
  unreachable

bb.ef:                                            ; preds = %bb.ec
  %i.qf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw) #23
          to label %common.resume unwind label %bb.ee, !noalias !885

bb.eg:                                            ; preds = %bb.eb, %bb.ea
  %i.qg = load ptr, ptr %i.pq, align 8, !alias.scope !881, !noalias !878, !nonnull !6, !noundef !6
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.pt
  store i64 %.sroa.040.0.insert.insert.i, ptr %i.qh, align 4, !noalias !878
  %i.qi = add nuw i64 %i.pt, 1                    ; 2 uses
  store i64 %i.qi, ptr %i.pr, align 8, !alias.scope !881, !noalias !878
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.029.04.i, i64 2 ; 2 uses
  %.not47.i = icmp eq ptr %i.qj, %i.ps
  br i1 %.not47.i, label %._crit_edge.i, label %bb.ea

bb.eh:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !883
  %i.qk = load i64, ptr %i.oz, align 8, !noalias !883, !noundef !6
  %i.ql = add i64 %i.qk, 1
  store i64 %i.ql, ptr %i.oz, align 8, !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !878
  %i.qm = load i64, ptr %i.ax, align 8, !range !10, !noalias !878, !noundef !6 ; 2 uses
  %.not48.i = icmp eq i64 %i.qm, -9223372036854775800
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.qo = load i32, ptr %i.qn, align 8, !noalias !878 ; 2 uses
  br i1 %.not48.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %.sroa.339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.339.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.636.0..sroa_idx.i, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !878
  store i64 %i.qm, ptr %0, align 8, !alias.scope !878
  %.sroa.238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.qo, ptr %.sroa.238.0..sroa_idx.i, align 8, !alias.scope !878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !878
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !878
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.qo, ptr %i.qp, align 8, !alias.scope !878
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ph, ptr %i.qq, align 4, !alias.scope !878
  store i64 -9223372036854775800, ptr %0, align 8, !alias.scope !878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !878
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit

bb.ek:                                            ; preds = %bb.eb
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E"(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #23
          to label %common.resume unwind label %bb.el, !noalias !878

bb.el:                                            ; preds = %bb.ek
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !878
  unreachable

bb.em:                                            ; preds = %bb.ar
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.qu = tail call noundef zeroext i1 @_ZN12regex_syntax3hir12ClassUnicode8is_ascii17h4aa7f00640953cb2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.qt), !noalias !886
  br i1 %i.qu, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.qw = load i8, ptr %i.qv, align 1, !range !16, !noalias !888, !noundef !6
  %i.qx = icmp eq i8 %i.qw, 1
  br i1 %i.qx, label %bb.eu, label %bb.er

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !888
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.qz = load i64, ptr %i.qy, align 8, !noalias !889, !noundef !6
  %i.ra = icmp eq i64 %i.qz, 0
  br i1 %i.ra, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i21", label %bb.ep, !prof !9

bb.ep:                                            ; preds = %bb.eo
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !890
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i21": ; preds = %bb.eo
  store i64 -1, ptr %i.qy, align 8, !noalias !889
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_empty17h375d0859a7648b39E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.rb)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i22 unwind label %bb.eq, !noalias !886

bb.eq:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i21"
  %i.rc = landingpad { ptr, i32 }
          cleanup
  %i.rd = load i64, ptr %i.qy, align 8, !noalias !891, !noundef !6
  %i.re = add i64 %i.rd, 1
  store i64 %i.re, ptr %i.qy, align 8, !noalias !891
  br label %common.resume

_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE.exit.i22: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i21"
  %i.rf = load i64, ptr %i.qy, align 8, !noalias !891, !noundef !6
  %i.rg = add i64 %i.rf, 1
  store i64 %i.rg, ptr %i.qy, align 8, !noalias !891
  %i.rh = load i64, ptr %i.at, align 8, !range !10, !noalias !888, !noundef !6 ; 2 uses
  %.not143.i = icmp eq i64 %i.rh, -9223372036854775800
  %i.ri = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.rj = load i32, ptr %i.ri, align 8, !noalias !888 ; 3 uses
  br i1 %.not143.i, label %bb.ie, label %bb.id

bb.er:                                            ; preds = %bb.en
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.rl = load i64, ptr %i.rk, align 8, !noalias !892, !noundef !6
  %i.rm = icmp eq i64 %i.rl, 0
  br i1 %i.rm, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i", label %bb.es, !prof !9

bb.es:                                            ; preds = %bb.er
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22, !noalias !886
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i": ; preds = %bb.er
  store i64 -1, ptr %i.rk, align 8, !noalias !892
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 8 uses
  %i.ro = load i64, ptr %i.rn, align 8, !noalias !893, !noundef !6
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %bb.ex, label %bb.et, !prof !9

bb.et:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i"
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22
          to label %.noexc168.i unwind label %bb.ew, !noalias !886

.noexc168.i:                                      ; preds = %bb.et
  unreachable

bb.eu:                                            ; preds = %bb.en
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.rr = load i8, ptr %i.rq, align 4, !range !16, !noalias !888, !noundef !6
  %i.rs = icmp eq i8 %i.rr, 1
  br i1 %i.rs, label %bb.hb, label %bb.fr
end_hunk_3
begin_hunk_4_@_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E:bb.a
  %narrow.i = add nuw nsw i8 %i.ss, 1
  %switch.offset.i = zext nneg i8 %narrow.i to i64
  invoke void @_ZN14regex_automata3nfa8thompson8compiler12Utf8Compiler3add17h309b4e24f0116263E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.si, i64 noundef %switch.offset.i)
          to label %bb.fk unwind label %bb.ff, !noalias !886

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !888
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ebb91a9b262b9a9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i.i" unwind label %bb.fi, !noalias !886

bb.fi:                                            ; preds = %bb.fh
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i unwind label %bb.fj, !noalias !886

bb.fj:                                            ; preds = %bb.fi
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !886
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i.i": ; preds = %bb.fh
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE.exit.i" unwind label %.loopexit.split-lp240.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !886

"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE.exit.i": ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !888
  %i.sv = icmp eq ptr %.sroa.0110.1255.i, %i.sg   ; 2 uses
  %.sroa.0110.1.idx.i = select i1 %i.sv, i64 0, i64 8
  %.sroa.0110.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0110.1255.i, i64 %.sroa.0110.1.idx.i
  br i1 %i.sv, label %._crit_edge.i16, label %bb.fb

bb.fk:                                            ; preds = %switch.lookup.i
  %i.sw = load i64, ptr %i.ac, align 8, !range !10, !noalias !888, !noundef !6 ; 2 uses
  %.not127.i = icmp eq i64 %i.sw, -9223372036854775800
  br i1 %.not127.i, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.2116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2116.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4114.0..sroa_idx.i, i64 120, i1 false), !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !888
  store i64 %i.sw, ptr %0, align 8, !alias.scope !886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !888
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ebb91a9b262b9a9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i171.i" unwind label %bb.fm, !noalias !886

bb.fm:                                            ; preds = %bb.fl
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i unwind label %bb.fn, !noalias !886

bb.fn:                                            ; preds = %bb.fm
  %i.sy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !886
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i171.i": ; preds = %bb.fl
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE.exit175.i" unwind label %.loopexit.split-lp240.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !886

bb.fo:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !888
  br label %bb.fe

"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE.exit175.i": ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i171.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !888
  br label %bb.fq

bb.fp:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hw, %bb.ff
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !886
  unreachable

bb.fq:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE.exit175.i", %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !888
  %i.ta = load i64, ptr %i.rn, align 8, !noalias !888, !noundef !6
  %i.tb = add i64 %i.ta, 1
  store i64 %i.tb, ptr %i.rn, align 8, !noalias !888
  %i.tc = load i64, ptr %i.rk, align 8, !noalias !888, !noundef !6
  %i.td = add i64 %i.tc, 1
  store i64 %i.td, ptr %i.rk, align 8, !noalias !888
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17hec08d8f22e81d0fcE.exit

bb.fr:                                            ; preds = %bb.eu
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val163.i = load ptr, ptr %i.te, align 8, !alias.scope !887 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val164.i = load i64, ptr %i.tf, align 8, !alias.scope !887 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !888
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 6 uses
  %i.th = load i64, ptr %i.tg, align 8, !noalias !897, !noundef !6
  %i.ti = icmp eq i64 %i.th, 0
  br i1 %i.ti, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h28aec7815072bf75E.exit.i.i", label %bb.fs, !prof !9

bb.fs:                                            ; preds = %bb.fr
  tail call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22, !noalias !898
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h28aec7815072bf75E.exit.i.i": ; preds = %bb.fr
  store i64 -1, ptr %i.tg, align 8, !noalias !897
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 4 uses
  invoke void @_ZN14regex_automata3nfa8thompson3map13Utf8SuffixMap5clear17hb1b77046ea43fed6E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.tj)
          to label %bb.ft unwind label %.loopexit.split-lp37.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

.loopexit.split-lp37.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gg, %bb.gc, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i.i.i", %.invoke.i.i, %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h28aec7815072bf75E.exit.i.i"
  %lpad.loopexit.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp37.i.i

bb.ft:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17h28aec7815072bf75E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !897
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 28 uses
  %i.tl = load i64, ptr %i.tk, align 8, !noalias !899, !noundef !6
  %i.tm = icmp eq i64 %i.tl, 0
  br i1 %i.tm, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i17", label %.invoke.i.i, !prof !9

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i17": ; preds = %bb.ft
  store i64 -1, ptr %i.tk, align 8, !noalias !899
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !900
  store i64 0, ptr %i.s, align 8, !noalias !900
  %i.to = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.to, align 8, !noalias !900
  %i.tp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.tp, align 8, !noalias !900
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_union17h2a9ddc7f0940afbdE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.tn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.fv unwind label %bb.fu, !noalias !898

bb.fu:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i17"
  %i.tq = landingpad { ptr, i32 }
          cleanup
  %i.tr = load i64, ptr %i.tk, align 8, !noalias !900, !noundef !6
  %i.ts = add i64 %i.tr, 1
  store i64 %i.ts, ptr %i.tk, align 8, !noalias !900
  br label %.loopexit.split-lp37.i.i

bb.fv:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i17"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !900
  %i.tt = load i64, ptr %i.tk, align 8, !noalias !900, !noundef !6
  %i.tu = add i64 %i.tt, 1                        ; 2 uses
  store i64 %i.tu, ptr %i.tk, align 8, !noalias !900
  %i.tv = load i64, ptr %i.ab, align 8, !range !10, !noalias !897, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.tv, -9223372036854775800
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.tx = load i32, ptr %i.tw, align 8, !noalias !897 ; 3 uses
  br i1 %.not.i.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %.sroa.560.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.sroa.363.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.363.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.560.0..sroa_idx.i.i, i64 116, i1 false), !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !897
  store i64 %i.tv, ptr %0, align 8, !alias.scope !898
  %.sroa.262.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.tx, ptr %.sroa.262.0..sroa_idx.i.i, align 8, !alias.scope !898
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler35c_unicode_class_reverse_with_suffix17h2142d3c974f3c9a2E.exit.i

bb.fx:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !897
  %i.ty = icmp eq i64 %i.tu, 0
  br i1 %i.ty, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118.i.i", label %.invoke.i.i, !prof !9

.invoke.i.i:                                      ; preds = %bb.fx, %bb.ft
  %i.tz = phi ptr [ @38, %bb.ft ], [ @35, %bb.fx ]
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tz) #22
          to label %.cont.i.i unwind label %.loopexit.split-lp37.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118.i.i": ; preds = %bb.fx
  store i64 -1, ptr %i.tk, align 8, !noalias !901
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_empty17h375d0859a7648b39E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.tn)
          to label %bb.fz unwind label %bb.fy, !noalias !898

bb.fy:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118.i.i"
  %i.ua = landingpad { ptr, i32 }
          cleanup
  %i.ub = load i64, ptr %i.tk, align 8, !noalias !902, !noundef !6
  %i.uc = add i64 %i.ub, 1
  store i64 %i.uc, ptr %i.tk, align 8, !noalias !902
  br label %.loopexit.split-lp37.i.i

bb.fz:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118.i.i"
  %i.ud = load i64, ptr %i.tk, align 8, !noalias !902, !noundef !6
  %i.ue = add i64 %i.ud, 1
  store i64 %i.ue, ptr %i.tk, align 8, !noalias !902
  %i.uf = load i64, ptr %i.aa, align 8, !range !10, !noalias !897, !noundef !6 ; 2 uses
  %.not104.i.i = icmp eq i64 %i.uf, -9223372036854775800
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %4 = load i32, ptr %3, align 8, !noalias !897   ; 3 uses
  br i1 %.not104.i.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %.sroa.569.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.372.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.372.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.569.0..sroa_idx.i.i, i64 116, i1 false), !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !897
  store i64 %i.uf, ptr %0, align 8, !alias.scope !898
  %.sroa.271.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %.sroa.271.0..sroa_idx.i.i, align 8, !alias.scope !898
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler35c_unicode_class_reverse_with_suffix17h2142d3c974f3c9a2E.exit.i

bb.gb:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !897
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val163.i) ]
  %.idx.i.i = shl nuw nsw i64 %.val164.i, 3
  %i.ug = getelementptr inbounds nuw i8, ptr %.val163.i, i64 %.idx.i.i
  %i.uh = icmp eq i64 %.val164.i, 0
  br i1 %i.uh, label %._crit_edge67.i.i, label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %bb.gb
  %.sroa.073.162.i.i = getelementptr inbounds nuw i8, ptr %.val163.i, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.uk = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.ul = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.gep84.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gh, %.lr.ph66.i.i
  %.sroa.073.164.i.i = phi ptr [ %.sroa.073.162.i.i, %.lr.ph66.i.i ], [ %.sroa.073.1.i.i, %bb.gh ] ; 3 uses
  %.sroa.073.063.i.i = phi ptr [ %.val163.i, %.lr.ph66.i.i ], [ %.sroa.073.164.i.i, %bb.gh ] ; 2 uses
  %i.um = load i32, ptr %.sroa.073.063.i.i, align 4, !range !894, !noalias !898, !noundef !6
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.073.063.i.i, i64 4
  %i.uo = load i32, ptr %i.un, align 4, !range !894, !noalias !898, !noundef !6
  invoke void @_ZN12regex_syntax4utf813Utf8Sequences3new17h7d2a57cca5f63454E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, i32 noundef %i.um, i32 noundef %i.uo)
          to label %bb.gd unwind label %.loopexit.split-lp37.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

._crit_edge67.i.i:                                ; preds = %bb.gh, %bb.gb
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.tx, ptr %i.up, align 8, !alias.scope !898
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.uq, align 4, !alias.scope !898
  store i64 -9223372036854775800, ptr %0, align 8, !alias.scope !898
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler35c_unicode_class_reverse_with_suffix17h2142d3c974f3c9a2E.exit.i

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !897
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gl, %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !897
  invoke void @"_ZN92_$LT$regex_syntax..utf8..Utf8Sequences$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bf9fc10c2cc73ccE"(ptr noalias noundef nonnull sret([9 x i8]) align 1 captures(address) dereferenceable(9) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gz, %bb.gp, %.lr.ph.i.i, %bb.ge, %.invoke104.i.i
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  br label %.body124.i.i

.body124.i.i:                                     ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gw, %bb.gt, %bb.gi
  %eh.lpad-body125.i.i = phi { ptr, i32 } [ %i.vd, %bb.gi ], [ %i.vv, %bb.gt ], [ %i.we, %bb.gw ], [ %lpad.loopexit.split-lp402, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE"(ptr noalias noundef align 8 dereferenceable(24) %i.y) #23
          to label %.loopexit.split-lp37.i.i unwind label %bb.ha, !noalias !898

bb.gf:                                            ; preds = %bb.ge
  %i.ur = load i8, ptr %i.x, align 1, !range !895, !noalias !897, !noundef !6
  %.not107.i.i = icmp eq i8 %i.ur, 4
  br i1 %.not107.i.i, label %bb.gg, label %switch.lookup.i.i

switch.lookup.i.i:                                ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.w, ptr noundef nonnull align 1 dereferenceable(9) %i.x, i64 9, i1 false), !noalias !897
  %i.us = load i8, ptr %i.w, align 1, !range !17, !noalias !897, !noundef !6
  %i.ut = shl nuw nsw i8 %i.us, 1
  %i.uu = zext nneg i8 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 2
  br label %.lr.ph.i.i

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !897
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE"(ptr noalias noundef align 8 dereferenceable(24) %i.y)
          to label %bb.gh unwind label %.loopexit.split-lp37.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !897
  %i.ux = icmp eq ptr %.sroa.073.164.i.i, %i.ug   ; 2 uses
  %.sroa.073.1.idx.i.i = select i1 %i.ux, i64 0, i64 8
  %.sroa.073.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.073.164.i.i, i64 %.sroa.073.1.idx.i.i
  br i1 %i.ux, label %._crit_edge67.i.i, label %bb.gc

.lr.ph.i.i:                                       ; preds = %.backedge.i.i, %switch.lookup.i.i
  %.sroa.018.160.i.i = phi ptr [ %.sroa.gep197.i, %.backedge.i.i ], [ %.sroa.gep84.i.i, %switch.lookup.i.i ] ; 3 uses
  %.sroa.018.059.i.i = phi ptr [ %.sroa.018.160.i.i, %.backedge.i.i ], [ %i.ui, %switch.lookup.i.i ] ; 3 uses
  %.sroa.027.058.i.i = phi i32 [ %.sroa.027.0.be.i.i, %.backedge.i.i ], [ %4, %switch.lookup.i.i ] ; 2 uses
  %i.uy = load i8, ptr %.sroa.018.059.i.i, align 1, !noalias !897, !noundef !6
  %.sroa.018.0.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.059.i.i, i64 1
  %i.uz = load i8, ptr %.sroa.018.0.sroa.gep.i.i, align 1, !noalias !897, !noundef !6
  store i32 %.sroa.027.058.i.i, ptr %i.v, align 8, !noalias !897
  store i8 %i.uy, ptr %i.uj, align 4, !noalias !897
  store i8 %i.uz, ptr %i.uk, align 1, !noalias !897
  %i.va = invoke noundef i64 @_ZN14regex_automata3nfa8thompson3map13Utf8SuffixMap4hash17h137dd20c60555d5aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.tj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.gp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898 ; 2 uses

._crit_edge.i.i:                                  ; preds = %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !897
  %i.vb = load i64, ptr %i.tk, align 8, !noalias !903, !noundef !6
  %i.vc = icmp eq i64 %i.vb, 0
  br i1 %i.vc, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i122.i.i", label %.invoke104.i.i, !prof !9

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i122.i.i": ; preds = %._crit_edge.i.i
  store i64 -1, ptr %i.tk, align 8, !noalias !903
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder5patch17hfdc50f8b24d65ca3E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.tn, i32 noundef %i.tx, i32 noundef %.sroa.027.0.be.i.i)
          to label %bb.gj unwind label %bb.gi, !noalias !898

bb.gi:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i122.i.i"
  %i.vd = landingpad { ptr, i32 }
          cleanup
  %i.ve = load i64, ptr %i.tk, align 8, !noalias !904, !noundef !6
  %i.vf = add i64 %i.ve, 1
  store i64 %i.vf, ptr %i.tk, align 8, !noalias !904
  br label %.body124.i.i

bb.gj:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i122.i.i"
  %i.vg = load i64, ptr %i.tk, align 8, !noalias !904, !noundef !6
  %i.vh = add i64 %i.vg, 1
  store i64 %i.vh, ptr %i.tk, align 8, !noalias !904
  %i.vi = load i64, ptr %i.t, align 8, !range !10, !noalias !897, !noundef !6 ; 2 uses
  %.not109.i.i = icmp eq i64 %i.vi, -9223372036854775800
  br i1 %.not109.i.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.296.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.296.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.494.0..sroa_idx.i.i, i64 120, i1 false), !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !897
  store i64 %i.vi, ptr %0, align 8, !alias.scope !898
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !897
  br label %bb.ge

bb.gm:                                            ; preds = %bb.gy, %bb.gu, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !897
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ebb91a9b262b9a9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i.i.i" unwind label %bb.gn, !noalias !898

bb.gn:                                            ; preds = %bb.gm
  %i.vj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.loopexit.split-lp37.i.i unwind label %bb.go, !noalias !898

bb.go:                                            ; preds = %bb.gn
  %i.vk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !898
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit.i.i.i": ; preds = %bb.gm
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE.exit.i.i" unwind label %.loopexit.split-lp37.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

bb.gp:                                            ; preds = %.lr.ph.i.i
  %i.vl = invoke { i32, i32 } @_ZN14regex_automata3nfa8thompson3map13Utf8SuffixMap3get17hd68e694c4d83a37eE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.tj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.va)
          to label %bb.gq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898 ; 2 uses

bb.gq:                                            ; preds = %bb.gp
  %i.vm = extractvalue { i32, i32 } %i.vl, 0
  %i.vn = trunc i32 %i.vm to i1
  br i1 %i.vn, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.vo = extractvalue { i32, i32 } %i.vl, 1
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.gz, %bb.gr
  %.sroa.027.0.be.i.i = phi i32 [ %i.vo, %bb.gr ], [ %i.wb, %bb.gz ] ; 2 uses
  %i.vp = icmp eq ptr %.sroa.018.160.i.i, %i.uw
  %.sroa.gep197.i = getelementptr inbounds nuw i8, ptr %.sroa.018.160.i.i, i64 2
  br i1 %i.vp, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.gs:                                            ; preds = %bb.gq
  %i.vq = load i16, ptr %.sroa.018.059.i.i, align 1, !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !905
  %i.vr = load i64, ptr %i.tk, align 8, !noalias !906, !noundef !6
  %i.vs = icmp eq i64 %i.vr, 0
  br i1 %i.vs, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i18", label %.invoke104.i.i, !prof !9

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i18": ; preds = %bb.gs
  %i.vt = zext i16 %i.vq to i64
  %i.vu = shl nuw nsw i64 %i.vt, 32
  store i64 -1, ptr %i.tk, align 8, !noalias !906
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder9add_range17h261bbd9553ef3668E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.tn, i64 %i.vu)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_range17h365734b694ce7d6bE.exit.i.i.i unwind label %bb.gt, !noalias !907

bb.gt:                                            ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i18"
  %i.vv = landingpad { ptr, i32 }
          cleanup
  %i.vw = load i64, ptr %i.tk, align 8, !noalias !908, !noundef !6
  %i.vx = add i64 %i.vw, 1
  store i64 %i.vx, ptr %i.tk, align 8, !noalias !908
  br label %.body124.i.i

_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_range17h365734b694ce7d6bE.exit.i.i.i: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i.i.i.i18"
  %i.vy = load i64, ptr %i.tk, align 8, !noalias !908, !noundef !6
  %i.vz = add i64 %i.vy, 1                        ; 2 uses
  store i64 %i.vz, ptr %i.tk, align 8, !noalias !908
  %i.wa = load i64, ptr %i.r, align 8, !range !10, !noalias !905, !noundef !6 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E:bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2b4434d9eacf3cc0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !886

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i": ; preds = %bb.ip, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i"
  %i.aab = load ptr, ptr %i.yw, align 8, !alias.scope !918, !noalias !888, !nonnull !6, !noundef !6
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.ze
  store i64 %.sroa.0118.0.insert.insert.i, ptr %i.aac, align 4, !noalias !886
  %i.aad = add nuw nsw i64 %i.ze, 1               ; 2 uses
  store i64 %i.aad, ptr %i.yx, align 8, !alias.scope !918, !noalias !888
  %i.aae = icmp eq ptr %.sroa.071.1266.i, %i.za
  %.sroa.071.1.idx.i = select i1 %i.aae, i64 0, i64 8
  %.sroa.071.1.i = getelementptr inbounds nuw i8, ptr %.sroa.071.1266.i, i64 %.sroa.071.1.idx.i
  %exitcond = icmp eq i64 %i.ze, %i.zd
  br i1 %exitcond, label %._crit_edge268.i, label %bb.ig

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ip, %.invoke.i
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E"(ptr noalias noundef align 8 dereferenceable(24) %i.as) #23
          to label %common.resume unwind label %bb.fp, !noalias !886

_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17hec08d8f22e81d0fcE.exit: ; preds = %bb.fc, %bb.fq, %_ZN14regex_automata3nfa8thompson8compiler8Compiler35c_unicode_class_reverse_with_suffix17h2142d3c974f3c9a2E.exit.i, %bb.hs, %bb.ht, %bb.id, %bb.in, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([448 x i8]) align 8 captures(none) dereferenceable(448) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [120 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.948.0..sroa_idx, align 8
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.1251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1049.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1251.0..sroa_idx, align 8
  %.sroa.1352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 0, ptr %.sroa.1352.0..sroa_idx, align 8
  %.sroa.1453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 0, ptr %.sroa.1453.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  store i8 0, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 114
  store i8 10, ptr %.sroa.19.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN14regex_automata3nfa8thompson3map14Utf8BoundedMap3new17h6819d6572105b530E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(64) %i.d, i64 noundef 10000)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.e ], [ %i.g, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17hc6248a74d8ce9c26E"(ptr noalias noundef align 8 dereferenceable(120) %i.f) #23
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.h, align 8, !alias.scope !921
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !921
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !921
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN14regex_automata3nfa8thompson10range_trie9RangeTrie3new17h9cc8fe0c5fa5b798E(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.b)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h6db445899b31b621E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #23
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN14regex_automata3nfa8thompson3map13Utf8SuffixMap3new17h845ddfd2f4231e7eE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, i64 noundef 1000)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h2347853ac1e44572E"(ptr noalias noundef align 8 dereferenceable(168) %i.c) #23
          to label %bb.e unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 721141097979576833, ptr %i.m, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 250, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %.sroa.520.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %.sroa.621.0..sroa_idx, align 1
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 0, ptr %.sroa.722.0..sroa_idx, align 2
  store i64 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store <4 x i8> <i8 2, i8 2, i8 2, i8 3>, ptr %.sroa.7.0..sroa_idx, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.n, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.p, ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 168, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5build17hc9fa4cbc5da8db9aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h649e8ac96042645bE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5c_cap17hf644a255ba82e980E(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, i32 noundef %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.h = load i8, ptr %i.g, align 1, !range !17, !noundef !6
  switch i8 %i.h, label %default.unreachable [
    i8 3, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !945
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { ptr, i64 } @"_ZN5alloc4sync22Arc$LT$$u5b$T$u5d$$GT$15copy_from_slice17h8e85c60c0688754cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4), !noalias !946 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %6 = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %6, ptr %i.k, align 8, !noalias !945
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ] ; 4 uses
  store ptr %i.l, ptr %i.a, align 8, !noalias !945
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !947, !noundef !6
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22
          to label %.noexc.i unwind label %bb.f, !noalias !946

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.q = icmp eq ptr %i.l, null
  br i1 %i.q, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !948
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hff598df8f1e7358cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.resume unwind label %bb.j, !noalias !946

bb.i:                                             ; preds = %bb.d
  store i64 -1, ptr %i.m, align 8, !noalias !947
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !945
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder17add_capture_start17hdd1769dca4208a15E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.t, i32 noundef 0, i32 noundef %2, ptr noundef %i.l, i64 %i.v)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit unwind label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i65", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i64", %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load i64, ptr %i.m, align 8, !noalias !6, !noundef !6
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.m, align 8, !noalias !6
  br label %common.resume

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !946
  unreachable

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.f ], [ %i.w, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !945
  %i.aa = load i64, ptr %i.m, align 8, !noalias !945, !noundef !6
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.m, align 8, !noalias !945
  %i.ac = load i64, ptr %i.f, align 8, !range !10, !noundef !6 ; 2 uses
  %.not59 = icmp eq i64 %i.ac, -9223372036854775800
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = load i32, ptr %i.ad, align 8            ; 3 uses
  br i1 %.not59, label %bb.p, label %bb.o

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.k:                                             ; preds = %bb.a
  %.not58 = icmp eq i32 %2, 0
  br i1 %.not58, label %bb.b, label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.t, %bb.w, %bb.z, %bb.q, %bb.l, %bb.m, %bb.aa
  ret void

bb.o:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.337.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.634.0..sroa_idx, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ac, ptr %0, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %.sroa.236.0..sroa_idx, align 8
  br label %bb.n

bb.p:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.e, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
  %i.af = load i64, ptr %i.e, align 8, !range !10, !noundef !6 ; 2 uses
  %.not60 = icmp eq i64 %i.af, -9223372036854775800
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  br i1 %.not60, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.448.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.af, ptr %0, align 8
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ah, ptr %.sroa.246.0..sroa_idx, align 8
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aj, ptr %.sroa.347.0..sroa_idx, align 4
  br label %bb.n

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = load i64, ptr %i.m, align 8, !noalias !949, !noundef !6
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i", label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22, !noalias !950
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i": ; preds = %bb.r
  store i64 -1, ptr %i.m, align 8, !noalias !949
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder15add_capture_end17hf2aa0c723d87493fE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.t, i32 noundef 0, i32 noundef %2)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler15add_capture_end17h8ad5b090165c2e69E.exit unwind label %common.resume.sink.split

_ZN14regex_automata3nfa8thompson8compiler8Compiler15add_capture_end17h8ad5b090165c2e69E.exit: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i"
  %i.am = load i64, ptr %i.m, align 8, !noalias !950, !noundef !6
  %i.an = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.an, ptr %i.m, align 8, !noalias !950
  %i.ao = load i64, ptr %i.d, align 8, !range !10, !noundef !6 ; 2 uses
  %.not61 = icmp eq i64 %i.ao, -9223372036854775800
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  br i1 %.not61, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler15add_capture_end17h8ad5b090165c2e69E.exit
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.357.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.654.0..sroa_idx, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ao, ptr %0, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aq, ptr %.sroa.256.0..sroa_idx, align 8
  br label %bb.n

bb.u:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler15add_capture_end17h8ad5b090165c2e69E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i64", label %bb.v, !prof !9

bb.v:                                             ; preds = %bb.u
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !951
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i64": ; preds = %bb.u
  store i64 -1, ptr %i.m, align 8, !noalias !952
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder5patch17hfdc50f8b24d65ca3E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.t, i32 noundef %i.ae, i32 noundef %i.ah)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit unwind label %common.resume.sink.split

_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i64"
  %i.as = load i64, ptr %i.m, align 8, !noalias !951, !noundef !6
  %i.at = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.at, ptr %i.m, align 8, !noalias !951
  %i.au = load i64, ptr %i.c, align 8, !range !10, !noundef !6
  %.not62 = icmp eq i64 %i.au, -9223372036854775800
  br i1 %.not62, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.x:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i65", label %bb.y, !prof !9

bb.y:                                             ; preds = %bb.x
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !953
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i65": ; preds = %bb.x
  store i64 -1, ptr %i.m, align 8, !noalias !954
end_hunk_5
