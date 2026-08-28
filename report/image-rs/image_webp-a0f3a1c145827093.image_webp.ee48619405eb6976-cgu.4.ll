Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.4?download=true
inline.NumInlined: 129
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCsksn9slvsHfS_10image_webp }>, align 8
@1 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/image-webp-0.2.4/src/vp8_arithmetic_decoder.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"s\00\00\00\00\00\00\00m\01\00\00\18\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"s\00\00\00\00\00\00\00Z\00\00\00\18\00\00\00" }>, align 8
@4 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@5 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@6 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@7 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@8 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@9 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsksn9slvsHfS_10image_webp = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsksn9slvsHfS_10image_webp.37 = private unnamed_addr constant [6 x ptr] [ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecAhj4_EECsksn9slvsHfS_10image_webp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecAhj4_EECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable7ipnsortTjmENCINvMB6_SBT_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1D_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val5 = load i32, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val6 = load i32, ptr %i.c, align 8, !noundef !6
  %i.d = icmp ult i32 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val3 = load i32, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.g = icmp ult i32 %.val3, %.val4
  br i1 %i.g, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val = load i32, ptr %i.j, align 8, !noundef !6 ; 2 uses
  %i.k = icmp ult i32 %.val, %.val2
  br i1 %i.k, label %bb.d, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.l = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.l, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit.thread, label %.lr.ph17

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.n, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit.thread, label %bb.e

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit
  br i1 %i.d, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit
  %i.o = or i64 %1, 1
  %i.p = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 1
  %i.s = xor i32 %i.r, 126
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTjmENCINvMB8_SB17_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1S_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.s, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i
  %3 = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i ], [ %i.as, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod45 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.t = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.v = getelementptr [16 x i8], ptr %i.ab, i64 %i.t ; 3 uses
  %i.w = load i64, ptr %i.u, align 8, !alias.scope !7, !noalias !12, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !7, !noalias !12, !noundef !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !alias.scope !14
  store i64 %i.w, ptr %i.v, align 8, !alias.scope !15, !noalias !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.y, ptr %i.z, align 8, !alias.scope !15, !noalias !16
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit.thread, %bb.e
  ret void

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTjmENCINvMB6_SB12_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1N_.exit.thread
  %i.aa = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i
  %unroll_iter = and i64 %i.aa, 288230376151711742
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i.new ], [ %i.as, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i ]
  %i.ad = xor i64 %.sroa.0.016.i.i, -1
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 3 uses
  %i.af = getelementptr [16 x i8], ptr %i.ab, i64 %i.ad ; 3 uses
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !7, !noalias !12, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !7, !noalias !12, !noundef !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !alias.scope !14
  store i64 %i.ag, ptr %i.af, align 8, !alias.scope !15, !noalias !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !alias.scope !15, !noalias !16
  %i.ak = xor i64 %.sroa.0.016.i.i, -2
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %i.ab, i64 %i.ak ; 3 uses
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !7, !noalias !12, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !alias.scope !7, !noalias !12, !noundef !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !14
  store i64 %i.ao, ptr %i.an, align 8, !alias.scope !15, !noalias !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !alias.scope !15, !noalias !16
  %i.as = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE7reverseCsksn9slvsHfS_10image_webp.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit11.i.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTjmENCINvMB8_SB14_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1P_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTjmENCINvMB8_SB14_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1P_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTjmENCINvMB8_SB14_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1P_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTjmENCINvMB8_SB14_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1P_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val13 = load i32, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val14 = load i32, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %i.p = icmp ult i32 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val12 = load i32, ptr %i.q, align 8, !noundef !6 ; 2 uses
  %i.r = icmp ult i32 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i32 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTjmENCINvMB8_SB19_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1U_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 128)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val8.i = load i32, ptr %i.a, align 8, !noundef !6
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val9.i = load i32, ptr %i.b, align 8, !noundef !6
  %i.c = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 56
  %.val6.i = load i32, ptr %i.d, align 8, !noundef !6
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val7.i = load i32, ptr %i.e, align 8, !noundef !6
  %i.f = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.g = zext i1 %i.c to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = xor i1 %i.c, true
  %i.j = zext i1 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 4 uses
  %i.l = select i1 %i.f, i64 3, i64 2
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 4 uses
  %i.n = select i1 %i.f, i64 2, i64 3
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.n ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %.val4.i = load i32, ptr %i.p, align 8, !noundef !6
  %i.q = getelementptr i8, ptr %i.h, i64 8
  %.val5.i = load i32, ptr %i.q, align 8, !noundef !6
  %i.r = icmp ult i32 %.val4.i, %.val5.i          ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val2.i = load i32, ptr %i.s, align 8, !noundef !6
  %i.t = getelementptr i8, ptr %i.k, i64 8
  %.val3.i = load i32, ptr %i.t, align 8, !noundef !6
  %i.u = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.v = select i1 %i.r, ptr %i.m, ptr %i.h, !unpredictable !6
  %i.w = select i1 %i.u, ptr %i.k, ptr %i.o, !unpredictable !6
  %i.x = select i1 %i.u, ptr %i.m, ptr %i.k, !unpredictable !6
  %i.y = select i1 %i.r, ptr %i.h, ptr %i.x, !unpredictable !6 ; 3 uses
  %i.z = select i1 %i.r, ptr %i.k, ptr %i.m, !unpredictable !6
  %i.aa = select i1 %i.u, ptr %i.o, ptr %i.z, !unpredictable !6 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val.i = load i32, ptr %i.ab, align 8, !noundef !6
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  %.val1.i = load i32, ptr %i.ac, align 8, !noundef !6
  %i.ad = icmp ult i32 %.val.i, %.val1.i          ; 2 uses
  %i.ae = select i1 %i.ad, ptr %i.aa, ptr %i.y, !unpredictable !6
  %i.af = select i1 %i.ad, ptr %i.y, ptr %i.aa, !unpredictable !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ai = getelementptr i8, ptr %2, i64 48        ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ak = getelementptr i8, ptr %2, i64 64        ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 88
  %.val8.i1 = load i32, ptr %i.al, align 8, !noundef !6
  %i.am = getelementptr i8, ptr %0, i64 72
  %.val9.i2 = load i32, ptr %i.am, align 8, !noundef !6
  %i.an = icmp ult i32 %.val8.i1, %.val9.i2       ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 120
  %.val6.i3 = load i32, ptr %i.ao, align 8, !noundef !6
  %i.ap = getelementptr i8, ptr %0, i64 104
  %.val7.i4 = load i32, ptr %i.ap, align 8, !noundef !6
  %i.aq = icmp ult i32 %.val6.i3, %.val7.i4       ; 2 uses
  %i.ar = zext i1 %i.an to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ar ; 3 uses
  %i.at = xor i1 %i.an, true
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.au ; 4 uses
  %i.aw = select i1 %i.aq, i64 3, i64 2
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.aw ; 4 uses
  %i.ay = select i1 %i.aq, i64 2, i64 3
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ay ; 3 uses
  %i.ba = getelementptr i8, ptr %i.ax, i64 8
  %.val4.i5 = load i32, ptr %i.ba, align 8, !noundef !6
  %i.bb = getelementptr i8, ptr %i.as, i64 8
  %.val5.i6 = load i32, ptr %i.bb, align 8, !noundef !6
  %i.bc = icmp ult i32 %.val4.i5, %.val5.i6       ; 3 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 8
  %.val2.i7 = load i32, ptr %i.bd, align 8, !noundef !6
  %i.be = getelementptr i8, ptr %i.av, i64 8
  %.val3.i8 = load i32, ptr %i.be, align 8, !noundef !6
  %i.bf = icmp ult i32 %.val2.i7, %.val3.i8       ; 3 uses
  %i.bg = select i1 %i.bc, ptr %i.ax, ptr %i.as, !unpredictable !6
  %i.bh = select i1 %i.bf, ptr %i.av, ptr %i.az, !unpredictable !6
  %i.bi = select i1 %i.bf, ptr %i.ax, ptr %i.av, !unpredictable !6
  %i.bj = select i1 %i.bc, ptr %i.as, ptr %i.bi, !unpredictable !6 ; 3 uses
  %i.bk = select i1 %i.bc, ptr %i.av, ptr %i.ax, !unpredictable !6
  %i.bl = select i1 %i.bf, ptr %i.az, ptr %i.bk, !unpredictable !6 ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val.i9 = load i32, ptr %i.bm, align 8, !noundef !6
  %i.bn = getelementptr i8, ptr %i.bj, i64 8
  %.val1.i10 = load i32, ptr %i.bn, align 8, !noundef !6
  %i.bo = icmp ult i32 %.val.i9, %.val1.i10       ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bl, ptr %i.bj, !unpredictable !6
  %i.bq = select i1 %i.bo, ptr %i.bj, ptr %i.bl, !unpredictable !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  %i.br = getelementptr i8, ptr %2, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  %i.bs = getelementptr i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bt = getelementptr i8, ptr %2, i64 112       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bv = getelementptr i8, ptr %2, i64 72
  %.sroa.011.0.val.i = load i32, ptr %i.bv, align 8, !alias.scope !17, !noundef !6
  %i.bw = getelementptr i8, ptr %2, i64 8
  %.sroa.06.0.val.i = load i32, ptr %i.bw, align 8, !alias.scope !17, !noundef !6
  %i.bx = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.bx, ptr %i.ak, ptr %2
  %i.by = xor i1 %i.bx, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !20
  %i.bz = zext i1 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bz ; 3 uses
  %i.cb = zext i1 %i.by to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = getelementptr i8, ptr %2, i64 120
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTjmENCINvMB8_SB17_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1S_:bb.a
  %i.m = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTjmENCINvMB8_SB19_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1U_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.g, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTjmENCINvMB8_SB19_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1U_(ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 24
  %.val8.i.i.i = load i32, ptr %i.u, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.v = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 8
  %.val9.i.i.i = load i32, ptr %i.v, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.w = icmp ult i32 %.val8.i.i.i, %.val9.i.i.i  ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 56
  %.val6.i.i.i = load i32, ptr %i.x, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.y = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 40
  %.val7.i.i.i = load i32, ptr %i.y, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.z = icmp ult i32 %.val6.i.i.i, %.val7.i.i.i  ; 2 uses
  %i.aa = zext i1 %i.w to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.aa ; 3 uses
  %i.ac = xor i1 %i.w, true
  %i.ad = zext i1 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.z, i64 3, i64 2
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.af ; 4 uses
  %i.ah = select i1 %i.z, i64 2, i64 3
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %.val4.i.i.i = load i32, ptr %i.aj, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ak = getelementptr i8, ptr %i.ab, i64 8
  %.val5.i.i.i = load i32, ptr %i.ak, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.al = icmp ult i32 %.val4.i.i.i, %.val5.i.i.i ; 3 uses
  %i.am = getelementptr i8, ptr %i.ai, i64 8
  %.val2.i.i.i = load i32, ptr %i.am, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.an = getelementptr i8, ptr %i.ae, i64 8
  %.val3.i.i.i = load i32, ptr %i.an, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ao = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i ; 3 uses
  %i.ap = select i1 %i.al, ptr %i.ag, ptr %i.ab, !unpredictable !6
  %i.aq = select i1 %i.ao, ptr %i.ae, ptr %i.ai, !unpredictable !6
  %i.ar = select i1 %i.ao, ptr %i.ag, ptr %i.ae, !unpredictable !6
  %i.as = select i1 %i.al, ptr %i.ab, ptr %i.ar, !unpredictable !6 ; 3 uses
  %i.at = select i1 %i.al, ptr %i.ae, ptr %i.ag, !unpredictable !6
  %i.au = select i1 %i.ao, ptr %i.ai, ptr %i.at, !unpredictable !6 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val.i.i.i = load i32, ptr %i.av, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.aw = getelementptr i8, ptr %i.as, i64 8
  %.val1.i.i.i = load i32, ptr %i.aw, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ax = icmp ult i32 %.val.i.i.i, %.val1.i.i.i  ; 2 uses
  %i.ay = select i1 %i.ax, ptr %i.au, ptr %i.as, !unpredictable !6
  %i.az = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !53
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !53
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !53
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n ; 8 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 4 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 24
  %.val8.i30.i.i = load i32, ptr %i.bf, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val9.i31.i.i = load i32, ptr %i.bg, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bh = icmp ult i32 %.val8.i30.i.i, %.val9.i31.i.i ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bd, i64 56
  %.val6.i32.i.i = load i32, ptr %i.bi, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bj = getelementptr i8, ptr %i.bd, i64 40
  %.val7.i33.i.i = load i32, ptr %i.bj, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bk = icmp ult i32 %.val6.i32.i.i, %.val7.i33.i.i ; 2 uses
  %i.bl = zext i1 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bl ; 3 uses
  %i.bn = xor i1 %i.bh, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bk, i64 3, i64 2
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bq ; 4 uses
  %i.bs = select i1 %i.bk, i64 2, i64 3
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bs ; 3 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.val4.i34.i.i = load i32, ptr %i.bu, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bv = getelementptr i8, ptr %i.bm, i64 8
  %.val5.i35.i.i = load i32, ptr %i.bv, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bw = icmp ult i32 %.val4.i34.i.i, %.val5.i35.i.i ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bt, i64 8
  %.val2.i36.i.i = load i32, ptr %i.bx, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.by = getelementptr i8, ptr %i.bp, i64 8
  %.val3.i37.i.i = load i32, ptr %i.by, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bz = icmp ult i32 %.val2.i36.i.i, %.val3.i37.i.i ; 3 uses
  %i.ca = select i1 %i.bw, ptr %i.br, ptr %i.bm, !unpredictable !6
  %i.cb = select i1 %i.bz, ptr %i.bp, ptr %i.bt, !unpredictable !6
  %i.cc = select i1 %i.bz, ptr %i.br, ptr %i.bp, !unpredictable !6
  %i.cd = select i1 %i.bw, ptr %i.bm, ptr %i.cc, !unpredictable !6 ; 3 uses
  %i.ce = select i1 %i.bw, ptr %i.bp, ptr %i.br, !unpredictable !6
  %i.cf = select i1 %i.bz, ptr %i.bt, ptr %i.ce, !unpredictable !6 ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val.i38.i.i = load i32, ptr %i.cg, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ch = getelementptr i8, ptr %i.cd, i64 8
  %.val1.i39.i.i = load i32, ptr %i.ch, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ci = icmp ult i32 %.val.i38.i.i, %.val1.i39.i.i ; 2 uses
  %i.cj = select i1 %i.ci, ptr %i.cf, ptr %i.cd, !unpredictable !6
  %i.ck = select i1 %i.ci, ptr %i.cd, ptr %i.cf, !unpredictable !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !alias.scope !53
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !alias.scope !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !alias.scope !53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !53
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !53
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.cq = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.n ; 2 uses
  %i.cr = icmp samesign ult i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.cr, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i, %bb.h
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n
  %i.ct = getelementptr [16 x i8], ptr %i.g, i64 %i.n ; 6 uses
  %i.cu = icmp samesign ult i64 %.sroa.0.0.i.i, %i.cq
  br i1 %i.cu, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.df, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.sroa.05.08.1.i.i
  %.idx184 = shl nuw nsw i64 %.sroa.05.08.1.i.i, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx184 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !alias.scope !53
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %.val9.i40.1.i.i = load i32, ptr %i.cx, align 8, !alias.scope !50, !noalias !52, !noundef !6 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 -8
  %.val10.i.1.i.i = load i32, ptr %i.cy, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %i.cz = icmp ult i32 %.val9.i40.1.i.i, %.val10.i.1.i.i
  br i1 %i.cz, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i

bb.i:                                             ; preds = %.lr.ph.1.i.i
  %i.da = load i64, ptr %i.cw, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %.sroa.0.0.i41.1.i.i173 = getelementptr inbounds i8, ptr %i.cw, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i.i173, i64 16, i1 false), !alias.scope !50, !noalias !52
  %i.db = icmp eq i64 %.sroa.05.08.1.i.i, 1
  br i1 %i.db, label %._crit_edge178, label %.lr.ph177

