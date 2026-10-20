Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.10?download=true
inline.NumInlined: 775
inline.NumDeleted: 433
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [133 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/node.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@2 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00#\04\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00E\05\00\00$\00\00\00" }>, align 8
@5 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\9A\07\00\00\05\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXNvXsD_NtB4_5implsINtNtCsf3Ta7LF998c_4core6result6ResultppENtB4_11Deserialize11deserializeNtBD_5FieldB1z_11deserialize12FieldVisitorNtB4_8Expected3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNtB4_5impls10StrVisitorNtB4_8Expected3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper }>, align 8
@10 = private unnamed_addr constant [4 x i8] c"type", align 1
@11 = private unnamed_addr constant [5 x i8] c"vocab", align 1
@12 = private unnamed_addr constant [6 x i8] c"unk_id", align 1
@13 = private unnamed_addr constant [13 x i8] c"byte_fallback", align 1
@14 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @10, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@15 = private unnamed_addr constant [7 x i8] c"Unigram", align 1
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXs14_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXs1a_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper }>, align 8
@18 = private unnamed_addr constant [26 x i8] c"candle-core/src/tensor.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"\19\00\00\00\00\00\00\00\97\07\00\006\00\00\00" }>, align 8
@_RNvNCNKNvNtNtCscNeReUgPDN9_11gloo_worker6worker6public19REMOTE_WORKERS_POOL0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [5 x i64] } }, i8, [7 x i8] }
@_RNvNCNKNvNtNtCscNeReUgPDN9_11gloo_worker6worker6public5QUEUE0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [14 x i64] } }, i8, [7 x i8] }
@20 = private unnamed_addr constant [138 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"\89\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@22 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/yew-0.23.0/src/html/component/scope.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"k\00\00\00\00\00\00\00\95\01\00\00$\00\00\00" }>, align 8
@24 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtCscNeReUgPDN9_11gloo_worker6worker6public5QUEUE00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtBa_5queue5QueueNtNtB16_3any6TypeIdEEEEE9call_onceCsfh9HxMbthk9_27candle_wasm_example_whisper, align 8
@25 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/gloo-worker-0.1.2/src/worker/public.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"k\00\00\00\00\00\00\00\00\01\00\00\22\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"k\00\00\00\00\00\00\00\0F\01\00\00\16\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"k\00\00\00\00\00\00\00\0E\01\00\00\22\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\00\05\00\00#\00\00\00" }>, align 8
@30 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\B0\02\00\00\09\00\00\00" }>, align 8
@32 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\C9\02\00\00\09\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\CD\02\00\00\09\00\00\00" }>, align 8
@35 = private unnamed_addr constant [17 x i8] c"a tuple of size 2", align 1
@36 = private unnamed_addr constant [5 x i8] c"a map", align 1
@37 = private unnamed_addr constant [10 x i8] c"a sequence", align 1
@38 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtCscNeReUgPDN9_11gloo_worker6worker6public19REMOTE_WORKERS_POOL00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell7RefCellINtCsjJ6wem5K4Ki_7anymap23MapDNtNtB2R_3any3AnyEL_EEEEEE9call_onceCsfh9HxMbthk9_27candle_wasm_example_whisper, align 8

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsfh9HxMbthk9_27candle_wasm_example_whisper() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.460)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !132, !nonnull !4, !noundef !4 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !133, !noundef !4 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !132, !noundef !4 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !135, !noundef !4 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !137, !noalias !138
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nuw nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !139, !noalias !138
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
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !132, !noundef !4 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsfh9HxMbthk9_27candle_wasm_example_whisper()
          to label %.noexc.i unwind label %bb.o, !noalias !133 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !140
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.an = load i16, ptr %i.p, align 2, !noalias !142, !noundef !4
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !141, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !142
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !142
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !142
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !143

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
          to label %bb.l unwind label %bb.k, !noalias !142

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #29
          to label %bb.n unwind label %bb.m, !noalias !142

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !142
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread.i.i unwind label %bb.m, !noalias !142

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #31, !noalias !140
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !144, !noalias !145
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !146, !noalias !145
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !142
  %.sroa.059.0.copyload = load i64, ptr %i.h, align 8, !noalias !133 ; 3 uses
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.460, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.460.0..sroa_idx, i64 16, i1 false), !noalias !133
  %.sroa.460.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.460, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.460.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !142
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !147, !noundef !4 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !149, !noalias !147
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !150, !noalias !147
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !151
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !152, !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !138
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !135, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.460)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #29
          to label %bb.u unwind label %bb.s, !noalias !153

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.critedge20 unwind label %bb.s, !noalias !151

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !154, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.460, i64 48, i1 false), !noalias !155
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
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !156, !noundef !4 ; 2 uses
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
  %i.cd = load ptr, ptr %.val, align 8, !noalias !157, !noundef !4 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !5

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28
          to label %bb.z unwind label %bb.ak, !noalias !157

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !158, !noalias !157, !noundef !4 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsfh9HxMbthk9_27candle_wasm_example_whisper()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !159 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !159
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !159
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !159
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !5

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28
          to label %bb.ac unwind label %bb.ad, !noalias !159

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #31, !noalias !159
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
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !160
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !161
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !158, !noalias !157
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !158, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !157
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7278, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa171, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !6

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @32, %bb.af ], [ @30, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @33, %bb.af ], [ @34, %bb.ag ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #28
          to label %.cont.i.i unwind label %bb.ah, !noalias !162

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !162, !noundef !4 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !6

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #29
          to label %bb.aj unwind label %bb.ai, !noalias !163

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !157
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.critedge20 unwind label %bb.ai, !noalias !157

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da) #29
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
  %i.di = load i16, ptr %i.dh, align 8, !noalias !156 ; 4 uses
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
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !164

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !164, !noundef !4 ; 5 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !165
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7278.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !166, !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !165
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !168, !noalias !167
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7278.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !169, !noalias !167
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !169, !noalias !167
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !167
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
  %i.es = load ptr, ptr %i.er, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !167
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !167
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !100

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
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !167
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !167
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !167
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !167
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !167
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !167
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !167
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !167
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
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsfh9HxMbthk9_27candle_wasm_example_whisper()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !164 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !170
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !172, !noundef !4
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !171, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !172
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !143

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
          to label %bb.bc unwind label %bb.bb, !noalias !172

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #29
          to label %bb.be unwind label %bb.bd, !noalias !172

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !172
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bo unwind label %bb.bd, !noalias !172

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !173, !noalias !174
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !175, !noalias !174
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !170, !noundef !4 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB29_6tensorNtB3e_6Tensor7to_vec1fE00EE9from_iterCsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !1552
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1d_6tensorNtB2i_6Tensor7to_vec1fE00EECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.u, %.body.i
  %.pn15.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.dy, %bb.u ]
  resume { ptr, i32 } %.pn15.i

