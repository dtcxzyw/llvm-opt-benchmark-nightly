Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.5?download=true
inline.NumInlined: 144
inline.NumDeleted: 112
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/git/checkouts/fluent-rs-d2e3265f5591e5e5/cf712bc/fluent-bundle/src/args.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Z\00\00\00\1E\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs4RW8js5ES7g_4fish, ptr @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0Cs4RW8js5ES7g_4fish }>, align 8
@3 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/sync/once.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\00\14\00\00\00" }>, align 8
@5 = private unnamed_addr constant [95 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/collections/vec_deque/mod.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"^\00\00\00\00\00\00\00\0B\07\00\00$\00\00\00" }>, align 8
@7 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1/src/raw.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"`\00\00\00\00\00\00\00K\0A\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@10 = private unnamed_addr constant [17 x i8] c"src/wutil/mod.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\10\00\00\00\00\00\00\00\84\01\00\009\00\00\00" }>, align 8
@12 = private unnamed_addr constant [82 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/sync/once_lock.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"Q\00\00\00\00\00\00\005\01\00\004\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"`\00\00\00\00\00\00\00\DE\00\00\004\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"`\00\00\00\00\00\00\00\DF\00\00\00+\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"`\00\00\00\00\00\00\00\E3\00\00\00\12\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"`\00\00\00\00\00\00\00[\0A\00\00\09\00\00\00" }>, align 8
@18 = private unnamed_addr constant [5 x i8] c"Error", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs4RW8js5ES7g_4fish }>, align 8
@20 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@21 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @20, [24 x i8] zeroinitializer }>, align 8
@22 = private unnamed_addr constant [29 x i8] c"crates/widestring/src/lib.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"\1C\00\00\00\00\00\00\00P\03\00\00\0D\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  switch i64 %i.g, label %.lr.ph.i.i [
    i64 0, label %bb.r
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph.i.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %i.e, i64 %.sroa.05.0.lcssa.i.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !45, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !45, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.i = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !46, !noalias !47 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  %i.l = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.k, i64 %i.l, i64 %i.j ; 2 uses
  %i.m = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.o = add nuw nsw i64 %i.n, %.sroa.05.024.i.i  ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.g
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %i.e, i64 %i.o ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !50, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !50, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !51, !noalias !52 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.w = select i1 %i.v, i64 %.sroa.05.024.i.i, i64 %i.o, !unpredictable !5 ; 2 uses
  %i.x = sub nuw nsw i64 %.sroa.01.025.i.i, %i.n  ; 2 uses
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.z = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 3 uses
  %i.aa = icmp ule i64 %i.z, %i.g
  tail call void @llvm.assume(i1 %i.aa)
  %4 = icmp samesign ult i64 %i.z, %i.g
  br label %bb.r

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx34, align 8
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx36, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.ab = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.g
  br i1 %i.ab, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.h, align 8, !range !6, !alias.scope !53, !noundef !5
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.h)
          to label %.body.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.ae, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ah) #20
          to label %bb.k unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit unwind label %bb.m

bb.i:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.j:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21
          to label %bb.l unwind label %bb.o

bb.k:                                             ; preds = %bb.m, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  br label %.thread

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit
  ret void

bb.o:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(120) %i.b) #20
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %.thread unwind label %bb.p

bb.r:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph = phi i1 [ %4, %bb.b ], [ false, %bb.a ]
  %.sroa.4.0.i.i.ph.a = phi i64 [ %i.z, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ao, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  store i64 -1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.539.0..sroa_idx, align 8
  %i.ap = icmp ult i64 %i.g, 64051194700380388
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %0, align 8, !range !7, !alias.scope !54, !noundef !5
  %i.ar = icmp eq i64 %i.g, %i.aq
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEE8grow_oneCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %._crit_edge unwind label %bb.u, !noalias !55

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !54
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.r
  %i.as = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.r ]
  %i.at = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %.sroa.4.0.i.i.ph.a ; 3 uses
  br i1 %.sroa.4.0.i.i.ph, label %bb.v, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.a) #20
          to label %.thread unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.aw = sub nuw nsw i64 %i.g, %.sroa.4.0.i.i.ph.a
  %i.ax = mul nuw nsw i64 %i.aw, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.at, i64 %i.ax, i1 false), !noalias !55
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.at, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  %i.az = add nuw nsw i64 %i.g, 1
  store i64 %i.az, ptr %i.f, align 8, !alias.scope !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

.thread:                                          ; preds = %bb.q, %bb.k, %bb.u
  %.pn11.pn18 = phi { ptr, i32 } [ %i.am, %bb.q ], [ %eh.lpad-body, %bb.k ], [ %i.au, %bb.u ]
  resume { ptr, i32 } %.pn11.pn18
}

; Function Attrs: cold minsize nonlazybind optsize uwtable
define hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs4RW8js5ES7g_4fish(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 8, !noalias !58
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs4RW8js5ES7g_4fish.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58
  store ptr %1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58
  store ptr %i.c, ptr %i.b, align 8, !noalias !58
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs4RW8js5ES7g_4fish.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs4RW8js5ES7g_4fish.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error13append_to_msgcECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef nonnull align 8 ptr @_RNvMs1_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6to_mutCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc unwind label %bb.c     ; 5 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %.noexc
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !67, !noundef !5 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !7, !alias.scope !67, !noundef !5
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.noexc1
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #20
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc1, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !67, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c
  store i32 %2, ptr %i.i, align 4
  %i.j = add i64 %i.c, 1
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1J_11wait_handle10WaitHandleEEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = icmp eq i64 %i.b, -1
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %3, -1                           ; 2 uses
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.b, 1
  %i.h = mul nuw i64 %i.g, %2                     ; 2 uses
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.h
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.b, -18
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !70
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.b, 17
  %i.o = add i64 %i.n, %i.l                       ; 4 uses
  %i.p = icmp uge i64 %i.o, %i.l
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp slt i64 %i.e, 0
  br i1 %i.q, label %bb.h, label %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !70
  unreachable

_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.f
  %i.r = sub nuw i64 -9223372036854775808, %3
  %i.s = icmp ule i64 %i.o, %i.r
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = icmp eq i64 %i.o, 0
  br i1 %i.t, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !70
  unreachable

bb.i:                                             ; preds = %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.u = sub nsw i64 0, %i.l
  %i.v = getelementptr inbounds i8, ptr %.val, i64 %i.u
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish.exit

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish.exit: ; preds = %bb.i, %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs4RW8js5ES7g_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish:bb.a
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !89, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit

bb.n:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !89, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #24
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs4RW8js5ES7g_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !92, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs4RW8js5ES7g_4fish.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs4RW8js5ES7g_4fish.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !95, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(120) %i.f) #20
          to label %bb.g unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(120) %i.g)
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [512 x i8], align 1               ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.g, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 512, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = call { i64, i8 } @_RNvMNtCs8frGy5WneL6_4fish6signalNtB2_10SigChecker17new_sighupintterm() ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1
  store i64 %i.j, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.g, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.h, ptr %i.r, align 8
  %i.s = call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18str2bytes_callbackRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdBR_Es_0ECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.b, label %_RNCINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0Cs4RW8js5ES7g_4fish.exit.thread

_RNCINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0Cs4RW8js5ES7g_4fish.exit.thread: ; preds = %bb.c, %bb.a
  %.sroa.01.0.in6 = phi i64 [ %spec.select, %bb.c ], [ 0, %bb.a ]
  %i.t = phi i64 [ %spec.select7, %bb.c ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.01.0.in6, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %i.t, 1
  ret { i64, i64 } %i.v

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.w = load i64, ptr %i.f, align 8, !alias.scope !101, !noundef !5 ; 3 uses
  %i.x = icmp ult i64 %i.w, 513
  br i1 %i.x, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.y = load i32, ptr %.val, align 4, !noalias !103, !noundef !5
  %i.z = call noundef zeroext i1 @_RNvNvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fd8do_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.w), !noalias !101 ; 2 uses
  %i.aa = load i64, ptr %i.d, align 8
  %spec.select = zext i1 %i.z to i64
  %spec.select7 = select i1 %i.z, i64 %i.aa, i64 undef
  br label %_RNCINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0Cs4RW8js5ES7g_4fish.exit.thread

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef 512, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !noalias !103
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs4RW8js5ES7g_4fish(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !104
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !105
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish13throwing_main0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callB1n_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB49_3VecB1n_E14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNCNvCs4RW8js5ES7g_4fish13throwing_main0NCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtB2y_3MapBF_B3a_EE0E0E0EB3e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !116

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !117
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNCNvCs4RW8js5ES7g_4fish13throwing_main0NCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtB2y_3MapBF_B3a_EE0E0E0EB3e_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !116
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNCNvCs4RW8js5ES7g_4fish13throwing_main0NCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtB2y_3MapBF_B3a_EE0E0E0EB3e_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !116
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish13throwing_mains_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callB1n_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4b_3VecB1n_E14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNCNvCs4RW8js5ES7g_4fish13throwing_mains_0NCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4q_3VecBQ_E14extend_trustedINtB2y_3MapBF_B3a_EE0E0E0EB3e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !128

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !129
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNCNvCs4RW8js5ES7g_4fish13throwing_mains_0NCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4q_3VecBQ_E14extend_trustedINtB2y_3MapBF_B3a_EE0E0E0EB3e_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !128
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNCNvCs4RW8js5ES7g_4fish13throwing_mains_0NCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4q_3VecBQ_E14extend_trustedINtB2y_3MapBF_B3a_EE0E0E0EB3e_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !128
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish14fish_parse_opt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2U_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4v_3VecB3X_E14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !140, !nonnull !5, !noundef !5
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !140, !noundef !5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.k, align 8, !noalias !141, !captures !142
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val16.i, ptr %i.l, align 8, !noalias !143
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val15.i.1 = load ptr, ptr %i.n, align 8, !noalias !140, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val16.i.1 = load i64, ptr %i.o, align 8, !noalias !140, !noundef !5
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val15.i.1, ptr %i.q, align 8, !noalias !141, !captures !142
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val16.i.1, ptr %i.r, align 8, !noalias !143
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val15.i.epil = load ptr, ptr %i.v, align 8, !noalias !140, !nonnull !5, !noundef !5
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val16.i.epil = load i64, ptr %i.w, align 8, !noalias !140, !noundef !5
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.x, align 8, !noalias !141, !captures !142
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.epil, ptr %i.y, align 8, !noalias !143
  %i.z = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvCs4RW8js5ES7g_4fish14fish_parse_opt0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3z_.exit.loopexit.unr-lcssa, %bb.a
end_hunk_1