bb.j:                                             ; preds = %.lr.ph177
  %.sroa.0.0.i41.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i.i175, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i.i175, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i.i, i64 16, i1 false), !alias.scope !50, !noalias !52
  %i.dc = icmp eq ptr %.sroa.0.0.i41.1.i.i, %i.ct
  br i1 %i.dc, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i41.1.i.i175 = phi ptr [ %.sroa.0.0.i41.1.i.i, %bb.j ], [ %.sroa.0.0.i41.1.i.i173, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i.i174 = phi ptr [ %.sroa.0.0.i41.1.i.i175, %bb.j ], [ %i.cw, %bb.i ] ; 2 uses
  %i.dd = getelementptr i8, ptr %.sroa.5.0.i.1.i.i174, i64 -24
  %.val8.i42.1.i.i = load i32, ptr %i.dd, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %i.de = icmp ult i32 %.val9.i40.1.i.i, %.val8.i42.1.i.i
  br i1 %i.de, label %bb.j, label %._crit_edge178

._crit_edge178:                                   ; preds = %bb.j, %.lr.ph177, %bb.i
  %.sroa.5.0.i.1.i.i.lcssa = phi ptr [ %i.cw, %bb.i ], [ %.sroa.0.0.i41.1.i.i175, %bb.j ], [ %.sroa.5.0.i.1.i.i174, %.lr.ph177 ]
  %.sroa.0.0.i41.lcssa.1.i.i = phi ptr [ %i.ct, %bb.i ], [ %i.ct, %bb.j ], [ %.sroa.0.0.i41.1.i.i175, %.lr.ph177 ]
  store i64 %i.da, ptr %.sroa.0.0.i41.lcssa.1.i.i, align 8, !alias.scope !50, !noalias !54
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.i.lcssa, i64 -8
  store i32 %.val9.i40.1.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !50, !noalias !54
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i: ; preds = %._crit_edge178, %.lr.ph.1.i.i
  %i.df = add nuw nsw i64 %.sroa.05.08.1.i.i, 1   ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.df, %i.cq
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i, %.loopexit.i.i
  %i.dg = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.dg
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.ct, i64 -16
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.dk = getelementptr i8, ptr %i.dv, i64 16     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.du, i64 16
  %5 = and i64 %.sroa.15.0.lcssa, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb.l, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.loopexit.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i ], [ 0, %.loopexit.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.g, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.ct, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i ], [ %i.dj, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %i.di, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i ], [ %i.dh, %.loopexit.1.i.i ] ; 2 uses
  %i.dm = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.011.07.i.i.i, i64 8
  %.sroa.011.0.val.i.i.i = load i32, ptr %i.dn, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %i.do = getelementptr i8, ptr %.sroa.06.08.i.i.i, i64 8
  %.sroa.06.0.val.i.i.i = load i32, ptr %i.do, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %.not.i = icmp ult i32 %.sroa.011.0.val.i.i.i, %.sroa.06.0.val.i.i.i ; 3 uses
  %..i21.i.i.i = select i1 %.not.i, ptr %.sroa.011.07.i.i.i, ptr %.sroa.06.08.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i.i, i64 16, i1 false), !alias.scope !53, !noalias !62
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 16, i64 0
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 16
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 16 ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.017.05.i.i.i, i64 8
  %.sroa.017.0.val.i.i.i = load i32, ptr %i.dq, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %i.dr = getelementptr i8, ptr %.sroa.015.06.i.i.i, i64 8
  %.sroa.015.0.val.i.i.i = load i32, ptr %i.dr, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %i.ds = icmp ult i32 %.sroa.017.0.val.i.i.i, %.sroa.015.0.val.i.i.i ; 3 uses
  %..i.i.i.i = select i1 %i.ds, ptr %.sroa.015.06.i.i.i, ptr %.sroa.017.05.i.i.i
  %i.dt = xor i1 %i.ds, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i, i64 16, i1 false), !alias.scope !53, !noalias !66
  %.neg.i.i.i.i = sext i1 %i.dt to i64
  %i.du = getelementptr [16 x i8], ptr %.sroa.017.05.i.i.i, i64 %.neg.i.i.i.i ; 2 uses
  %.neg13.i.i.i.i = sext i1 %i.ds to i64
  %i.dv = getelementptr [16 x i8], ptr %.sroa.015.06.i.i.i, i64 %.neg13.i.i.i.i ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.019.04.i.i.i, i64 -16
  %exitcond.not.i.i.i = icmp eq i64 %i.dm, %i.n
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %.not23.i = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.dk ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i.i = select i1 %.not23.i, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i.i, i64 16, i1 false), !alias.scope !53
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not23.i, i64 16, i64 0
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not23.i, i64 0, i64 16
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, %bb.k ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel, %bb.k ]
  %i.dx = icmp ne ptr %.sroa.06.1.i.i.i, %i.dk
  %i.dy = icmp ne ptr %.sroa.011.1.i.i.i, %i.dl
  %or.cond.i.i.i = select i1 %i.dx, i1 true, i1 %i.dy, !prof !28
  br i1 %or.cond.i.i.i, label %bb.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit, !prof !28

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #26
          to label %.noexc.i.i unwind label %bb.n

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = shl nuw nsw i64 %.sroa.15.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.g, i64 %i.ea, i1 false), !alias.scope !53, !noalias !70
  resume { ptr, i32 } %i.dz

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i
  %.sroa.05.08.i.i = phi i64 [ %i.el, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.08.i.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i.i, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !alias.scope !53
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %.val9.i40.i.i = load i32, ptr %i.ed, align 8, !alias.scope !50, !noalias !52, !noundef !6 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 -8
  %.val10.i.i.i = load i32, ptr %i.ee, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %i.ef = icmp ult i32 %.val9.i40.i.i, %.val10.i.i.i
  br i1 %i.ef, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.eg = load i64, ptr %i.ec, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %.sroa.0.0.i41.i.i162 = getelementptr inbounds i8, ptr %i.ec, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i.i162, i64 16, i1 false), !alias.scope !50, !noalias !52
  %i.eh = icmp eq i64 %.sroa.05.08.i.i, 1
  br i1 %i.eh, label %._crit_edge167, label %.lr.ph166

