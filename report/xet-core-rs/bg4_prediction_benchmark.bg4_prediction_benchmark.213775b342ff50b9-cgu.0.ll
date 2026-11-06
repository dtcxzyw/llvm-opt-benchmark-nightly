Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/bg4_prediction_benchmark.bg4_prediction_benchmark.213775b342ff50b9-cgu.0?download=true
inline.NumInlined: 297
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAmj9_NtB6_5Debug3fmtCs2QOiZQTg0gD_24bg4_prediction_benchmark }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCs2QOiZQTg0gD_24bg4_prediction_benchmark }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs2QOiZQTg0gD_24bg4_prediction_benchmark, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs2QOiZQTg0gD_24bg4_prediction_benchmark, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs2QOiZQTg0gD_24bg4_prediction_benchmark }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAAmj9_j4_NtB6_5Debug3fmtCs2QOiZQTg0gD_24bg4_prediction_benchmark }>, align 8
@4 = private unnamed_addr constant [27 x i8] c"\0BReference: \C5 \00\00p\02\00\06 MB/s\0A\00", align 1
@5 = private unnamed_addr constant [20 x i8] c"\04V1: \C5 \00\00p\02\00\06 MB/s\0A\00", align 1
@6 = private unnamed_addr constant [22 x i8] c"\06SWAR: \C5 \00\00p\02\00\06 MB/s\0A\00", align 1
@7 = private unnamed_addr constant [27 x i8] c"\0BOptimized: \C5 \00\00p\02\00\06 MB/s\0A\00", align 1
@8 = private unnamed_addr constant [78 x i8] c"xet_core_structures/src/xorb_object/byte_grouping/bg4_prediction_benchmark.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"M\00\00\00\00\00\00\00(\00\00\00\05\00\00\00" }>, align 8
@10 = private unnamed_addr constant [16 x i8] c"expand 32-byte k", align 4
@_RNvNtCs1OzvMeFnvWA_8chacha2010avx2_cpuid7STORAGE = external local_unnamed_addr global { { { i8 } } }

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedAAmj9_j4_BM_ECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef 0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !23
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1OzvMeFnvWA_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit, label %bb.a

_RNvMNtNtCs1OzvMeFnvWA_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !24
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !25
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !24
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !25
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !24
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !25
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !24
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !25
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !24
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !25
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !24
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !25
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !24
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !25
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !24
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !25
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  tail call void %0(), !inline_history !26
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs2QOiZQTg0gD_24bg4_prediction_benchmark(<2 x i64> %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noundef nonnull %i.a) #20
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noundef nonnull readonly %i.a) #20, !noalias !30
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs2QOiZQTg0gD_24bg4_prediction_benchmark4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 4               ; 7 uses
  %i.b = alloca [144 x i8], align 4               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [144 x i8], align 4               ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [144 x i8], align 4               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [144 x i8], align 4               ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [144 x i8], align 4               ; 6 uses
  %i.s = alloca [320 x i8], align 16              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.t = load atomic i8, ptr @_RNvNtCs1OzvMeFnvWA_8chacha2010avx2_cpuid7STORAGE monotonic, align 1, !noalias !70
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.b, label %_RNvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng13seed_from_u64Cs2QOiZQTg0gD_24bg4_prediction_benchmark.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvNvNtCs1OzvMeFnvWA_8chacha2010avx2_cpuid8init_get10init_inner(), !noalias !70 ; 0 uses
  br label %_RNvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng13seed_from_u64Cs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

_RNvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng13seed_from_u64Cs2QOiZQTg0gD_24bg4_prediction_benchmark.exit: ; preds = %bb.a, %bb.b
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %.sroa.414.0..sroa_idx.i, i8 0, i64 252, i1 false), !alias.scope !69, !noalias !5
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 304 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.615.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !69, !noalias !5
  store i32 64, ptr %i.s, align 16, !alias.scope !69, !noalias !72
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 256 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) @10, i64 16, i1 false), !noalias !72
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 272 ; 2 uses
  store <4 x i32> <i32 453577086, i32 -1465671980, i32 169828742, i32 -1358803400>, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !69, !noalias !72
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 288 ; 2 uses
  store <4 x i32> <i32 -663756181, i32 -430911566, i32 1469801005, i32 373604333>, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !69, !noalias !72
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !73
  %i.w = tail call noundef dereferenceable_or_null(104857600) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef 104857600, i64 noundef 1) #19, !noalias !73 ; 8 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.noexc, label %.lr.ph.i, !prof !71

