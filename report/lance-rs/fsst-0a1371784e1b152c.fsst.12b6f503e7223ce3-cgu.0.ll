Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/fsst-0a1371784e1b152c.fsst.12b6f503e7223ce3-cgu.0?download=true
inline.NumInlined: 62
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [34 x i8] c"rust/compression/fsst/src/fsst.rs\00", align 1, !guid !3
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00x\01\00\00$\00\00\00" }>, align 8, !guid !3
@2 = private unnamed_addr constant [65 x i8] c"assertion failed: FSST_CODE_BASE + self.n_symbols < FSST_CODE_MAX", align 1, !guid !3
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00a\01\00\00\09\00\00\00" }>, align 8, !guid !3
@4 = private unnamed_addr constant [40 x i8] c"assertion failed: self.symbol_len() >= 1", align 1, !guid !3
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\9F\00\00\00\09\00\00\00" }>, align 8, !guid !3
@6 = private unnamed_addr constant [40 x i8] c"assertion failed: self.symbol_len() >= 2", align 1, !guid !3
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\A5\00\00\00\09\00\00\00" }>, align 8, !guid !3
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00m\01\00\00\09\00\00\00" }>, align 8, !guid !3
@9 = private unnamed_addr constant [49 x i8] c"assertion failed: self.n_symbols < FSST_CODE_BASE", align 1, !guid !3
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\A9\01\00\00\09\00\00\00" }>, align 8, !guid !3
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\E6\01\00\00\15\00\00\00" }>, align 8, !guid !3
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\BD\01\00\00\1E\00\00\00" }>, align 8, !guid !3
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\CA\01\00\00(\00\00\00" }>, align 8, !guid !3
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\CE\01\00\00\0D\00\00\00" }>, align 8, !guid !3
@15 = private unnamed_addr constant [62 x i8] c"FSST escape is missing a payload byte inside the current value", align 1, !guid !3
@16 = private unnamed_addr constant [1 x i8] c"\09", align 1, !guid !3
@17 = private unnamed_addr constant [38 x i8] c"\0DignoredBits: \C0\08, code: \C0\0A, length: \C0\00", align 1, !guid !3
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00V\00\00\00\1D\00\00\00" }>, align 8, !guid !3
@19 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1, !guid !3
@20 = private unnamed_addr constant [37 x i8] c"A FSST SymbolTable after finalize():\0A", align 1, !guid !3
@21 = private unnamed_addr constant [16 x i8] c"\0Bn_symbols: \C0\01\0A\00", align 1, !guid !3
@22 = private unnamed_addr constant [17 x i8] c"\0Csuffix_lim: \C0\01\0A\00", align 1, !guid !3
@23 = private unnamed_addr constant [20 x i8] c"\0Alen_histo[\C0\03]: \C0\01\0A\00", align 1, !guid !3
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\04\01\00\00/\00\00\00" }>, align 8, !guid !3
@25 = private unnamed_addr constant [18 x i8] c"\08symbols[\C0\03]: \C0\01\0A\00", align 1, !guid !3
@26 = private unnamed_addr constant [38 x i8] c"A FSST SymbolTable before finalize():\0A", align 1, !guid !3
@27 = private unnamed_addr constant [21 x i8] c"\0Alen_histo[\C0\03]: \C0\02\0A\0A\00", align 1, !guid !3
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00\13\01\00\00/\00\00\00" }>, align 8, !guid !3
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"!\00\00\00\00\00\00\00h\00\00\00\1D\00\00\00" }>, align 8, !guid !3

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_tEEECs1BCiKJoB9mN_4fsst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1BCiKJoB9mN_4fsst.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !12 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !12, !nonnull !4, !noundef !4
  %i.h = shl nuw i64 %.val8.i.i, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 2) #15, !noalias !12
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1BCiKJoB9mN_4fsst.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1BCiKJoB9mN_4fsst.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VectEEECs1BCiKJoB9mN_4fsst.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1BCiKJoB9mN_4fsst.exit
  %i.k = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #15
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VectEEECs1BCiKJoB9mN_4fsst.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VectEEECs1BCiKJoB9mN_4fsst.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1BCiKJoB9mN_4fsst.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 0, 512) i16 @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable35find_longest_symbol_from_char_slice(ptr noalias noundef readonly align 8 captures(none) dereferenceable(156176) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 !guid !17 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %i.a = icmp samesign ugt i64 %2, 7
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, 2
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %2, 2
  br i1 %i.c, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.d = load i8, ptr %1, align 1, !noundef !4
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !noundef !4
  %i.h = zext i8 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.e
  %i.k = load i16, ptr %i.j, align 2, !noundef !4 ; 2 uses
  %i.l = icmp ugt i16 %i.k, 255
  br i1 %i.l, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 155648
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.e
  %i.o = load i16, ptr %i.n, align 2, !noundef !4
  br label %bb.j

.thread:                                          ; preds = %bb.a, %bb.c
  %.sroa.03.024 = phi i64 [ %2, %bb.c ], [ 8, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 0, ptr %.sroa.0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 3, 9) %.sroa.03.024, i1 false), !alias.scope !18
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.015.0.copyload = load i64, ptr %.sroa.0, align 8 ; 2 uses
  %i.p = mul i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.015.0.copyload, 2971215073 ; 2 uses
  %i.q = lshr i64 %i.p, 15
  %i.r = xor i64 %i.q, %i.p
  %i.s = and i64 %i.r, 1023
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 131072
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 3 uses
  %i.x = icmp ult i64 %i.w, 4294967296
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.y = load i64, ptr %i.u, align 8, !noundef !4
  %i.z = and i64 %i.w, 63
  %i.aa = lshr i64 -1, %i.z
  %i.ab = and i64 %i.aa, %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.015.0.copyload
  %i.ac = icmp eq i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = lshr i64 %i.w, 16
  %i.ae = trunc nuw i64 %i.ad to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.thread
  %i.af = load i8, ptr %1, align 1, !noundef !4
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 155648
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i16, ptr %i.ai, align 2, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.l, %bb.f, %bb.i
  %.sroa.0.0.in = phi i16 [ %i.ao, %bb.l ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ], [ %i.o, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.0 = and i16 %.sroa.0.0.in, 511
  ret i16 %.sroa.0.0

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %1, align 1, !noundef !4
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 155648
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.al
  %i.ao = load i16, ptr %i.an, align 2, !noundef !4
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable3add(ptr noalias nofree noundef align 8 captures(none) dereferenceable(156176) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 !guid !21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !4
  %i.c = add i16 %i.b, 256                        ; 4 uses
  %i.d = icmp ult i16 %i.c, 512
  br i1 %i.d, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 65, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i64 %2, 28                          ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = and i64 %i.e, 4294967295                 ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 28
  %i.i = zext nneg i16 %i.c to i64                ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = or disjoint i64 %i.j, %i.h
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 8, i64 %i.g)
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.n = or disjoint i64 %i.k, %i.m               ; 2 uses
  switch i32 %i.f, label %bb.h [
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %2, 1152921504338411520
  %.not13 = icmp eq i64 %i.o, 0
  br i1 %.not13, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = and i64 %1, 255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 155648
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.p
  store i16 %i.c, ptr %i.r, align 2
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.s = and i64 %2, 1152921504069976064
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.i, label %bb.j, !prof !22

bb.h:                                             ; preds = %bb.c
  %i.t = and i64 %1, 16777215
  %i.u = mul nuw nsw i64 %i.t, 2971215073         ; 2 uses
  %i.v = lshr i64 %i.u, 15
  %i.w = xor i64 %i.v, %i.u
  %i.x = and i64 %i.w, 1023
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 131072
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.x ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !23, !noundef !4
  %i.ac = icmp ugt i64 %i.ab, 4294967295
  br i1 %i.ac, label %_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert.exit.thread, label %_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert.exit

_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert.exit.thread: ; preds = %bb.h
  store i64 %i.n, ptr %i.aa, align 8, !alias.scope !23
  %i.ad = and i64 %i.m, 56
  %i.ae = lshr i64 -1, %i.ad
  %i.af = and i64 %i.ae, %1
  store i64 %i.af, ptr %i.z, align 8, !alias.scope !23
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ag = and i64 %1, 65535
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ag
  store i16 %i.c, ptr %i.ah, align 2
  br label %bb.k

_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert.exit: ; preds = %bb.h, %bb.l
  %.sroa.08.0 = phi i1 [ true, %bb.l ], [ false, %bb.h ]
  ret i1 %.sroa.08.0

bb.k:                                             ; preds = %_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert.exit.thread, %bb.f, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 147456
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.i ; 2 uses
  store i64 %1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.n, ptr %i.ak, align 8
  %i.al = load i16, ptr %i.a, align 8, !noundef !4
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %i.a, align 8
  %i.an = add nuw nsw i64 %i.e, 4294967295
  %i.ao = and i64 %i.an, 4294967295               ; 3 uses
  %i.ap = icmp samesign ult i64 %i.ao, 9
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 156166
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noundef !4
  %i.at = add i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  br label %_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef 9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([156176 x i8]) align 8 captures(none) dereferenceable(156176) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !26 {
bb.a:
  %i.a = alloca [8192 x i8], align 8              ; 11 uses
  %i.b = alloca [131072 x i8], align 2            ; 7 uses
  %i.c = alloca [16384 x i8], align 8             ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ 0, %bb.a ], [ %i.p, %bb.b ]    ; 5 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 2 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 4294967296, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 4294967296, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 4294967296, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 4294967296, ptr %i.o, align 8
  %i.p = add nuw nsw i64 %i.d, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.p, 512
  br i1 %exitcond.not.3, label %.preheader54, label %bb.b

.preheader54:                                     ; preds = %bb.b, %.preheader54
  %.sroa.0.0.idx57 = phi i64 [ %.sroa.0.0.add.1, %.preheader54 ], [ 0, %bb.b ] ; 3 uses
  %.sroa.7.056 = phi i64 [ %i.w, %.preheader54 ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.0.ptr58 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.idx57 ; 2 uses
  %i.q = or disjoint i64 %.sroa.7.056, 1          ; 2 uses
  %i.r = shl nuw nsw i64 %.sroa.7.056, 16
  %i.s = and i64 %i.r, 4026400768
  %i.t = or disjoint i64 %i.s, 268435512
  store i64 %.sroa.7.056, ptr %.sroa.0.0.ptr58, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr58, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.idx57 ; 2 uses
  %.sroa.0.0.ptr58.1 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.0.0.add.1 = add nuw nsw i64 %.sroa.0.0.idx57, 32
  %i.w = add nuw nsw i64 %.sroa.7.056, 2          ; 2 uses
  %i.x = shl nuw nsw i64 %i.q, 16
  %i.y = and i64 %i.x, 4026466304
  %i.z = or disjoint i64 %i.y, 268435512
  store i64 %i.q, ptr %.sroa.0.0.ptr58.1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.z, ptr %i.aa, align 8
  %exitcond63.1 = icmp eq i64 %i.w, 256
  br i1 %exitcond63.1, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs1BCiKJoB9mN_4fsst4fsst6SymbolEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.thread, label %.preheader54

bb.c:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs1BCiKJoB9mN_4fsst4fsst6SymbolEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi i64 [ 0, %bb.c ], [ %i.an, %bb.d ]  ; 5 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 4294967296, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 4294967296, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 4294967296, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i64 4294967296, ptr %i.am, align 8
  %i.an = add nuw nsw i64 %i.ab, 4                ; 2 uses
  %exitcond66.not.3 = icmp eq i64 %i.an, 1024
  br i1 %exitcond66.not.3, label %vector.body69, label %bb.d

vector.body69:                                    ; preds = %bb.d, %vector.body69
  %index70 = phi i64 [ %index.next71.3, %vector.body69 ], [ 0, %bb.d ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index70 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <8 x i16> splat (i16 511), ptr %i.ao, align 2
  store <8 x i16> splat (i16 511), ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index70 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store <8 x i16> splat (i16 511), ptr %i.ar, align 2
  store <8 x i16> splat (i16 511), ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index70 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store <8 x i16> splat (i16 511), ptr %i.au, align 2
  store <8 x i16> splat (i16 511), ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index70 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  store <8 x i16> splat (i16 511), ptr %i.ax, align 2
  store <8 x i16> splat (i16 511), ptr %i.ay, align 2
  %index.next71.3 = add nuw nsw i64 %index70, 64  ; 2 uses
  %i.az = icmp eq i64 %index.next71.3, 65536
  br i1 %i.az, label %vector.body74, label %vector.body69, !llvm.loop !24

vector.body74:                                    ; preds = %vector.body69, %vector.body74
  %index75 = phi i32 [ %index.next78.1, %vector.body74 ], [ 0, %vector.body69 ] ; 3 uses
  %vec.ind76 = phi <8 x i16> [ %vec.ind.next79.1, %vector.body74 ], [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.body69 ] ; 5 uses
  %step.add77 = add nuw <8 x i16> %vec.ind76, splat (i16 8)
  %i.ba = zext nneg i32 %index75 to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  %i.bc = and <8 x i16> %vec.ind76, splat (i16 255)
  %i.bd = and <8 x i16> %step.add77, splat (i16 255)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <8 x i16> %i.bc, ptr %i.bb, align 2
  store <8 x i16> %i.bd, ptr %i.be, align 2
  %vec.ind.next79 = add nuw <8 x i16> %vec.ind76, splat (i16 16)
  %step.add77.1 = add nuw <8 x i16> %vec.ind76, splat (i16 24)
  %i.bf = zext nneg i32 %index75 to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = and <8 x i16> %vec.ind.next79, splat (i16 255)
  %i.bj = and <8 x i16> %step.add77.1, splat (i16 255)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store <8 x i16> %i.bi, ptr %i.bh, align 2
  store <8 x i16> %i.bj, ptr %i.bk, align 2
  %index.next78.1 = add nuw nsw i32 %index75, 32  ; 2 uses
  %vec.ind.next79.1 = add nuw <8 x i16> %vec.ind76, splat (i16 32)
  %i.bl = icmp eq i32 %index.next78.1, 65536
  br i1 %i.bl, label %middle.block80, label %vector.body74, !llvm.loop !25

middle.block80:                                   ; preds = %vector.body74
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 156166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.bm, i8 0, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %0, ptr noundef nonnull align 2 dereferenceable(131072) %i.b, i64 131072, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 155648
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %i.bn, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155664
  store <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155680
  store <8 x i16> <i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23>, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155696
  store <8 x i16> <i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155712
  store <8 x i16> <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155728
  store <8 x i16> <i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47>, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155744
  store <8 x i16> <i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155760
  store <8 x i16> <i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155776
  store <8 x i16> <i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71>, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155792
  store <8 x i16> <i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79>, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155808
  store <8 x i16> <i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87>, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155824
  store <8 x i16> <i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95>, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155840
  store <8 x i16> <i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103>, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155856
  store <8 x i16> <i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111>, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155872
  store <8 x i16> <i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155888
  store <8 x i16> <i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127>, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155904
  store <8 x i16> <i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135>, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155920
  store <8 x i16> <i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143>, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155936
  store <8 x i16> <i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151>, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155952
  store <8 x i16> <i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159>, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155968
  store <8 x i16> <i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167>, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155984
  store <8 x i16> <i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175>, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156000
  store <8 x i16> <i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183>, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156016
  store <8 x i16> <i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191>, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156032
  store <8 x i16> <i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199>, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156048
  store <8 x i16> <i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207>, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156064
  store <8 x i16> <i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215>, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156080
  store <8 x i16> <i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223>, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156096
  store <8 x i16> <i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231>, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156112
  store <8 x i16> <i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239>, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156128
  store <8 x i16> <i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247>, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156144
  store <8 x i16> <i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255>, ptr %.sroa.33.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 147456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.bo, ptr noundef nonnull align 8 dereferenceable(8192) %i.a, i64 8192, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 131072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %i.bp, ptr noundef nonnull align 8 dereferenceable(16384) %i.c, i64 16384, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 156160
  store i16 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 156162
  store i16 256, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 156164
  store i16 512, ptr %i.bs, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs1BCiKJoB9mN_4fsst4fsst6SymbolEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.thread: ; preds = %.preheader54, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs1BCiKJoB9mN_4fsst4fsst6SymbolEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs1BCiKJoB9mN_4fsst4fsst6SymbolEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.thread ], [ 256, %.preheader54 ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i64 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 301924408, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 301924408, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i64 301924408, ptr %i.ca, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store i64 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store i64 301924408, ptr %i.cd, align 8
  %exitcond65.not.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond65.not.3, label %bb.c, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs1BCiKJoB9mN_4fsst4fsst6SymbolEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define void @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable5clear(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(156176) %0) unnamed_addr #3 !guid !28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 147456 ; 6 uses
  br label %bb.c

vector.body:                                      ; preds = %.preheader34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 155648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 155664
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %i.b, align 8
  store <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 155680
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 155696
  store <8 x i16> <i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23>, ptr %i.d, align 8
  store <8 x i16> <i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 155712
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 155728
  store <8 x i16> <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39>, ptr %i.f, align 8
  store <8 x i16> <i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47>, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 155744
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 155760
  store <8 x i16> <i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55>, ptr %i.h, align 8
  store <8 x i16> <i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 155776
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 155792
  store <8 x i16> <i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71>, ptr %i.j, align 8
  store <8 x i16> <i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 155808
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 155824
  store <8 x i16> <i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87>, ptr %i.l, align 8
  store <8 x i16> <i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95>, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 155840
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 155856
  store <8 x i16> <i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103>, ptr %i.n, align 8
  store <8 x i16> <i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 155872
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 155888
  store <8 x i16> <i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119>, ptr %i.p, align 8
  store <8 x i16> <i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127>, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 155904
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 155920
  store <8 x i16> <i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135>, ptr %i.r, align 8
  store <8 x i16> <i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 155936
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 155952
  store <8 x i16> <i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151>, ptr %i.t, align 8
  store <8 x i16> <i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159>, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 155968
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 155984
  store <8 x i16> <i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167>, ptr %i.v, align 8
  store <8 x i16> <i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175>, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 156000
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 156016
  store <8 x i16> <i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183>, ptr %i.x, align 8
  store <8 x i16> <i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191>, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156032
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156048
  store <8 x i16> <i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199>, ptr %i.z, align 8
  store <8 x i16> <i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207>, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156064
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156080
  store <8 x i16> <i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215>, ptr %i.ab, align 8
  store <8 x i16> <i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223>, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156096
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 156112
  store <8 x i16> <i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231>, ptr %i.ad, align 8
  store <8 x i16> <i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239>, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 156128
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 156144
  store <8 x i16> <i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247>, ptr %i.af, align 8
  store <8 x i16> <i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255>, ptr %i.ag, align 8
  br label %vector.body46

.preheader:                                       ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 156166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.ah, i8 0, i64 9, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156160
  store i16 0, ptr %i.ai, align 8
  ret void

bb.b:                                             ; preds = %bb.b, %middle.block52
  %.sroa.019.039 = phi i64 [ 0, %middle.block52 ], [ %i.ar, %bb.b ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.sroa.019.039 ; 2 uses
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 4294967296, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.sroa.019.039 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 4294967296, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.sroa.019.039 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i64 4294967296, ptr %i.aq, align 8
  %i.ar = add nuw nsw i64 %.sroa.019.039, 4       ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.sroa.019.039 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i64 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i64 4294967296, ptr %i.au, align 8
  %exitcond44.not.3 = icmp eq i64 %i.ar, 1024
  br i1 %exitcond44.not.3, label %.preheader, label %bb.b

vector.body46:                                    ; preds = %vector.body46, %vector.body
  %index47 = phi i32 [ 0, %vector.body ], [ %index.next50.1, %vector.body46 ] ; 3 uses
  %vec.ind48 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.body ], [ %vec.ind.next51.1, %vector.body46 ] ; 5 uses
  %step.add49 = add nuw <8 x i16> %vec.ind48, splat (i16 8)
  %i.av = zext nneg i32 %index47 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = and <8 x i16> %vec.ind48, splat (i16 255)
  %i.ay = and <8 x i16> %step.add49, splat (i16 255)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <8 x i16> %i.ax, ptr %i.aw, align 8
  store <8 x i16> %i.ay, ptr %i.az, align 8
  %vec.ind.next51 = add nuw <8 x i16> %vec.ind48, splat (i16 16)
  %step.add49.1 = add nuw <8 x i16> %vec.ind48, splat (i16 24)
  %i.ba = zext nneg i32 %index47 to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = and <8 x i16> %vec.ind.next51, splat (i16 255)
  %i.be = and <8 x i16> %step.add49.1, splat (i16 255)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store <8 x i16> %i.bd, ptr %i.bc, align 8
  store <8 x i16> %i.be, ptr %i.bf, align 8
  %index.next50.1 = add nuw nsw i32 %index47, 32  ; 2 uses
  %vec.ind.next51.1 = add nuw <8 x i16> %vec.ind48, splat (i16 32)
  %i.bg = icmp eq i32 %index.next50.1, 65536
  br i1 %i.bg, label %middle.block52, label %vector.body46, !llvm.loop !27

middle.block52:                                   ; preds = %vector.body46
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 4 uses
  br label %bb.b

.preheader34:                                     ; preds = %bb.c, %.preheader34
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader34 ], [ 256, %bb.c ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 301924408, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 301924408, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i64 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i64 301924408, ptr %i.bp, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i64 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  store i64 301924408, ptr %i.bs, align 8
  %exitcond42.not.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond42.not.3, label %vector.body, label %.preheader34

bb.c:                                             ; preds = %bb.c, %bb.a
  %.sroa.013.035 = phi i64 [ 0, %bb.a ], [ %i.ca, %bb.c ] ; 5 uses
  %i.bt = shl nuw nsw i64 %.sroa.013.035, 16
  %i.bu = add nuw nsw i64 %i.bt, 268435512
  %i.bv = or disjoint i64 %.sroa.013.035, 1       ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.013.035 ; 2 uses
  store i64 %.sroa.013.035, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bu, ptr %i.bx, align 8
  %i.by = shl nuw nsw i64 %i.bv, 16
  %i.bz = add nuw nsw i64 %i.by, 268435512
  %i.ca = add nuw nsw i64 %.sroa.013.035, 2       ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  store i64 %i.bv, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.bz, ptr %i.cc, align 8
  %exitcond.not.1 = icmp eq i64 %i.ca, 256
  br i1 %exitcond.not.1, label %.preheader34, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable8finalize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(156176) %0) unnamed_addr #1 !guid !29 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 11 uses
  %i.b = alloca [512 x i8], align 2               ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp ult i16 %i.d, 256
  br i1 %i.e, label %.split, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 49, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
  unreachable

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156166
  %i.g = load i8, ptr %i.f, align 2, !noundef !4
  %i.h = trunc nuw i16 %i.d to i8
  %i.i = sub i8 %i.h, %i.g
  store i8 %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156167
  %i.k = load i8, ptr %i.j, align 1, !noundef !4  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.k, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156168
  %i.n = load i8, ptr %i.m, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = add i8 %i.k, %i.n                        ; 2 uses
  store i8 %i.p, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156169
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = add i8 %i.p, %i.r                        ; 2 uses
  store i8 %i.t, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 156170
  %i.v = load i8, ptr %i.u, align 2, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.x = add i8 %i.t, %i.v                        ; 2 uses
  store i8 %i.x, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 156171
  %i.z = load i8, ptr %i.y, align 1, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ab = add i8 %i.x, %i.z                       ; 2 uses
  store i8 %i.ab, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156172
  %i.ad = load i8, ptr %i.ac, align 4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.af = add i8 %i.ab, %i.ad
  store i8 %i.af, ptr %i.ae, align 1
  %.not94 = icmp eq i16 %i.d, 0
  br i1 %.not94, label %.preheader64, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 147456 ; 3 uses
  %wide.trip.count104 = zext nneg i16 %i.d to i64
  br label %bb.c

.preheader64:                                     ; preds = %bb.z, %.split
  %.sroa.06.0.lcssa = phi i16 [ 0, %.split ], [ %.sroa.06.2118, %bb.z ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 155648 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv102 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next103, %bb.z ] ; 5 uses
  %.sroa.06.090 = phi i16 [ 0, %.lr.ph ], [ %.sroa.06.2118, %bb.z ] ; 3 uses
  %.sroa.09.089 = phi i8 [ %i.k, %.lr.ph ], [ %.sroa.09.2117, %bb.z ] ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv102 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4096
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4104
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.an = lshr i64 %i.am, 28                      ; 2 uses
  %i.ao = and i64 %i.am, 1152921504338411520
  %i.ap = icmp eq i64 %i.ao, 536870912
  br i1 %i.ap, label %bb.r, label %bb.s

bb.d:                                             ; preds = %bb.p, %.preheader64
  %.sroa.035.091 = phi i64 [ 0, %.preheader64 ], [ %i.bx, %bb.p ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.sroa.035.091 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 4, !noundef !4 ; 2 uses
  %i.as = and i16 %i.ar, 256
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %bb.n, label %bb.q

.preheader:                                       ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 131072
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 147456
  br label %bb.f

.preheader63:                                     ; preds = %bb.p, %bb.l
  %.sroa.037.092 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.p ] ; 3 uses
  %i.av = add nuw nsw i64 %.sroa.037.092, 1       ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.037.092 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !noundef !4 ; 2 uses
  %i.ay = and i16 %i.ax, 511
  %i.az = icmp samesign ugt i16 %i.ay, 256
  br i1 %i.az, label %bb.m, label %bb.k

bb.e:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 156164
  store i16 %.sroa.06.0.lcssa, ptr %i.ba, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %.preheader, %bb.g
  %.sroa.039.093 = phi i64 [ 0, %.preheader ], [ %i.bb, %bb.g ] ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.039.093, 1       ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.sroa.039.093 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 4294967296
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.j
  %exitcond108.not = icmp eq i64 %i.bb, 1024
  br i1 %exitcond108.not, label %bb.e, label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.bg = lshr i64 %i.be, 16
  %i.bh = and i64 %i.bg, 255
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !noundef !4 ; 2 uses
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %i.bl = icmp ult i16 %i.bj, 512
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bk, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bk
  %i.bn = load <2 x i64>, ptr %i.bm, align 8
  store <2 x i64> %i.bn, ptr %i.bc, align 8
  br label %bb.g

bb.k:                                             ; preds = %.preheader63
  %i.bo = and i64 %.sroa.037.092, 255
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !noundef !4
  %i.br = or i16 %i.bq, 4096
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %storemerge = phi i16 [ %i.br, %bb.k ], [ %i.bw, %bb.m ]
  store i16 %storemerge, ptr %i.aw, align 2
  %exitcond107.not = icmp eq i64 %i.av, 65536
  br i1 %exitcond107.not, label %.preheader, label %.preheader63

bb.m:                                             ; preds = %.preheader63
  %i.bs = and i16 %i.ax, 255
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !noundef !4
  %i.bw = or i16 %i.bv, 8192
  br label %bb.l

bb.n:                                             ; preds = %bb.d, %bb.q
  %storemerge61 = phi i16 [ %i.cl, %bb.q ], [ 4607, %bb.d ]
  store i16 %storemerge61, ptr %i.aq, align 4
  %i.bx = add nuw nsw i64 %.sroa.035.091, 2       ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.sroa.035.091
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !noundef !4 ; 2 uses
  %i.cb = and i16 %i.ca, 256
  %.not.1 = icmp eq i16 %i.cb, 0
  br i1 %.not.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = and i16 %i.ca, 255
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !noundef !4
  %i.cg = or i16 %i.cf, 4096
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge61.1 = phi i16 [ %i.cg, %bb.o ], [ 4607, %bb.n ]
  store i16 %storemerge61.1, ptr %i.bz, align 2
  %exitcond106.not.1 = icmp eq i64 %i.bx, 256
  br i1 %exitcond106.not.1, label %.preheader63, label %bb.d

bb.q:                                             ; preds = %bb.d
  %i.ch = and i16 %i.ar, 255
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !noundef !4
  %i.cl = or i16 %i.ck, 4096
  br label %bb.n

bb.r:                                             ; preds = %bb.c
  %i.cm = load i16, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not62 = icmp eq i16 %i.cm, 0
  br i1 %.not62, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.c, %bb.r
  %i.cn = add nuw nsw i64 %i.an, 4294967295
  %i.co = and i64 %i.cn, 4294967295               ; 3 uses
  %i.cp = icmp samesign ult i64 %i.co, 8
  br i1 %i.cp, label %.thread, label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cq = trunc i64 %i.ak to i16
  %wide.trip.count = zext i16 %i.cm to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.v
  %indvars.iv = phi i64 [ 0, %bb.t ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %.sroa.019.086 = phi i8 [ 0, %bb.t ], [ %spec.select, %bb.v ]
  %i.cr = add nuw nsw i64 %indvars.iv, 256        ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 256
  br i1 %exitcond.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.cr ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !4
  %i.cw = icmp ne i64 %indvars.iv, %indvars.iv102
  %i.cx = lshr i64 %i.cv, 28
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp ugt i32 %i.cy, 2
  %or.cond = and i1 %i.cw, %i.cz
  %i.da = trunc i64 %i.ct to i16
  %i.db = icmp eq i16 %i.cq, %i.da
  %or.cond5 = and i1 %i.db, %or.cond
  %spec.select = select i1 %or.cond5, i8 1, i8 %.sroa.019.086 ; 3 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond101.not, label %bb.y, label %bb.u

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
  unreachable

.thread:                                          ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !noundef !4 ; 3 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv102
  %i.df = zext i8 %i.dd to i16
  store i16 %i.df, ptr %i.de, align 2
  %i.dg = add i8 %i.dd, 1
  store i8 %i.dg, ptr %i.dc, align 1
  %i.dh = zext i8 %i.dd to i64
  br label %bb.z

bb.x:                                             ; preds = %bb.s
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.di = trunc nuw i8 %spec.select to i1         ; 2 uses
  %i.dj = zext nneg i8 %spec.select to i16
  %.sroa.06.1 = add i16 %.sroa.06.090, %i.dj
  %i.dk = add i8 %.sroa.09.089, -1                ; 2 uses
  %.sroa.09.1 = select i1 %i.di, i8 %.sroa.09.089, i8 %i.dk
  %i.dl = zext i8 %i.dk to i16
  %.sroa.022.0 = select i1 %i.di, i16 %.sroa.06.090, i16 %i.dl ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv102
  store i16 %.sroa.022.0, ptr %i.dm, align 2
  %i.dn = zext i16 %.sroa.022.0 to i64            ; 2 uses
  %i.do = icmp ult i16 %.sroa.022.0, 512
  br i1 %i.do, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread, %bb.y
  %i.dp = phi i64 [ %i.dh, %.thread ], [ %i.dn, %bb.y ] ; 2 uses
  %.sroa.06.2118 = phi i16 [ %.sroa.06.090, %.thread ], [ %.sroa.06.1, %bb.y ] ; 2 uses
  %.sroa.09.2117 = phi i8 [ %.sroa.09.089, %.thread ], [ %.sroa.09.1, %bb.y ]
  %i.dq = and i64 %i.an, 4294967295               ; 2 uses
  %i.dr = shl nuw nsw i64 %i.dq, 28
  %i.ds = shl nuw nsw i64 %i.dp, 16
  %i.dt = or disjoint i64 %i.ds, %i.dr
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 8, i64 %i.dq)
  %i.dv = shl nuw nsw i64 %i.du, 3
  %i.dw = or disjoint i64 %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.dp ; 2 uses
  store i64 %i.ak, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.dw, ptr %i.dy, align 8
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count104
  br i1 %exitcond105.not, label %.preheader64, label %bb.c

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.dn, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !53 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !54
  %i.b = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !54 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16, !noalias !55
  unreachable

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !56
  %i.d = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !56 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2

bb.c:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2: ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !58
  %i.g = tail call noundef align 8 dereferenceable_or_null(12288) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775807) 12288, i64 noundef range(i64 2, 9) 8) #15, !noalias !58 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i

bb.e:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 12288) #16
          to label %.noexc.i unwind label %bb.g, !noalias !57

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i: ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2
  store i64 512, ptr %i.a, align 8, !noalias !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i
  %.sroa.0.026.i.i = phi ptr [ %i.n, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ %i.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ] ; 6 uses
  %.sroa.03.025.i.i = phi i64 [ %i.m, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ 1, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ]
  %storemerge24.i.i = phi i64 [ %i.o, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ] ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !60
  %i.k = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !60 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i