bb.p:                                             ; preds = %.lr.ph166
  %.sroa.0.0.i41.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i.i164, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i.i164, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i.i, i64 16, i1 false), !alias.scope !50, !noalias !52
  %i.ei = icmp eq ptr %.sroa.0.0.i41.i.i, %i.g
  br i1 %i.ei, label %._crit_edge167, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i41.i.i164 = phi ptr [ %.sroa.0.0.i41.i.i, %bb.p ], [ %.sroa.0.0.i41.i.i162, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i.i163 = phi ptr [ %.sroa.0.0.i41.i.i164, %bb.p ], [ %i.ec, %bb.o ] ; 2 uses
  %i.ej = getelementptr i8, ptr %.sroa.5.0.i.i.i163, i64 -24
  %.val8.i42.i.i = load i32, ptr %i.ej, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %i.ek = icmp ult i32 %.val9.i40.i.i, %.val8.i42.i.i
  br i1 %i.ek, label %bb.p, label %._crit_edge167

._crit_edge167:                                   ; preds = %bb.p, %.lr.ph166, %bb.o
  %.sroa.5.0.i.i.i.lcssa = phi ptr [ %i.ec, %bb.o ], [ %.sroa.0.0.i41.i.i164, %bb.p ], [ %.sroa.5.0.i.i.i163, %.lr.ph166 ]
  %.sroa.0.0.i41.lcssa.i.i = phi ptr [ %i.g, %bb.o ], [ %i.g, %bb.p ], [ %.sroa.0.0.i41.i.i164, %.lr.ph166 ]
  store i64 %i.eg, ptr %.sroa.0.0.i41.lcssa.i.i, align 8, !alias.scope !50, !noalias !54
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.lcssa, i64 -8
  store i32 %.val9.i40.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !50, !noalias !54
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i: ; preds = %._crit_edge167, %.lr.ph.i.i
  %i.el = add nuw nsw i64 %.sroa.05.08.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.el, %i.n
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit: ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44
  br label %bb.r

._crit_edge160:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.092.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.091.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.092.lcssa, i64 noundef %.sroa.15.091.lcssa, ptr noalias nofree nonnull align 8 poison) #27
  br label %bb.r