.noexc:                                           ; preds = %_RNvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng13seed_from_u64Cs2QOiZQTg0gD_24bg4_prediction_benchmark.exit
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 104857600) #21
  unreachable

.lr.ph.i:                                         ; preds = %_RNvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng13seed_from_u64Cs2QOiZQTg0gD_24bg4_prediction_benchmark.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 308
  br label %bb.c

bb.c:                                             ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i, %.lr.ph.i
  %.sroa.0.063.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gk, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i ] ; 3 uses
  %.sroa.05.062.i = phi i64 [ 64, %.lr.ph.i ], [ %i.gi, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i ] ; 2 uses
  %i.z = icmp ugt i64 %.sroa.05.062.i, 63
  br i1 %i.z, label %bb.d, label %.lr.ph.i.i.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.aa = load atomic i8, ptr @_RNvNtCs1OzvMeFnvWA_8chacha2010avx2_cpuid7STORAGE monotonic, align 1, !noalias !78
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %.sroa.012.0.copyload24.i.i.i = load <4 x i32>, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !81 ; 8 uses
  %.sroa.013.0.copyload25.i.i.i = load <4 x i32>, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !81 ; 8 uses
  %.sroa.014.0.copyload26.i.i.i = load <4 x i32>, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !81 ; 8 uses
  %.sroa.015.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.615.0..sroa_idx.i, align 16, !alias.scope !81 ; 5 uses
  %0 = bitcast <2 x i64> %.sroa.015.0.copyload.i.i.i to <4 x i32> ; 2 uses
  %i.ac = add <2 x i64> %.sroa.015.0.copyload.i.i.i, <i64 1, i64 0>
  %i.ad = add <2 x i64> %.sroa.015.0.copyload.i.i.i, <i64 2, i64 0>
  %i.ae = add <2 x i64> %.sroa.015.0.copyload.i.i.i, <i64 3, i64 0>
  %1 = bitcast <2 x i64> %i.ac to <4 x i32>       ; 2 uses
  %2 = bitcast <2 x i64> %i.ad to <4 x i32>       ; 2 uses
  %3 = bitcast <2 x i64> %i.ae to <4 x i32>       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.042.0110.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ar, %bb.f ]
  %4 = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i, %bb.e ], [ %i.er, %bb.f ]
  %5 = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.e ], [ %i.df, %bb.f ] ; 2 uses
  %6 = phi <4 x i32> [ %0, %bb.e ], [ %14, %bb.f ]
  %7 = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.e ], [ %i.eq, %bb.f ]
  %i.af = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i, %bb.e ], [ %i.et, %bb.f ]
  %i.ag = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.e ], [ %i.dr, %bb.f ] ; 2 uses
  %i.ah = phi <4 x i32> [ %1, %bb.e ], [ %15, %bb.f ]
  %i.ai = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.e ], [ %i.es, %bb.f ]
  %i.aj = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i, %bb.e ], [ %i.ev, %bb.f ]
  %i.ak = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.e ], [ %i.ed, %bb.f ] ; 2 uses
  %i.al = phi <4 x i32> [ %2, %bb.e ], [ %16, %bb.f ]
  %i.am = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.e ], [ %i.eu, %bb.f ]
  %i.an = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i, %bb.e ], [ %i.ex, %bb.f ]
  %i.ao = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.e ], [ %i.ep, %bb.f ] ; 2 uses
  %i.ap = phi <4 x i32> [ %3, %bb.e ], [ %17, %bb.f ]
  %i.aq = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.e ], [ %i.ew, %bb.f ]
  %i.ar = add nuw nsw i64 %.sroa.042.0110.i.i.i.i, 1 ; 2 uses
  %i.as = add <4 x i32> %5, %4                    ; 2 uses
  %i.at = xor <4 x i32> %6, %i.as                 ; 2 uses
  %i.au = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.at, <4 x i32> %i.at, <4 x i32> splat (i32 16)) ; 2 uses
  %i.av = add <4 x i32> %i.au, %7                 ; 2 uses
  %i.aw = xor <4 x i32> %i.av, %5                 ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aw, <4 x i32> %i.aw, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ay = add <4 x i32> %i.ax, %i.as              ; 2 uses
  %i.az = xor <4 x i32> %i.ay, %i.au              ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.az, <4 x i32> %i.az, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bb = add <4 x i32> %i.ba, %i.av              ; 2 uses
  %i.bc = xor <4 x i32> %i.bb, %i.ax              ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bc, <4 x i32> %i.bc, <4 x i32> splat (i32 7)) ; 2 uses
  %i.be = add <4 x i32> %i.ag, %i.af              ; 2 uses
  %i.bf = xor <4 x i32> %i.ah, %i.be              ; 2 uses
  %i.bg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bf, <4 x i32> %i.bf, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bh = add <4 x i32> %i.bg, %i.ai              ; 2 uses
  %i.bi = xor <4 x i32> %i.bh, %i.ag              ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bi, <4 x i32> %i.bi, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bk = add <4 x i32> %i.bj, %i.be              ; 2 uses
  %i.bl = xor <4 x i32> %i.bk, %i.bg              ; 2 uses
  %i.bm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bl, <4 x i32> %i.bl, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bn = add <4 x i32> %i.bm, %i.bh              ; 2 uses
  %i.bo = xor <4 x i32> %i.bn, %i.bj              ; 2 uses
  %i.bp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bo, <4 x i32> %i.bo, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bq = add <4 x i32> %i.ak, %i.aj              ; 2 uses
  %i.br = xor <4 x i32> %i.al, %i.bq              ; 2 uses
  %i.bs = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.br, <4 x i32> %i.br, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bt = add <4 x i32> %i.bs, %i.am              ; 2 uses
  %i.bu = xor <4 x i32> %i.bt, %i.ak              ; 2 uses
  %i.bv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bu, <4 x i32> %i.bu, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bw = add <4 x i32> %i.bv, %i.bq              ; 2 uses
  %i.bx = xor <4 x i32> %i.bw, %i.bs              ; 2 uses
  %i.by = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bx, <4 x i32> %i.bx, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bz = add <4 x i32> %i.by, %i.bt              ; 2 uses
  %i.ca = xor <4 x i32> %i.bz, %i.bv              ; 2 uses
  %i.cb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ca, <4 x i32> %i.ca, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cc = add <4 x i32> %i.ao, %i.an              ; 2 uses
  %i.cd = xor <4 x i32> %i.ap, %i.cc              ; 2 uses
  %i.ce = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cd, <4 x i32> %i.cd, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cf = add <4 x i32> %i.ce, %i.aq              ; 2 uses
  %i.cg = xor <4 x i32> %i.cf, %i.ao              ; 2 uses
  %i.ch = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cg, <4 x i32> %i.cg, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ci = add <4 x i32> %i.ch, %i.cc              ; 2 uses
  %i.cj = xor <4 x i32> %i.ci, %i.ce              ; 2 uses
  %i.ck = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cj, <4 x i32> %i.cj, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cl = add <4 x i32> %i.ck, %i.cf              ; 2 uses
  %i.cm = xor <4 x i32> %i.cl, %i.ch              ; 2 uses
  %i.cn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cm, <4 x i32> %i.cm, <4 x i32> splat (i32 7)) ; 2 uses
  %i.co = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %8 = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cp = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cq = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %9 = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cr = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cs = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ct = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cu = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.ck, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %12 = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %13 = add <4 x i32> %i.bd, %i.cp                ; 2 uses
  %i.cv = xor <4 x i32> %13, %8                   ; 2 uses
  %i.cw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cv, <4 x i32> %i.cv, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cx = add <4 x i32> %i.cw, %i.co              ; 2 uses
  %i.cy = xor <4 x i32> %i.cx, %i.bd              ; 2 uses
  %i.cz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cy, <4 x i32> %i.cy, <4 x i32> splat (i32 12)) ; 2 uses
  %i.da = add <4 x i32> %i.cz, %13                ; 2 uses
  %i.db = xor <4 x i32> %i.da, %i.cw              ; 2 uses
  %i.dc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.db, <4 x i32> %i.db, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dd = add <4 x i32> %i.dc, %i.cx              ; 2 uses
  %i.de = xor <4 x i32> %i.dd, %i.cz              ; 2 uses
  %i.df = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.de, <4 x i32> %i.de, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dg = add <4 x i32> %i.bp, %i.cr              ; 2 uses
  %i.dh = xor <4 x i32> %i.dg, %9                 ; 2 uses
  %i.di = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dh, <4 x i32> %i.dh, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dj = add <4 x i32> %i.di, %i.cq              ; 2 uses
  %i.dk = xor <4 x i32> %i.dj, %i.bp              ; 2 uses
  %i.dl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dk, <4 x i32> %i.dk, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dm = add <4 x i32> %i.dl, %i.dg              ; 2 uses
  %i.dn = xor <4 x i32> %i.dm, %i.di              ; 2 uses
  %i.do = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dn, <4 x i32> %i.dn, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dp = add <4 x i32> %i.do, %i.dj              ; 2 uses
  %i.dq = xor <4 x i32> %i.dp, %i.dl              ; 2 uses
  %i.dr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dq, <4 x i32> %i.dq, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ds = add <4 x i32> %i.cb, %i.ct              ; 2 uses
  %i.dt = xor <4 x i32> %i.ds, %10                ; 2 uses
  %i.du = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dt, <4 x i32> %i.dt, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dv = add <4 x i32> %i.du, %i.cs              ; 2 uses
  %i.dw = xor <4 x i32> %i.dv, %i.cb              ; 2 uses
  %i.dx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dw, <4 x i32> %i.dw, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dy = add <4 x i32> %i.dx, %i.ds              ; 2 uses
  %i.dz = xor <4 x i32> %i.dy, %i.du              ; 2 uses
  %i.ea = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dz, <4 x i32> %i.dz, <4 x i32> splat (i32 8)) ; 2 uses
  %i.eb = add <4 x i32> %i.ea, %i.dv              ; 2 uses
  %i.ec = xor <4 x i32> %i.eb, %i.dx              ; 2 uses
  %i.ed = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ec, <4 x i32> %i.ec, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ee = add <4 x i32> %i.cn, %12                ; 2 uses
  %i.ef = xor <4 x i32> %i.ee, %11                ; 2 uses
  %i.eg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ef, <4 x i32> %i.ef, <4 x i32> splat (i32 16)) ; 2 uses
  %i.eh = add <4 x i32> %i.eg, %i.cu              ; 2 uses
  %i.ei = xor <4 x i32> %i.eh, %i.cn              ; 2 uses
  %i.ej = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ei, <4 x i32> %i.ei, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ek = add <4 x i32> %i.ej, %i.ee              ; 2 uses
  %i.el = xor <4 x i32> %i.ek, %i.eg              ; 2 uses
  %i.em = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.el, <4 x i32> %i.el, <4 x i32> splat (i32 8)) ; 2 uses
  %i.en = add <4 x i32> %i.em, %i.eh              ; 2 uses
  %i.eo = xor <4 x i32> %i.en, %i.ej              ; 2 uses
  %i.ep = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.eo, <4 x i32> %i.eo, <4 x i32> splat (i32 7)) ; 2 uses
  %i.eq = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %14 = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.er = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.es = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %15 = shufflevector <4 x i32> %i.do, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.et = shufflevector <4 x i32> %i.dm, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.eu = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ev = shufflevector <4 x i32> %i.dy, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ew = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ex = shufflevector <4 x i32> %i.ek, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ar, 6
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i, label %bb.f

