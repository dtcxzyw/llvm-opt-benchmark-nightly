Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_llama2-b5d2d67ec215b578.candle_wasm_example_llama2.2b2abf3c15bdb95-cgu.05?download=true
inline.NumInlined: 810
inline.NumDeleted: 439
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [133 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/node.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@2 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00#\04\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00E\05\00\00$\00\00\00" }>, align 8
@5 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"u\00\00\00\00\00\00\00\FF\0B\00\00$\00\00\00" }>, align 8
@7 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\9A\07\00\00\05\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXNvXsD_NtB4_5implsINtNtCsf3Ta7LF998c_4core6result6ResultppENtB4_11Deserialize11deserializeNtBD_5FieldB1z_11deserialize12FieldVisitorNtB4_8Expected3fmtCsemnSGAKhbl_26candle_wasm_example_llama2 }>, align 8
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsemnSGAKhbl_26candle_wasm_example_llama2 }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNtB4_5impls10StrVisitorNtB4_8Expected3fmtCsemnSGAKhbl_26candle_wasm_example_llama2 }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXs14_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsemnSGAKhbl_26candle_wasm_example_llama2 }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXs1a_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsemnSGAKhbl_26candle_wasm_example_llama2 }>, align 8
@14 = private unnamed_addr constant [138 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\89\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@16 = private unnamed_addr constant [2 x i8] c"br", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\00\05\00\00#\00\00\00" }>, align 8
@18 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\B0\02\00\00\09\00\00\00" }>, align 8
@20 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\C9\02\00\00\09\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\CD\02\00\00\09\00\00\00" }>, align 8
@23 = private unnamed_addr constant [17 x i8] c"a tuple of size 2", align 1
@24 = private unnamed_addr constant [5 x i8] c"a map", align 1
@25 = private unnamed_addr constant [10 x i8] c"a sequence", align 1

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsemnSGAKhbl_26candle_wasm_example_llama2() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [48 x i8], align 8   ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.460 = alloca [48 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.752 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.7278 = alloca [48 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.460)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !129, !nonnull !4, !noundef !4 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !130, !noundef !4 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !129, !noundef !4 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !132, !noundef !4 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !134, !noalias !135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nuw nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !136, !noalias !135
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !129, !noundef !4 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsemnSGAKhbl_26candle_wasm_example_llama2()
          to label %.noexc.i unwind label %bb.o, !noalias !130 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !137
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.an = load i16, ptr %i.p, align 2, !noalias !139, !noundef !4
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !138, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !139
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !139
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !139
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !140

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %bb.l unwind label %bb.k, !noalias !139

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #28
          to label %bb.n unwind label %bb.m, !noalias !139

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !139
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread.i.i unwind label %bb.m, !noalias !139

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #30, !noalias !137
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !141, !noalias !142
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !143, !noalias !142
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !139
  %.sroa.059.0.copyload = load i64, ptr %i.h, align 8, !noalias !130 ; 3 uses
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.460, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.460.0..sroa_idx, i64 16, i1 false), !noalias !130
  %.sroa.460.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.460, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.460.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !139
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !144, !noundef !4 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 360 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !146, !noalias !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !147, !noalias !144
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !148
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !149, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !135
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !132, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.460)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #28
          to label %bb.u unwind label %bb.s, !noalias !150

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.critedge20 unwind label %bb.s, !noalias !148

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !151, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.460, i64 48, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.460)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.059.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7278)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7278, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !153, !noundef !4 ; 2 uses
  %.not.i179 = icmp eq ptr %i.by, null
  br i1 %.not.i179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7278.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7278, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i70 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink50.i69 = phi i64 [ %i.bv, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink51.i68 = phi ptr [ %i.o, %.thread ], [ %spec.select32.i, %bb.v ]
  store ptr %.sink51.i68, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i69, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i70, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.059.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa171 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa163 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa155 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7278, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa155, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa163, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa171, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !154, !noundef !4 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !5

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #27
          to label %bb.z unwind label %bb.ak, !noalias !154

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !155, !noalias !154, !noundef !4 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsemnSGAKhbl_26candle_wasm_example_llama2()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !156 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !156
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !156
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !156
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !5

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %bb.ac unwind label %bb.ad, !noalias !156

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #30, !noalias !156
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !157
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !158
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !155, !noalias !154
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !155, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !154
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7278, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa171, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !6

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @20, %bb.af ], [ @18, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @21, %bb.af ], [ @22, %bb.ag ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #27
          to label %.cont.i.i unwind label %bb.ah, !noalias !159

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !159, !noundef !4 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !6

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #28
          to label %bb.aj unwind label %bb.ai, !noalias !160

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !154
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.critedge20 unwind label %bb.ai, !noalias !154

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da) #28
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.059.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.ky, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 624
  %i.di = load i16, ptr %i.dh, align 8, !noalias !153 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7278.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7278, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7278.24..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !6

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !161

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !161, !noundef !4 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !162
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7278.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !163, !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !162
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !165, !noalias !164
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7278.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !166, !noalias !164
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !166, !noalias !164
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !164
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread75

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter520 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod521.not = icmp eq i64 %xtraiter520, 0
  br i1 %lcmp.mod521.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter522 = phi i64 [ %prol.iter522.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !164
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !164
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !97

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread75, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !164
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !164
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !164
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !164
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !164
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !164
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !164
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !164
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread75, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsemnSGAKhbl_26candle_wasm_example_llama2()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !161 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !167
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !169, !noundef !4
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !168, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !169
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !169
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !140

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %bb.bc unwind label %bb.bb, !noalias !169

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #28
          to label %bb.be unwind label %bb.bd, !noalias !169

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !169
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bo unwind label %bb.bd, !noalias !169

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !170, !noalias !171
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !172, !noalias !171
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !167, !noundef !4 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterBU_ENCINvMs8_NtBY_2opNtB3t_10BackpropOp3newBU_NCINvMNtBY_10tensor_catBU_4cat0BU_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2:bb.a
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1493
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterB13_ENCINvMs8_NtB17_2opNtB3K_10BackpropOp3newB13_NCINvMNtB17_10tensor_catB13_4cat0B13_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBG_ENCINvMs8_NtBK_2opNtB38_10BackpropOp3newBG_NCINvMNtBK_10tensor_catBG_4cat0BG_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1493
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRBU_ENCINvMs8_NtBY_2opNtB3u_10BackpropOp3newB3g_NCINvMNtBY_10tensor_catBU_14cat_contiguousB3g_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1501
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1501
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !1501
  %i.h = load i64, ptr %i.b, align 8, !range !10, !noalias !1501, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !25, !noalias !1501, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_14cat_contiguousB2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1501
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !1501
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_14cat_contiguousB2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1501, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1501
  store i64 %i.k, ptr %i.c, align 8, !noalias !1501
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1501
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !1501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1502
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1502
  store ptr %i.q, ptr %i.a, align 8, !noalias !1502
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1502
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs8_NtB1s_2opNtB2h_10BackpropOp3newB1n_NCINvMNtB1s_10tensor_catB1o_14cat_contiguousB1n_E0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3J_8for_each4callB1o_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Z_3VecB1o_E14extend_trustedBN_E0E0ECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterRB13_ENCINvMs8_NtB17_2opNtB3L_10BackpropOp3newB3w_NCINvMNtB17_10tensor_catB13_14cat_contiguousB3w_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c, !noalias !1501

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_14cat_contiguousB2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.e unwind label %bb.d, !noalias !1501

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1501
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterRB13_ENCINvMs8_NtB17_2opNtB3L_10BackpropOp3newB3w_NCINvMNtB17_10tensor_catB13_14cat_contiguousB3w_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_14cat_contiguousB2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1501
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRBU_ENCINvMs8_NtBY_2opNtB3u_10BackpropOp3newB3g_NCINvMNtBY_10tensor_catBU_4cat0B3g_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1509
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !1509
  %i.h = load i64, ptr %i.b, align 8, !range !10, !noalias !1509, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !25, !noalias !1509, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_4cat0B2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1509
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !1509
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_4cat0B2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1509, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1509
  store i64 %i.k, ptr %i.c, align 8, !noalias !1509
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1509
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !1509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1510
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1510
  store ptr %i.q, ptr %i.a, align 8, !noalias !1510
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1510
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs8_NtB1s_2opNtB2h_10BackpropOp3newB1n_NCINvMNtB1s_10tensor_catB1o_4cat0B1n_E0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3y_8for_each4callB1o_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4O_3VecB1o_E14extend_trustedBN_E0E0ECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterRB13_ENCINvMs8_NtB17_2opNtB3L_10BackpropOp3newB3w_NCINvMNtB17_10tensor_catB13_4cat0B3w_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c, !noalias !1509

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_4cat0B2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.e unwind label %bb.d, !noalias !1509

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1509
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterRB13_ENCINvMs8_NtB17_2opNtB3L_10BackpropOp3newB3w_NCINvMNtB17_10tensor_catB13_4cat0B3w_E0Es_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterRBG_ENCINvMs8_NtBK_2opNtB39_10BackpropOp3newB2V_NCINvMNtBK_10tensor_catBG_4cat0B2V_E0Es_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1509
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapIB26_IB26_NtNtNtB2e_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB3x_3AppNtNtNtB10_4html9component9Component4views1_0ENCINvXs8_BW_BU_INtNtNtB2c_6traits7collect12FromIteratorBU_E9from_iterB2Y_E0ENCINvXs2_NtBY_5vlistNtB6y_5VListIB5r_BU_E9from_iterB2T_E0EE9from_iterB3z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1521
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8, !noalias !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1521
  call fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapIBN_IBN_NtNtNtBb_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB1x_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views1_0ENCINvXs8_NtNtB2y_11virtual_dom5vnodeNtB3y_5VNodeINtNtNtB9_6traits7collect12FromIteratorB3Z_E9from_iterB10_E0ENCINvXs2_NtB3A_5vlistNtB5j_5VListIB4c_B3Z_E9from_iterBW_E0ENtNtB4g_8iterator8Iterator4nextB1z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #35, !noalias !1521
  %i.j = load i32, ptr %i.f, align 8, !range !8, !noalias !1521, !noundef !4
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1521
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !1521
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1521
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapIB2k_IB2k_NtNtNtB2s_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB3L_3AppNtNtNtB17_4html9component9Component4views1_0ENCINvXs8_B13_B11_INtNtNtB2q_6traits7collect12FromIteratorB11_E9from_iterB3c_E0ENCINvXs2_NtB15_5vlistNtB6P_5VListIB5H_B11_E9from_iterB37_E0EE9from_iterB3N_.exit

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #28
          to label %bb.k unwind label %bb.j, !noalias !1521

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1521
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1522, !noalias !1521, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !1522, !noalias !1521, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = ptrtoint ptr %.val5.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub nuw i64 %i.n, %i.o                   ; 2 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = and i64 %i.p, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.q, %i.s
  %i.t = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i, i64 3)
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1521
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.u, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc.i unwind label %bb.c, !noalias !1521