.lr.ph159:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.089158 = phi i32 [ %i.em, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.090157 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.sroa.15.091156 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 9 uses
  %.sroa.0.092155 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 30 uses
  %i.em = add nsw i32 %.sroa.026.089158, -1       ; 3 uses
  %i.en = lshr i64 %.sroa.15.091156, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.en, 6
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.en, 112
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %.idx2.i ; 3 uses
  %i.eq = icmp samesign ult i64 %.sroa.15.091156, 64
  br i1 %i.eq, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph159
  %i.er = tail call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTjmENCINvMB8_SB14_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1P_(ptr noundef nonnull readonly align 8 %.sroa.0.092155, ptr noundef readonly %i.eo, ptr noundef readonly %i.ep, i64 noundef %i.en)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i: ; preds = %.lr.ph159
  %i.es = getelementptr i8, ptr %.sroa.0.092155, i64 8
  %.val6.i = load i32, ptr %i.es, align 8, !alias.scope !75, !noundef !6 ; 2 uses
  %i.et = getelementptr i8, ptr %i.eo, i64 8
  %.val7.i = load i32, ptr %i.et, align 8, !alias.scope !75, !noundef !6 ; 2 uses
  %i.eu = icmp ult i32 %.val6.i, %.val7.i         ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ep, i64 8
  %.val5.i = load i32, ptr %i.ev, align 8, !alias.scope !75, !noundef !6 ; 2 uses
  %i.ew = icmp ult i32 %.val6.i, %.val5.i
  %i.ex = xor i1 %i.eu, %i.ew
  %i.ey = icmp ult i32 %.val7.i, %.val5.i
  %i.ez = xor i1 %i.eu, %i.ey
  %..i.i = select i1 %i.ez, ptr %i.ep, ptr %i.eo
  %.sroa.0.0.i.i34 = select i1 %i.ex, ptr %.sroa.0.092155, ptr %..i.i
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit: ; preds = %bb.q, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i ], [ %i.er, %bb.q ]
  %i.fa = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fb = ptrtoint ptr %.sroa.0.092155 to i64
  %i.fc = sub nuw i64 %i.fa, %i.fb                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.fc, 4
  %i.fd = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.091156
  tail call void @llvm.assume(i1 %i.fd)
  %.not = icmp eq ptr %.sroa.023.090157, null
  br i1 %.not, label %bb.s, label %bb.u