_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i: ; preds = %bb.f
  %i.ey = add <4 x i32> %i.er, %.sroa.012.0.copyload24.i.i.i
  %i.ez = add <4 x i32> %i.df, %.sroa.013.0.copyload25.i.i.i
  %i.fa = add <4 x i32> %i.eq, %.sroa.014.0.copyload26.i.i.i
  %i.fb = add <4 x i32> %14, %0
  %i.fc = add <4 x i32> %i.et, %.sroa.012.0.copyload24.i.i.i
  %i.fd = add <4 x i32> %i.dr, %.sroa.013.0.copyload25.i.i.i
  %i.fe = add <4 x i32> %i.es, %.sroa.014.0.copyload26.i.i.i
  %i.ff = add <4 x i32> %15, %1
  %i.fg = add <4 x i32> %i.ev, %.sroa.012.0.copyload24.i.i.i
  %i.fh = add <4 x i32> %i.ed, %.sroa.013.0.copyload25.i.i.i
  %i.fi = add <4 x i32> %i.eu, %.sroa.014.0.copyload26.i.i.i
  %i.fj = add <4 x i32> %16, %2
  %i.fk = add <4 x i32> %i.ex, %.sroa.012.0.copyload24.i.i.i
  %i.fl = add <4 x i32> %i.ep, %.sroa.013.0.copyload25.i.i.i
  %i.fm = add <4 x i32> %i.ew, %.sroa.014.0.copyload26.i.i.i
  %i.fn = add <4 x i32> %17, %3
  store <4 x i32> %i.ey, ptr %i.s, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.ez, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fa, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fb, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fc, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fd, ptr %.sroa.8.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fe, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.ff, ptr %.sroa.10.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fg, ptr %.sroa.11.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fh, ptr %.sroa.12.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fi, ptr %.sroa.13.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fj, ptr %.sroa.14.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fk, ptr %.sroa.15.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fl, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fm, ptr %.sroa.17.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  store <4 x i32> %i.fn, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !5
  %i.fo = add <2 x i64> %.sroa.015.0.copyload.i.i.i, <i64 4, i64 0> ; 2 uses
  %i.fp = bitcast <2 x i64> %i.fo to <4 x i32>
  %i.fq = extractelement <4 x i32> %i.fp, i64 0
  store i32 %i.fq, ptr %.sroa.615.0..sroa_idx.i, align 16, !alias.scope !81
  %i.fr = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs2QOiZQTg0gD_24bg4_prediction_benchmark(<2 x i64> %i.fo) #22
  store i32 %i.fr, ptr %i.y, align 4, !alias.scope !81
  br label %.lr.ph.i.i.preheader.i