.noexc.i:                                         ; preds = %bb.d
  %i.v = load i64, ptr %i.d, align 8, !range !10, !noalias !1521, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !25, !noalias !1521, !noundef !4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %.noexc.i
  %i.aa = load i64, ptr %i.z, align 8, !noalias !1521
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #27
          to label %.noexc6.i unwind label %bb.c, !noalias !1521

.noexc6.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !1521, !nonnull !4, !noundef !4 ; 2 uses
  %3 = icmp ule i64 %i.u, %i.y
  tail call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1521
  store i64 %i.y, ptr %i.g, align 8, !noalias !1521
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1521
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1525
  store ptr %.val.i, ptr %i.c, align 8, !noalias !1526
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.val5.i, ptr %i.ac, align 8, !noalias !1526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1526
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapIBN_IBN_NtNtNtBb_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB1x_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views1_0ENCINvXs8_NtNtB2y_11virtual_dom5vnodeNtB3y_5VNodeINtNtNtB9_6traits7collect12FromIteratorB3Z_E9from_iterB10_E0ENCINvXs2_NtB3A_5vlistNtB5j_5VListIB4c_B3Z_E9from_iterBW_E0ENtNtB4g_8iterator8Iterator4nextB1z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #35
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1521

.noexc7.i:                                        ; preds = %bb.f
  %i.ad = load i32, ptr %i.b, align 8, !range !8, !noalias !1526, !noundef !4
  %.not3.i.i.i = icmp eq i32 %i.ad, -1
  br i1 %.not3.i.i.i, label %.loopexit9.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc7.i, %.noexc8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1526
  %i.ae = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1527, !noalias !1521, !noundef !4 ; 5 uses
  %i.af = icmp ult i64 %i.ae, 288230376151711744
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i64, ptr %i.g, align 8, !range !9, !alias.scope !1527, !noalias !1521, !noundef !4
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1527, !noalias !1521, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1521
  %i.ak = add nuw nsw i64 %i.ae, 1
  store i64 %i.ak, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1527, !noalias !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1526
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapIBN_IBN_NtNtNtBb_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB1x_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views1_0ENCINvXs8_NtNtB2y_11virtual_dom5vnodeNtB3y_5VNodeINtNtNtB9_6traits7collect12FromIteratorB3Z_E9from_iterB10_E0ENCINvXs2_NtB3A_5vlistNtB5j_5VListIB4c_B3Z_E9from_iterBW_E0ENtNtB4g_8iterator8Iterator4nextB1z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #35
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1521