bb.r:                                             ; preds = %._crit_edge160, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %i.fc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !alias.scope !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !89
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !90, !noalias !87, !noundef !6
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !alias.scope !90, !noalias !87, !noundef !6
  store i64 %i.fg, ptr %i.e, align 8, !noalias !89
  store i32 %i.fi, ptr %i.j, align 8, !noalias !89
  %i.fj = getelementptr [16 x i8], ptr %.sroa.0.092155, i64 %.sroa.15.091156 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -16    ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 32 ; 3 uses
  %i.fl = icmp ult ptr %.sroa.13.033.i.i, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 8
  %.val1.i12.i.i = load i32, ptr %i.fm, align 8, !alias.scope !91, !noalias !84 ; 3 uses
  br i1 %i.fl, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTjmENCINvMB8_SB17_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1S_:bb.a
  %i.fs = getelementptr i8, ptr %.sroa.015.035.i.i, i64 24
  %.val.i11.i.i = load i32, ptr %i.fs, align 8, !alias.scope !90, !noalias !95, !noundef !6
  %i.ft = icmp ult i32 %.val.i11.i.i, %.val1.i12.i.i
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.sroa.23.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false), !alias.scope !90, !noalias !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, i64 16, i1 false), !alias.scope !90, !noalias !95
  %i.fv = zext i1 %i.ft to i64
  %i.fw = add i64 %.sroa.23.034.i.i, %i.fv        ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 32 ; 3 uses
  %i.fy = getelementptr i8, ptr %.sroa.015.035.i.i, i64 40
  %.val.i13.i.i = load i32, ptr %i.fy, align 8, !alias.scope !90, !noalias !98, !noundef !6
  %i.fz = icmp ult i32 %.val.i13.i.i, %.val1.i12.i.i
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fw ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false), !alias.scope !90, !noalias !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !alias.scope !90, !noalias !98
  %i.gb = zext i1 %i.fz to i64
  %i.gc = add i64 %i.fw, %i.gb                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 48 ; 3 uses
  %i.gd = icmp ult ptr %.sroa.13.0.i.i, %i.fk
  br i1 %i.gd, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB2i_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !89
  %.not7.i = icmp ult i64 %i.fr, %.sroa.15.091156
  br i1 %.not7.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB2i_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB2i_.exit.i
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092155, i64 %i.fr ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !alias.scope !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = xor i64 %i.fr, -1
  %i.gh = add i64 %.sroa.15.091156, %i.gg
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTjmENCINvMB8_SB17_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1S_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.092155, i64 noundef %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.090157, i32 noundef %i.em, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.u:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %i.fc ; 3 uses
  %i.gj = getelementptr i8, ptr %.sroa.023.090157, i64 8
  %.sroa.023.0.val = load i32, ptr %i.gj, align 8, !noundef !6
  %i.gk = getelementptr i8, ptr %i.gi, i64 8
  %.val = load i32, ptr %i.gk, align 8, !noundef !6
  %i.gl = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.gl, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !alias.scope !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !116, !noalias !113, !noundef !6
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 24
  %i.gp = load i32, ptr %i.go, align 8, !alias.scope !116, !noalias !113, !noundef !6
  store i64 %i.gn, ptr %i.b, align 8, !noalias !115
  store i32 %i.gp, ptr %i.i, align 8, !noalias !115
  %i.gq = getelementptr [16 x i8], ptr %.sroa.0.092155, i64 %.sroa.15.091156 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 -16    ; 2 uses
  %.sroa.13.033.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 32 ; 3 uses
  %i.gs = icmp ult ptr %.sroa.13.033.i.i45, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 8
  %.val1.i12.i.i46 = load i32, ptr %i.gt, align 8, !alias.scope !117, !noalias !110 ; 3 uses
  br i1 %i.gs, label %.lr.ph.i.i60, label %.preheader.i.i47.preheader