bb.f:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16
          to label %.noexc16.i.i unwind label %.body.i, !noalias !61

.noexc16.i.i:                                     ; preds = %bb.f
  unreachable

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %i.k, ptr noundef nonnull readonly align 2 dereferenceable(1024) %i.d, i64 1024, i1 false), !noalias !62
  %i.m = add nuw nsw i64 %.sroa.03.025.i.i, 1     ; 2 uses
  store i64 512, ptr %.sroa.0.026.i.i, align 8, !noalias !61
  %.sroa.521.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 8
  store ptr %i.k, ptr %.sroa.521.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !61
  %.sroa.7.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 16
  store i64 512, ptr %.sroa.7.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !61
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 24 ; 2 uses
  %i.o = add nuw nsw i64 %storemerge24.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %i.m, 512
  br i1 %exitcond.not.i.i, label %bb.h, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i

.body.i:                                          ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge24.i.i, ptr %i.j, align 8, !alias.scope !59, !noalias !57
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15, !noalias !61
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_tEEECs1BCiKJoB9mN_4fsst(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17, !noalias !57
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15, !noalias !57
  br label %bb.i

bb.h:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i
  store i64 512, ptr %i.n, align 8, !noalias !63
  %.sroa.5.0..us-phi27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 32
  store ptr %i.d, ptr %.sroa.5.0..us-phi27.i.sroa_idx.i, align 8, !noalias !63
  %.sroa.7.0..us-phi27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 40
  store i64 512, ptr %.sroa.7.0..us-phi27.i.sroa_idx.i, align 8, !noalias !63
  store i64 512, ptr %i.j, align 8, !alias.scope !59, !noalias !57
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57
  store i64 512, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 512, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %bb.d, %bb.g, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.p, %.body.i ], [ %i.q, %bb.g ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtCs1BCiKJoB9mN_4fsst4fsst28missing_escape_payload_error() unnamed_addr #1 !guid !64 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 62)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs1BCiKJoB9mN_4fsst4fsstNtB2_6SymbolNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !65 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 34 uses
  %i.f = alloca [4 x i8], align 4                 ; 34 uses
  %i.g = load i64, ptr %0, align 8, !noundef !4   ; 8 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = trunc i64 %i.g to i32
  %i.m = lshr i32 %i.l, 24
  %.sroa.8.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %.sroa.9.0.extract.shift = lshr i64 %i.g, 40
  %.sroa.9.0.extract.trunc = trunc nuw nsw i64 %.sroa.9.0.extract.shift to i32
  %.sroa.10.0.extract.shift = lshr i64 %i.g, 48
  %.sroa.10.0.extract.trunc = trunc nuw nsw i64 %.sroa.10.0.extract.shift to i32
  %.sroa.11.0.extract.shift = lshr i64 %i.g, 56
  %.sroa.11.0.extract.trunc = trunc nuw nsw i64 %.sroa.11.0.extract.shift to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = lshr i64 %i.o, 28                        ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %.pre = load ptr, ptr %1, align 8               ; 10 uses
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre65 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !8, !noundef !4 ; 16 uses
  %wide.trip.count = and i64 %i.p, 4294967295     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = and i32 %.sroa.0.0.extract.trunc, 255
  store i32 %i.t, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.u, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %.._crit_edge_crit_edge
  %i.v = phi ptr [ %.pre65, %.._crit_edge_crit_edge ], [ %i.s, %bb.t ], [ %i.s, %bb.r ], [ %i.s, %bb.p ], [ %i.s, %bb.n ], [ %i.s, %bb.l ], [ %i.s, %bb.j ], [ %i.s, %bb.h ], [ %i.s, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !nonnull !4
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1)
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 65535
  store i32 %i.aa, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = lshr i64 %i.o, 16
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = and i16 %i.ac, 511
  store i16 %i.ad, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.q, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ae, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.af, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.ag, %bb.b ], [ true, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
  unreachable

bb.e:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond63.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = and i32 %i.i, 255
  store i32 %i.ah, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ai = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ai, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.1.not = icmp eq i64 %wide.trip.count, 2
  br i1 %exitcond63.1.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aj = and i32 %i.k, 255
  store i32 %i.aj, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ak, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.2.not = icmp eq i64 %wide.trip.count, 3
  br i1 %exitcond63.2.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.m, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.al, label %bb.e, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.3.not = icmp eq i64 %wide.trip.count, 4
  br i1 %exitcond63.3.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.am = and i32 %.sroa.8.0.extract.trunc, 255
  store i32 %i.am, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.an = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.an, label %bb.e, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.4.not = icmp eq i64 %wide.trip.count, 5
  br i1 %exitcond63.4.not, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = and i32 %.sroa.9.0.extract.trunc, 255
  store i32 %i.ao, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ap, label %bb.e, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.5.not = icmp eq i64 %wide.trip.count, 6
  br i1 %exitcond63.5.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = and i32 %.sroa.10.0.extract.trunc, 255
  store i32 %i.aq, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ar = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ar, label %bb.e, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.6.not = icmp eq i64 %wide.trip.count, 7
  br i1 %exitcond63.6.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.11.0.extract.trunc, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.as = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.as, label %bb.e, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.7.not = icmp eq i64 %wide.trip.count, 8
  br i1 %exitcond63.7.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTableNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(156176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !66 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 39 uses
  %i.b = alloca [2 x i8], align 2                 ; 36 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 37)
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @21, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.p = zext i16 %i.o to i64
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 147456
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.p, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.s, ptr %i.c, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.t = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @22, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.t, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.035.097 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.p ] ; 4 uses
  %i.u = add nuw nsw i64 %.sroa.035.097, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.035.097, ptr %i.e, align 8
  %exitcond.not = icmp eq i64 %.sroa.035.097, 512
  br i1 %exitcond.not, label %bb.o, label %bb.n