.noexc8.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %i.al = load i32, ptr %i.b, align 8, !range !8, !noalias !1526, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.al, -1
  br i1 %.not.i.i.i, label %.loopexit9.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #28
          to label %.body.i unwind label %bb.i, !noalias !1521

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1528, !noalias !1526, !nonnull !4, !noundef !4
  %i.an = ptrtoint ptr %.val2.i.i.i to i64
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1528, !noalias !1526, !nonnull !4, !noundef !4
  %i.ao = ptrtoint ptr %.val.i.i.i to i64
  %i.ap = sub nuw i64 %i.an, %i.ao                ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = and i64 %i.ap, 3
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ar, 0
  %i.as = zext i1 %.not.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.aq, 1
  %i.at = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.as
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ae, i64 noundef range(i64 1, 0) %i.at, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.g, !noalias !1521

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1521
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.am, %bb.g ], [ %lpad.loopexit.split-lp2, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #28
          to label %bb.k unwind label %bb.j, !noalias !1521

.loopexit9.i:                                     ; preds = %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapIB2k_IB2k_NtNtNtB2s_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB3L_3AppNtNtNtB17_4html9component9Component4views1_0ENCINvXs8_B13_B11_INtNtNtB2q_6traits7collect12FromIteratorB11_E9from_iterB3c_E0ENCINvXs2_NtB15_5vlistNtB6P_5VListIB5H_B11_E9from_iterB37_E0EE9from_iterB3N_.exit

bb.j:                                             ; preds = %.body.i, %bb.c
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1521
  unreachable

bb.k:                                             ; preds = %.body.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapIB2k_IB2k_NtNtNtB2s_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB3L_3AppNtNtNtB17_4html9component9Component4views1_0ENCINvXs8_B13_B11_INtNtNtB2q_6traits7collect12FromIteratorB11_E9from_iterB3c_E0ENCINvXs2_NtB15_5vlistNtB6P_5VListIB5H_B11_E9from_iterB37_E0EE9from_iterB3N_.exit: ; preds = %bb.b, %.loopexit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterRNtNtBY_16added_vocabulary10AddedTokenENCINvMs1_B3K_NtB3K_15AddedVocabulary20refresh_added_tokensNtNtB10_11normalizers17NormalizerWrapperNtNtB10_6models12ModelWrapperEs1_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1539
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1538, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !1538, !nonnull !4, !noundef !4
  %i.e = ptrtoint ptr %.val2.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1539
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80), !noalias !1539
  %i.i = load i64, ptr %i.b, align 8, !range !10, !noalias !1539, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !25, !noalias !1539, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterRNtNtBK_16added_vocabulary10AddedTokenENCINvMs1_B3p_NtB3p_15AddedVocabulary20refresh_added_tokensNtNtBM_11normalizers17NormalizerWrapperNtNtBM_6models12ModelWrapperEs1_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !1539
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !1539
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterRNtNtBK_16added_vocabulary10AddedTokenENCINvMs1_B3p_NtB3p_15AddedVocabulary20refresh_added_tokensNtNtBM_11normalizers17NormalizerWrapperNtNtBM_6models12ModelWrapperEs1_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !1539, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1539
  store i64 %i.l, ptr %i.c, align 8, !noalias !1539
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !1539
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1540
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !1540
  store ptr %i.r, ptr %i.a, align 8, !noalias !1540
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !1540
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCINvMs1_B1q_NtB1q_15AddedVocabulary20refresh_added_tokensNtNtB1u_11normalizers17NormalizerWrapperNtNtB1u_6models12ModelWrapperEs1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callNtNtB1s_10normalizer16NormalizedStringNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6w_3VecB5L_E14extend_trustedBN_E0E0ECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterRNtNtB17_16added_vocabulary10AddedTokenENCINvMs1_B40_NtB40_15AddedVocabulary20refresh_added_tokensNtNtB19_11normalizers17NormalizerWrapperNtNtB19_6models12ModelWrapperEs1_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c, !noalias !1541

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterRNtNtBK_16added_vocabulary10AddedTokenENCINvMs1_B3p_NtB3p_15AddedVocabulary20refresh_added_tokensNtNtBM_11normalizers17NormalizerWrapperNtNtBM_6models12ModelWrapperEs1_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.e unwind label %bb.d, !noalias !1539

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1539
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterRNtNtB17_16added_vocabulary10AddedTokenENCINvMs1_B40_NtB40_15AddedVocabulary20refresh_added_tokensNtNtB19_11normalizers17NormalizerWrapperNtNtB19_6models12ModelWrapperEs1_0EE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterRNtNtBK_16added_vocabulary10AddedTokenENCINvMs1_B3p_NtB3p_15AddedVocabulary20refresh_added_tokensNtNtBM_11normalizers17NormalizerWrapperNtNtBM_6models12ModelWrapperEs1_0EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1539
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE9from_iterCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !1572, !alias.scope !1573, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1573, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !1573, !noundef !4 ; 2 uses
end_hunk_1