.preheader.i.i47.preheader:                       ; preds = %.lr.ph.i.i60, %bb.v
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.v ], [ %i.hj, %.lr.ph.i.i60 ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.033.i.i45, %bb.v ], [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.gm, %bb.v ], [ %i.he, %.lr.ph.i.i60 ]
  br label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.gy, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ] ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep26.i.i58, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ] ; 5 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ]
  %i.gu = icmp eq ptr %.sroa.13.1.i.i52, %i.gq    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.gu, ptr %i.b, ptr %.sroa.13.1.i.i52
  %.sroa.13.1.sroa.gep.i.i55 = getelementptr i8, ptr %.sroa.13.1.i.i52, i64 8
  %.sroa.01.0.sroa.sel.i.i56 = select i1 %i.gu, ptr %i.i, ptr %.sroa.13.1.sroa.gep.i.i55
  %.val.i.i.i57 = load i32, ptr %.sroa.01.0.sroa.sel.i.i56, align 8, !noalias !118, !noundef !6
  %i.gv = icmp uge i32 %.val1.i12.i.i46, %.val.i.i.i57
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %.sroa.23.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !alias.scope !116, !noalias !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !noalias !118
  %i.gx = zext i1 %i.gv to i64
  %i.gy = add i64 %.sroa.23.1.i.i51, %i.gx        ; 4 uses
  %.sroa.13.1.sroa.gep26.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i52, i64 16
  br i1 %i.gu, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0E0EB2E_.exit.i, label %.preheader.i.i47