bb.u:                                             ; preds = %bb.f, %.noexc, %bb.b, %bb.i, %bb.h
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1d_6tensorNtB2i_6Tensor7to_vec1fE00EECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i unwind label %bb.t, !noalias !1552

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB2m_6tensorNtB3r_6Tensor7to_vec1fE00EE9from_iterCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.g, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB24_6tensorNtB39_6Tensor7to_vec1fE00EE11spec_extendCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1k_3map3MapIB2a_INtNtNtB1o_5slice4iter4IterTReB2X_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB37_s_0EINtNtB1o_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE9from_iterB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1583
  %i.f = tail call { i32, i32 } @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTReB1I_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB1S_s_0EINtNtB6_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1582 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1583
  call void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTReB1I_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB1S_s_0EINtNtB6_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !1582
  %i.i = load i64, ptr %i.d, align 8, !noalias !1583, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1583
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1583
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1582
  %i.l = load i64, ptr %i.b, align 8, !range !9, !noalias !1583, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !27, !noalias !1583, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.p, align 8, !noalias !1583
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #28, !noalias !1582
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.b
  %i.r = extractvalue { i32, i32 } %i.f, 1
  %i.s = load ptr, ptr %i.p, align 8, !noalias !1583, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp ule i64 %i.k, %i.o
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1583
  store i32 %i.r, ptr %i.s, align 4, !noalias !1582
  store i64 %i.o, ptr %i.e, align 8, !noalias !1583
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1583
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !1582
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %i.u = invoke { i32, i32 } @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTReB1I_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB1S_s_0EINtNtB6_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1582 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.v = extractvalue { i32, i32 } %i.u, 0
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapIB25_INtNtNtB1j_5slice4iter4IterTReB2S_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB32_s_0EINtNtB1j_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE11spec_extendB36_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc9.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.al, %.noexc9.i ], [ %i.u, %.noexc.i ]
  %i.x = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1586, !noalias !1583, !noundef !4 ; 4 uses
  %i.z = icmp ult i64 %i.y, 2305843009213693952
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.e, align 8, !range !8, !alias.scope !1586, !noalias !1583, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecmE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1587
  invoke void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTReB1I_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB1S_s_0EINtNtB6_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1582

.noexc7.i:                                        ; preds = %bb.d
  %i.ac = load i64, ptr %i.a, align 8, !noalias !1587, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1587
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ae = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1588, !noalias !1583, !noundef !4 ; 2 uses
  %i.af = load i64, ptr %i.e, align 8, !range !8, !alias.scope !1588, !noalias !1583, !noundef !4
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.e, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecmE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i, !prof !5

bb.e:                                             ; preds = %.noexc7.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ae, i64 noundef %i.ad, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecmE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1582

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecmE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i: ; preds = %bb.e, %.noexc7.i, %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1586, !noalias !1583, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.y
  store i32 %i.x, ptr %i.aj, align 4, !noalias !1582
  %i.ak = add nuw nsw i64 %i.y, 1
  store i64 %i.ak, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1586, !noalias !1583
  %i.al = invoke { i32, i32 } @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTReB1I_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB1S_s_0EINtNtB6_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1582 ; 2 uses