bb.g:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.s) #22, !alias.scope !83
  br label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c, %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i, %bb.g
  %.sroa.05.2.i = phi i64 [ %.sroa.05.062.i, %bb.c ], [ 0, %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.fs = sub nuw nsw i64 104857600, %.sroa.0.063.i
  %i.ft = lshr exact i64 %i.fs, 2
  %i.fu = sub nuw nsw i64 64, %.sroa.05.2.i
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.fu, i64 %i.ft) ; 5 uses
  %.idx.i = shl nuw nsw i64 %.sroa.05.2.i, 2      ; 3 uses
  %i.fv = getelementptr i8, ptr %i.w, i64 %.sroa.0.063.i
  %scevgep.i = getelementptr i8, ptr %i.s, i64 %.idx.i
  %i.fw = shl nuw nsw i64 %..i.i.i, 2             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr align 4 %scevgep.i, i64 range(i64 0, 257) %i.fw, i1 false), !alias.scope !84, !noalias !85
  %i.fx = add nsw i64 %..i.i.i, -1
  %xtraiter = and i64 %..i.i.i, 7                 ; 3 uses
  %i.fy = icmp ult i64 %i.fx, 7
  br i1 %i.fy, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i64 %..i.i.i, 120
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i.new
  %.sroa.0.036.idx.i = phi i64 [ %.idx.i, %.lr.ph.i.i.preheader.i.new ], [ %.sroa.0.036.add.i.7, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.fz = icmp ne i64 %.sroa.0.036.idx.i, 256
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = icmp ne i64 %.sroa.0.036.idx.i, 252
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp ne i64 %.sroa.0.036.idx.i, 248
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp ne i64 %.sroa.0.036.idx.i, 244
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp ne i64 %.sroa.0.036.idx.i, 240
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp ne i64 %.sroa.0.036.idx.i, 236
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp ne i64 %.sroa.0.036.idx.i, 232
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp ne i64 %.sroa.0.036.idx.i, 228
  tail call void @llvm.assume(i1 %i.gg)
  %.sroa.0.036.add.i.7 = add nuw nsw i64 %.sroa.0.036.idx.i, 32 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa, label %.lr.ph.i.i.i

_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.sroa.0.036.idx.i.epil.init = phi i64 [ %.idx.i, %.lr.ph.i.i.preheader.i ], [ %.sroa.0.036.add.i.7, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.036.idx.i.epil = phi i64 [ %.sroa.0.036.add.i.epil, %.lr.ph.i.i.i.epil ], [ %.sroa.0.036.idx.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.gh = icmp ne i64 %.sroa.0.036.idx.i.epil, 256
  tail call void @llvm.assume(i1 %i.gh)
  %.sroa.0.036.add.i.epil = add nuw nsw i64 %.sroa.0.036.idx.i.epil, 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !59

_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa
  %.sroa.0.036.add.i.lcssa = phi i64 [ %.sroa.0.036.add.i.7, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa ], [ %.sroa.0.036.add.i.epil, %.lr.ph.i.i.i.epil ]
  %i.gi = add nuw nsw i64 %..i.i.i, %.sroa.05.2.i
  %i.gj = icmp samesign eq i64 %.sroa.0.036.add.i.lcssa, 256
  %i.gk = add i64 %i.fw, %.sroa.0.063.i           ; 2 uses
  %i.gl = icmp ult i64 %i.gk, 104857600
  %or.cond = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %or.cond, label %bb.c, label %.loopexit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit: ; preds = %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit, %bb.k, %bb.j, %bb.i, %bb.h, %.loopexit.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 104857600, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  resume { ptr, i32 } %i.gm

.loopexit.i:                                      ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.r, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gn = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.h unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.h:                                             ; preds = %.loopexit.i
  %i.go = extractvalue { i64, i32 } %i.gn, 0
  %i.gp = extractvalue { i64, i32 } %i.gn, 1
  store i64 %i.go, ptr %i.q, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.gp, ptr %i.gq, align 8
  invoke void @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor18add_data_reference(ptr noalias nofree noundef nonnull align 4 dereferenceable(144) %i.r, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 104857600)
          to label %bb.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.i:                                             ; preds = %bb.h
  %i.gr = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.j unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.gs = extractvalue { i64, i32 } %i.gr, 0
  %i.gt = extractvalue { i64, i32 } %i.gr, 1      ; 2 uses
  %i.gu = uitofp i64 %i.gs to double
  %i.gv = icmp ult i32 %i.gt, 1000000000
  call void @llvm.assume(i1 %i.gv)
  %i.gw = uitofp nneg i32 %i.gt to double
  %i.gx = fdiv double %i.gw, 1.000000e+09
  %i.gy = fadd double %i.gx, %i.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gz = fdiv double 1.000000e+02, %i.gy
  store double %i.gz, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @4, ptr noundef nonnull %i.o)
          to label %bb.k unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.n, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ha = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.l unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.hb = extractvalue { i64, i32 } %i.ha, 0
  %i.hc = extractvalue { i64, i32 } %i.ha, 1
  store i64 %i.hb, ptr %i.m, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.hc, ptr %i.hd, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.l, %.lr.ph.i20
  %.sroa.0.07.i.idx = phi i64 [ %.sroa.0.07.i.add, %.lr.ph.i20 ], [ 0, %bb.l ] ; 3 uses
  %.sroa.0.07.i.ptr = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.07.i.idx
  %i.he = load i8, ptr %.sroa.0.07.i.ptr, align 1, !alias.scope !88, !noundef !5
  %i.hf = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.he)
  %i.hg = zext nneg i8 %i.hf to i64
  %i.hh = and i64 %.sroa.0.07.i.idx, 3
  %.idx = mul nuw nsw i64 %i.hh, 36
  %i.hi = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hg ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !alias.scope !87, !noundef !5
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hj, align 4, !alias.scope !87
  %.sroa.0.07.i.add = add nuw nsw i64 %.sroa.0.07.i.idx, 1 ; 2 uses
  %i.hm = icmp eq i64 %.sroa.0.07.i.add, 104857600
  br i1 %i.hm, label %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit, label %.lr.ph.i20

_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit: ; preds = %.lr.ph.i20
  %i.hn = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.m unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.m:                                             ; preds = %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit
  %i.ho = extractvalue { i64, i32 } %i.hn, 0
  %i.hp = extractvalue { i64, i32 } %i.hn, 1      ; 2 uses
  %i.hq = uitofp i64 %i.ho to double
  %i.hr = icmp ult i32 %i.hp, 1000000000
  call void @llvm.assume(i1 %i.hr)
  %i.hs = uitofp nneg i32 %i.hp to double
  %i.ht = fdiv double %i.hs, 1.000000e+09
  %i.hu = fadd double %i.ht, %i.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.hv = fdiv double 1.000000e+02, %i.hu
  store double %i.hv, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
end_hunk_0