.lr.ph.i.i60:                                     ; preds = %bb.v, %.lr.ph.i.i60
  %.sroa.13.036.i.i61 = phi ptr [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ], [ %.sroa.13.033.i.i45, %bb.v ] ; 2 uses
  %.sroa.015.035.i.i62 = phi ptr [ %i.he, %.lr.ph.i.i60 ], [ %i.gm, %bb.v ] ; 5 uses
  %.sroa.23.034.i.i63 = phi i64 [ %i.hj, %.lr.ph.i.i60 ], [ 0, %bb.v ] ; 2 uses
  %i.gz = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 24
  %.val.i11.i.i64 = load i32, ptr %i.gz, align 8, !alias.scope !116, !noalias !121, !noundef !6
  %i.ha = icmp uge i32 %.val1.i12.i.i46, %.val.i11.i.i64
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %.sroa.23.034.i.i63 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i62, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !alias.scope !116, !noalias !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, i64 16, i1 false), !alias.scope !116, !noalias !121
  %i.hc = zext i1 %i.ha to i64
  %i.hd = add i64 %.sroa.23.034.i.i63, %i.hc      ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 32 ; 3 uses
  %i.hf = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 40
  %.val.i13.i.i65 = load i32, ptr %i.hf, align 8, !alias.scope !116, !noalias !124, !noundef !6
  %i.hg = icmp uge i32 %.val1.i12.i.i46, %.val.i13.i.i65
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %i.hd ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !alias.scope !116, !noalias !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !alias.scope !116, !noalias !124
  %i.hi = zext i1 %i.hg to i64
  %i.hj = add i64 %i.hd, %i.hi                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 48 ; 3 uses
  %i.hk = icmp ult ptr %.sroa.13.0.i.i66, %i.gr
  br i1 %i.hk, label %.lr.ph.i.i60, label %.preheader.i.i47.preheader

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0E0EB2E_.exit.i: ; preds = %.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  %.not7.i59 = icmp ult i64 %i.gy, %.sroa.15.091156
  br i1 %.not7.i59, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0E0EB2E_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0E0EB2E_.exit.i
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092155, i64 %i.gy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !alias.scope !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hm = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %i.hn = sub nuw i64 %.sroa.15.091156, %i.hm
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092155, i64 %i.hm
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit
  %.sroa.023.0.be = phi ptr [ %i.ge, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit ], [ null, %bb.x ]
  %.sroa.15.0.be = phi i64 [ %i.gh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit ], [ %i.hn, %bb.x ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.gf, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit ], [ %i.ho, %bb.x ] ; 3 uses
  %i.hp = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hp, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsksn9slvsHfS_10image_webp(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #5 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !135, !noalias !138
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !135, !noalias !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !138, !noalias !130
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !138, !noalias !130
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !135, !noalias !138
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !135, !noalias !138
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !138, !noalias !130
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !138, !noalias !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !130, !noalias !133
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !133, !noalias !130
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !130, !noalias !133
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !133, !noalias !130
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !130, !noalias !133
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !133, !noalias !130
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !130, !noalias !133
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !133, !noalias !130
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !143, !noalias !145
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !145, !noalias !143
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !143, !noalias !145
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !145, !noalias !143
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !147
}