bb.e:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 156166
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 9 uses
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.v, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.x = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.x, label %.loopexit.sink.split, label %bb.f

.loopexit.sink.split:                             ; preds = %bb.m, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.ph = phi i1 [ true, %bb.e ], [ %i.an, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split, %._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ true, %._crit_edge ], [ true, %bb.b ], [ true, %bb.n ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 1, ptr %i.b, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 156167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.y, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.z, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 2, ptr %i.b, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.aa, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ab = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 3, ptr %i.b, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ac, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ad = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.ad, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 4, ptr %i.b, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 156170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ae, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.af = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.af, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 5, ptr %i.b, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 156171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ag, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ah = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.ah, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 6, ptr %i.b, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ai, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.aj = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.aj, label %.loopexit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 7, ptr %i.b, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 156173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ak, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.al, label %.loopexit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 8, ptr %i.b, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 156174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.am, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.an = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.035.097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.ao, ptr %i.r, align 8
  store ptr @_RNvXNtCs1BCiKJoB9mN_4fsst4fsstNtB2_6SymbolNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @25, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.ap, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.d
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 512, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %exitcond101.not = icmp eq i64 %i.u, %i.p
  br i1 %exitcond101.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTableNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(156176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !67 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 39 uses
  %i.b = alloca [2 x i8], align 2                 ; 36 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 38)
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @21, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 147456
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = add nuw nsw i64 %i.p, 255
  br label %bb.d

._crit_edge:                                      ; preds = %bb.p, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.t, ptr %i.c, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @22, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.u, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.035.097 = phi i64 [ 256, %.lr.ph ], [ %i.v, %bb.p ] ; 5 uses
  %i.v = add nuw nsw i64 %.sroa.035.097, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.035.097, ptr %i.e, align 8
  %exitcond.not = icmp eq i64 %.sroa.035.097, 512
  br i1 %exitcond.not, label %bb.o, label %bb.n

bb.e:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156166
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 9 uses
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.w, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.y = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.y, label %.loopexit.sink.split, label %bb.f

.loopexit.sink.split:                             ; preds = %bb.m, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.ph = phi i1 [ true, %bb.e ], [ %i.ao, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split, %._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ true, %._crit_edge ], [ true, %bb.b ], [ true, %bb.n ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 1, ptr %i.b, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.z, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.aa = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 2, ptr %i.b, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ab, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ac = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ac, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 3, ptr %i.b, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ad, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ae = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ae, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 4, ptr %i.b, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 156170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.af, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ag, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 5, ptr %i.b, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 156171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ah, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ai = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ai, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 6, ptr %i.b, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 156172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.aj, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ak, label %.loopexit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 7, ptr %i.b, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 156173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.al, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.am = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.am, label %.loopexit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 8, ptr %i.b, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 156174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.an, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ao = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.035.097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.ap, ptr %i.r, align 8
  store ptr @_RNvXNtCs1BCiKJoB9mN_4fsst4fsstNtB2_6SymbolNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.aq = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @25, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.aq, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.d
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 512, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %exitcond101.not = icmp eq i64 %.sroa.035.097, %i.s
  br i1 %exitcond101.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs1BCiKJoB9mN_4fsst4fsstNtB4_6SymbolNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !68 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 34 uses
  %i.f = alloca [4 x i8], align 4                 ; 34 uses
  %i.g = load i64, ptr %0, align 8, !noundef !4   ; 8 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = trunc i64 %i.g to i32
  %i.m = lshr i32 %i.l, 24
  %.sroa.8.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %.sroa.9.0.extract.shift = lshr i64 %i.g, 40
  %.sroa.9.0.extract.trunc = trunc nuw nsw i64 %.sroa.9.0.extract.shift to i32
  %.sroa.10.0.extract.shift = lshr i64 %i.g, 48
  %.sroa.10.0.extract.trunc = trunc nuw nsw i64 %.sroa.10.0.extract.shift to i32
  %.sroa.11.0.extract.shift = lshr i64 %i.g, 56
  %.sroa.11.0.extract.trunc = trunc nuw nsw i64 %.sroa.11.0.extract.shift to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = lshr i64 %i.o, 28                        ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %.pre = load ptr, ptr %1, align 8               ; 10 uses
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre65 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !8, !noundef !4 ; 16 uses
  %wide.trip.count = and i64 %i.p, 4294967295     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = and i32 %.sroa.0.0.extract.trunc, 255
  store i32 %i.t, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.u, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %.._crit_edge_crit_edge
  %i.v = phi ptr [ %.pre65, %.._crit_edge_crit_edge ], [ %i.s, %bb.t ], [ %i.s, %bb.r ], [ %i.s, %bb.p ], [ %i.s, %bb.n ], [ %i.s, %bb.l ], [ %i.s, %bb.j ], [ %i.s, %bb.h ], [ %i.s, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !nonnull !4
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1)
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 65535
  store i32 %i.aa, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = lshr i64 %i.o, 16
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = and i16 %i.ac, 511
  store i16 %i.ad, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.q, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ae, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.af, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.ag, %bb.b ], [ true, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #16
  unreachable

bb.e:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond63.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = and i32 %i.i, 255
  store i32 %i.ah, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ai = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ai, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.1.not = icmp eq i64 %wide.trip.count, 2
  br i1 %exitcond63.1.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aj = and i32 %i.k, 255
  store i32 %i.aj, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ak, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.2.not = icmp eq i64 %wide.trip.count, 3
  br i1 %exitcond63.2.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.m, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.al, label %bb.e, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.3.not = icmp eq i64 %wide.trip.count, 4
  br i1 %exitcond63.3.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.am = and i32 %.sroa.8.0.extract.trunc, 255
  store i32 %i.am, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.an = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.an, label %bb.e, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.4.not = icmp eq i64 %wide.trip.count, 5
  br i1 %exitcond63.4.not, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = and i32 %.sroa.9.0.extract.trunc, 255
  store i32 %i.ao, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ap, label %bb.e, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.5.not = icmp eq i64 %wide.trip.count, 6
  br i1 %exitcond63.5.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = and i32 %.sroa.10.0.extract.trunc, 255
  store i32 %i.aq, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ar = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ar, label %bb.e, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.6.not = icmp eq i64 %wide.trip.count, 7
  br i1 %exitcond63.6.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.11.0.extract.trunc, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.as = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.as, label %bb.e, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.7.not = icmp eq i64 %wide.trip.count, 8
  br i1 %exitcond63.7.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{i64 7556186079003085652}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{i64 8}
!9 = distinct !{!9, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst"}
!10 = distinct !{!10, !9, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst: argument 0"}
!11 = !{i64 4136234520114487543}
!12 = !{!10}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = distinct !{!14, i1 true, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst"}
!15 = distinct !{!15, !14, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst: argument 1"}
!16 = distinct !{!16, !14, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst: argument 0"}
!17 = !{i64 -483396544718306920}
!18 = !{!16, !15}
!19 = distinct !{!19, i1 true, !"_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert"}
!20 = distinct !{!20, !19, !"_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert: argument 0"}
!21 = !{i64 -1817050754695980385}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!20}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !6, !7}
!26 = !{i64 7781365566608791045}
!27 = distinct !{!27, !6, !7}
!28 = !{i64 -724976512270260974}
!29 = !{i64 1592822818010911456}
!30 = distinct !{!30, i1 true, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!31 = distinct !{!31, !30, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!33 = distinct !{!33, !32, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!34 = distinct !{!34, i1 true, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!35 = distinct !{!35, !34, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!37 = distinct !{!37, !36, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!38 = distinct !{!38, i1 true, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!39 = distinct !{!39, !38, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 1"}
!40 = distinct !{!40, !38, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!42 = distinct !{!42, !41, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst"}
!44 = distinct !{!44, !43, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst: argument 0"}
!45 = distinct !{!45, !43, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst: argument 1"}
!46 = distinct !{!46, i1 true, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst"}
!47 = distinct !{!47, !46, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst: argument 0"}
!48 = distinct !{!48, i1 true, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!49 = distinct !{!49, !48, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 1"}
!50 = distinct !{!50, !48, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!51 = distinct !{!51, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!52 = distinct !{!52, !51, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!53 = !{i64 8612714466339471358}
!54 = !{!33, !31}
!55 = !{!31}
!56 = !{!37, !35}
!57 = !{!40, !39}
!58 = !{!42, !40, !39}
!59 = !{!44}
!60 = !{!52, !50, !49, !47, !44, !45, !40, !39}
!61 = !{!44, !45, !40, !39}
!62 = !{!50, !47, !44, !45, !40, !39}
!63 = !{!44, !40, !39}
!64 = !{i64 -5389841347276881315}
!65 = !{i64 8785960860359433409}
!66 = !{i64 1339286145353300594}
!67 = !{i64 5259740240000970845}
!68 = !{i64 8717846504239000886}
end_hunk_0