.noexc9.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecmE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i
  %i.am = extractvalue { i32, i32 } %i.al, 0
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapIB25_INtNtNtB1j_5slice4iter4IterTReB2S_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB32_s_0EINtNtB1j_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE11spec_extendB36_.exit.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1582
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ao, align 8, !alias.scope !1582
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ap, align 8, !alias.scope !1582
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapIB2n_INtNtNtB1B_5slice4iter4IterTReB3a_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB3k_s_0EINtNtB1B_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE9from_iterB3o_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecmE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i, %bb.e, %bb.d, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i unwind label %bb.g, !noalias !1582

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapIB25_INtNtNtB1j_5slice4iter4IterTReB2S_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB32_s_0EINtNtB1j_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE11spec_extendB36_.exit.i: ; preds = %.noexc9.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1589
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapIB2n_INtNtNtB1B_5slice4iter4IterTReB3a_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB3k_s_0EINtNtB1B_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE9from_iterB3o_.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !1582
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp2

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapIB2n_INtNtNtB1B_5slice4iter4IterTReB3a_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB3k_s_0EINtNtB1B_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE9from_iterB3o_.exit: ; preds = %bb.f, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapIB25_INtNtNtB1j_5slice4iter4IterTReB2S_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB32_s_0EINtNtB1j_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEE11spec_extendB36_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1583
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsf3Ta7LF998c_4core6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtB1G_4read14WavIntoSamplesQINtNtNtB16_2io6cursor6CursorRShEsEE9from_iterCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs3_NtCsYHiOVFtGb0_5hound4readINtB5_14WavIntoSamplesQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEsENtNtNtNtBZ_4iter6traits8iterator8Iterator4nextCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load i64, ptr %i.d, align 8, !range !1596, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.f, -2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %.loopexit22, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper(i64 %i.f, ptr %.sroa.5.0.copyload) #29
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx14, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i32, ptr %i.j, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.k, align 4, !noundef !4
  %i.l = sub i32 %.val6, %.val7
  %i.m = call i32 @llvm.umax.i32(i32 %i.l, i32 3)
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !range !9, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !27, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %.noexc
  %i.u = load i64, ptr %i.t, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #28
          to label %.noexc8 unwind label %bb.d

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %2 = icmp ule i64 %i.o, %i.s
  call void @llvm.assume(i1 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.v, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.521.0..sroa_idx, align 8
  store i64 %i.s, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1601
  invoke void @_RNvXs3_NtCsYHiOVFtGb0_5hound4readINtB5_14WavIntoSamplesQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEsENtNtNtNtBZ_4iter6traits8iterator8Iterator4nextCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.g
  %i.w = load i64, ptr %i.a, align 8, !range !1596, !noalias !1601, !noundef !4 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.w, -2
  br i1 %.not16.i.i, label %.loopexit22, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc9
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %bb.h

bb.h:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %i.z = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ah, %.noexc10 ] ; 2 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1601 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1601
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1602, !noundef !4 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 384307168202282326
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.e, align 8, !range !8, !alias.scope !1602, !noundef !4
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i: ; preds = %bb.j, %bb.h
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1602, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.aa ; 3 uses
  store i64 %i.z, ptr %i.af, align 8
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.413.0..sroa_idx.i.i, align 8
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.514.0..sroa_idx.i.i, align 8
  %i.ag = add nuw nsw i64 %i.aa, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1601
  invoke void @_RNvXs3_NtCsYHiOVFtGb0_5hound4readINtB5_14WavIntoSamplesQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEsENtNtNtNtBZ_4iter6traits8iterator8Iterator4nextCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i
  %i.ah = load i64, ptr %i.a, align 8, !range !1596, !noalias !1601, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ah, -2
  br i1 %.not.i.i, label %.loopexit22, label %bb.h

bb.i:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper(i64 %i.z, ptr %.sroa.5.0.copyload.i.i) #29
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %.val3.i.i = load i32, ptr %i.x, align 8, !alias.scope !1603, !noundef !4
  %.val4.i.i = load i32, ptr %i.y, align 4, !alias.scope !1603, !noundef !4
  %i.aj = sub i32 %.val3.i.i, %.val4.i.i
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ak, 1
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aa, i64 noundef range(i64 1, 0) %i.al, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEE7reserveCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i, %bb.g
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6result6ResultsNtCsYHiOVFtGb0_5hound5ErrorEEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.m unwind label %bb.l

.loopexit22:                                      ; preds = %.noexc10, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.c

bb.l:                                             ; preds = %bb.d, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.m:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE9from_iterCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !19, !alias.scope !1634, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1634, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !1634, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1636, !noundef !4 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.k, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1636 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.l
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !1636, !noundef !4 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !1636 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.t = phi i64 [ %i.ah, %bb.e ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.u = sub nuw i64 %i.k, %i.t                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.k, %i.t
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.x = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !1637 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ae, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.04.011.i.i.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !1638, !noalias !1637, !noundef !4
  %i.ad = icmp eq i8 %i.ac, %.pre.i.i.i
  br i1 %i.ad, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %i.u
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.u
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.t, 1
  %i.ah = add i64 %i.ag, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !1636
  %.not11.i.i.i = icmp ult i64 %i.ah, %i.p
  %.not12.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i:                                ; preds = %bb.c, %.preheader.i.i.i.i, %bb.d
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !1636
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i
end_hunk_1