; Function Attrs: noinline nonlazybind uwtable
define noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i8 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.45.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.not.i.i = icmp eq i8 %1, 0
  br i1 %.not.i.i, label %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder17fast_read_literal.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i
  %i.e = phi i32 [ %i.ac, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ], [ %.sroa.6.0.copyload, %bb.a ] ; 3 uses
  %i.f = phi i32 [ %i.ab, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 2 uses
  %.sroa.019.1.i8.i.i = phi i64 [ %.sroa.019.1.i.i.i, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ], [ %.sroa.45.0.copyload, %bb.a ] ; 2 uses
  %.sroa.01.0.i6.i.i = phi i64 [ %.sroa.01.0.i.i.i, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ], [ %.sroa.04.0.copyload, %bb.a ] ; 4 uses
  %.sroa.0.05.i.i = phi i8 [ %i.af, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ], [ 0, %bb.a ]
  %.sroa.02.04.i.i = phi i8 [ %i.g, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ], [ 0, %bb.a ]
  %i.g = add nuw i8 %.sroa.02.04.i.i, 1           ; 2 uses
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %bb.b, label %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = icmp ult i64 %.sroa.01.0.i6.i.i, %i.c
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_RNvXs11_NtCsj6eKBz9Db1c_4core5arrayAhj4_NtNtB8_7default7Default7defaultCsksn9slvsHfS_10image_webp(), !noalias !148
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i6.i.i
  %.sroa.024.0.copyload.i.i.i = load i32, ptr %i.k, align 1, !noalias !148
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.017.0.i.i.i = phi i32 [ %.sroa.024.0.copyload.i.i.i, %bb.d ], [ %i.j, %bb.c ]
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.sroa.017.0.i.i.i)
  %i.m = add i64 %.sroa.01.0.i6.i.i, 1
  %i.n = shl i64 %.sroa.019.1.i8.i.i, 32
  %i.o = zext i32 %i.l to i64
  %i.p = or disjoint i64 %i.n, %i.o
  %i.q = add nsw i32 %i.e, 32
  br label %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i

_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.019.0.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.019.1.i8.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.09.0.i.i.i = phi i32 [ %i.q, %bb.e ], [ %i.e, %.lr.ph.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.m, %bb.e ], [ %.sroa.01.0.i6.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.r = lshr i32 %i.f, 1                         ; 2 uses
  %i.s = sub nuw i32 %i.f, %i.r                   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = and i32 %.sroa.09.0.i.i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.t, %i.v                       ; 2 uses
  %i.x = icmp uge i64 %.sroa.019.0.i.i.i, %i.w    ; 3 uses
  %i.y = select i1 %i.x, i64 %i.w, i64 0
  %.sroa.019.1.i.i.i = sub nuw i64 %.sroa.019.0.i.i.i, %i.y ; 2 uses
  %.sroa.04.0.i.i.i = select i1 %i.x, i32 %i.r, i32 %i.s ; 2 uses
  %i.z = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.04.0.i.i.i, i1 false)
  %i.aa = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 24) ; 2 uses
  %i.ab = shl i32 %.sroa.04.0.i.i.i, %i.aa        ; 2 uses
  %i.ac = sub nsw i32 %.sroa.09.0.i.i.i, %i.aa    ; 2 uses
  %i.ad = shl i8 %.sroa.0.05.i.i, 1
  %i.ae = zext i1 %i.x to i8
  %i.af = or disjoint i8 %i.ad, %i.ae             ; 2 uses
  %exitcond.not.i.i = icmp eq i8 %i.g, %1
  br i1 %exitcond.not.i.i, label %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder17fast_read_literal.exit.i, label %.lr.ph.i.i

_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder17fast_read_literal.exit.i: ; preds = %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i, %bb.a
  %.sroa.17.0 = phi i32 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ac, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ]
  %.sroa.15.0 = phi i32 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ab, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ]
  %.sroa.12.0 = phi i64 [ %.sroa.45.0.copyload, %bb.a ], [ %.sroa.019.1.i.i.i, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ]
  %.sroa.01.0.copyload.i = phi i64 [ %.sroa.04.0.copyload, %bb.a ], [ %.sroa.01.0.i.i.i, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i8 [ 0, %bb.a ], [ %i.af, %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder14fast_read_flag.exit.i.i ]
  %.not.i.not = icmp ugt i64 %.sroa.01.0.copyload.i, %i.c
  br i1 %.not.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder17fast_read_literal.exit.i
  store i64 %.sroa.01.0.copyload.i, ptr %i.d, align 8, !noalias !155
  store i64 %.sroa.12.0, ptr %.sroa.45.0..sroa_idx, align 8
  store i32 %.sroa.15.0, ptr %.sroa.5.0..sroa_idx, align 8
  store i32 %.sroa.17.0, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs1_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_11FastDecoder17fast_read_literal.exit.i
  %i.ag = tail call fastcc noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder17cold_read_literal(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.lcssa.i.i, %bb.f ], [ %i.ag, %bb.g ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder13cold_read_bit(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i8 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !6 ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  %i.g = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.h, label %bb.d

bb.c:                                             ; preds = %_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder21load_from_final_bytes.exit, %._crit_edge, %bb.h
  %i.i = phi i64 [ %i.ax, %bb.h ], [ %i.ao, %_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder21load_from_final_bytes.exit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.j = phi i32 [ %i.ay, %bb.h ], [ %storemerge, %_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder21load_from_final_bytes.exit ], [ %i.c, %._crit_edge ] ; 2 uses
  %i.k = zext i8 %1 to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = add i32 %i.m, -1
  %i.o = mul i32 %i.n, %i.k
  %i.p = lshr i32 %i.o, 8
  %i.q = add nuw nsw i32 %i.p, 1                  ; 3 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = and i32 %i.j, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t                       ; 2 uses
  %i.v = icmp uge i64 %i.i, %i.u                  ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !156, !noundef !6 ; 3 uses
  %i.y = icmp sgt i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i8 %i.x, 0
  br i1 %i.z, label %bb.g, label %_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder21load_from_final_bytes.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.aa = add nsw i8 %i.x, -1
  store i8 %i.aa, ptr %i.w, align 1, !alias.scope !156
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !alias.scope !156, !noundef !6 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 42
end_hunk_2
