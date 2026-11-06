Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.178?download=true
inline.NumInlined: 196
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNtCs1XrQGnCAlpr_8chacha2010avx2_cpuid7STORAGE = external local_unnamed_addr global { { { i8 } } }

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %0, align 4, !noalias !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18 = load <2 x i64>, ptr %i.a, align 4, !noalias !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19 = load <2 x i64>, ptr %i.b, align 4, !noalias !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !20
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %2 = shufflevector <2 x i64> %.sroa.0.0.copyload.i19, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.cast = bitcast <4 x i64> %2 to <8 x i32>      ; 4 uses
  %3 = shufflevector <2 x i64> %.sroa.0.0.copyload.i18, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = bitcast <4 x i64> %3 to <8 x i32>          ; 4 uses
  %5 = shufflevector <2 x i64> %.sroa.0.0.copyload.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = bitcast <4 x i64> %5 to <8 x i32>          ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %18, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %17, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
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
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %7 = bitcast <32 x i8> %i.ai to <4 x i64>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %8 = bitcast <32 x i8> %i.am to <4 x i64>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %9 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %10 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %11 = bitcast <8 x i32> %i.az to <4 x i64>
  %12 = xor <4 x i64> %9, %11
  %i.ba = bitcast <4 x i64> %12 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %13 = bitcast <8 x i32> %i.bc to <4 x i64>
  %14 = xor <4 x i64> %10, %13
  %i.bd = bitcast <4 x i64> %14 to <32 x i8>
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
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %15 = bitcast <32 x i8> %i.bq to <4 x i64>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %16 = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %17 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %18 = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1XrQGnCAlpr_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsgGgPqgSfnMH_7storage.exit, label %bb.a

_RNvMNtNtCs1XrQGnCAlpr_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsgGgPqgSfnMH_7storage.exit: ; preds = %bb.a
  %19 = bitcast <4 x i64> %18 to <8 x i32>
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %19, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %4                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %6                 ; 2 uses
  %20 = bitcast <4 x i64> %17 to <8 x i32>
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %20, %i.cm                ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %4                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %6                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !21
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !22
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !21
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !22
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !21
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !22
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !21
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !22
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !21
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !22
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !21
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !22
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !21
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !22
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !21
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !22
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %21 = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <1 x i32> zeroinitializer
  store <1 x i64> %21, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECsgGgPqgSfnMH_7storage(<2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCs931dBByOpY6_6issues6broker11EventBrokerE3newCsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCs931dBByOpY6_6issues6broker11EventBrokerENCNvMsd_BP_BM_3new0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsgGgPqgSfnMH_7storage15content_manager11conversions20strict_mode_from_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(288) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.574 = alloca [24 x i8], align 8          ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i32, ptr %i.h, align 8, !range !25, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = load i32, ptr %i.l, align 8, !range !25, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load i32, ptr %i.p, align 8, !range !25, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.s = load i32, ptr %i.r, align 4
  %i.t = load <4 x i8>, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.v = load i32, ptr %i.u, align 8, !range !25, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.x = load float, ptr %i.w, align 4
  %i.y = load i64, ptr %1, align 8, !range !26, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !26, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !range !26, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = load i32, ptr %i.aj, align 8, !range !25, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ao = load i32, ptr %i.an, align 8, !range !25, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !range !26, !noundef !4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !range !26, !noundef !4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !range !26, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !range !26, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.038.0.copyload = load ptr, ptr %i.bh, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bk = load i64, ptr %i.bj, align 8, !range !26, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bo = load i32, ptr %i.bn, align 8, !range !25, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.bq = load i32, ptr %i.bp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %.sroa.038.0.copyload, null ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.038.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs1T_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types27StrictModeMultivectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtB8_6qdrant27StrictModeMultivectorConfigE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %bb.e unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.574)
  %.sroa.075.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.not85 = icmp eq ptr %.sroa.075.0.copyload, null
  br i1 %.not85, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.075.0.copyload, ptr %i.b, align 8
  %.sroa.577.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.577.0..sroa_idx78, ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs1U_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types22StrictModeSparseConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtB8_6qdrant22StrictModeSparseConfigE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.j unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.j
  %.sroa.073.0 = phi i64 [ 1, %bb.j ], [ 0, %bb.d ]
  %i.bt = trunc nuw i64 %i.be to i1
  %.sroa.572.0 = select i1 %i.bt, i64 %i.bg, i64 undef
  %i.bu = trunc nuw i64 %i.ba to i1
  %.sroa.570.0 = select i1 %i.bu, i64 %i.bc, i64 undef
  %i.bv = trunc nuw i64 %i.aw to i1
  %.sroa.568.0 = select i1 %i.bv, i64 %i.ay, i64 undef
  %i.bw = trunc nuw i64 %i.as to i1
  %.sroa.566.0 = select i1 %i.bw, i64 %i.au, i64 undef
  %i.bx = trunc nuw i32 %i.ao to i1
  %.sroa.063.0 = zext nneg i32 %i.ao to i64
  %i.by = zext i32 %i.aq to i64
  %.sroa.564.0 = select i1 %i.bx, i64 %i.by, i64 undef
  %i.bz = trunc nuw i32 %i.ak to i1
  %.sroa.061.0 = zext nneg i32 %i.ak to i64
  %i.ca = zext i32 %i.am to i64
  %.sroa.562.0 = select i1 %i.bz, i64 %i.ca, i64 undef
  %i.cb = trunc nuw i64 %i.ag to i1
  %.sroa.560.0 = select i1 %i.cb, i64 %i.ai, i64 undef
  %i.cc = trunc nuw i64 %i.ac to i1
  %.sroa.558.0 = select i1 %i.cc, i64 %i.ae, i64 undef
  %i.cd = trunc nuw i64 %i.y to i1
  %.sroa.556.0 = select i1 %i.cd, i64 %i.aa, i64 undef
  %i.ce = trunc nuw i32 %i.v to i1
  %.sroa.053.0 = zext nneg i32 %i.v to i64
  %i.cf = fpext float %i.x to double
  %.sroa.554.0 = select i1 %i.ce, double %i.cf, double undef
  %i.cg = trunc nuw i32 %i.q to i1
  %.sroa.051.0 = zext nneg i32 %i.q to i64
  %i.ch = zext i32 %i.s to i64
  %.sroa.552.0 = select i1 %i.cg, i64 %i.ch, i64 undef
  %i.ci = trunc nuw i32 %i.m to i1
  %.sroa.049.0 = zext nneg i32 %i.m to i64
  %i.cj = zext i32 %i.o to i64
  %.sroa.550.0 = select i1 %i.ci, i64 %i.cj, i64 undef
  %i.ck = trunc nuw i32 %i.i to i1
  %.sroa.047.0 = zext nneg i32 %i.i to i64
  %i.cl = zext i32 %i.k to i64
  %.sroa.548.0 = select i1 %i.ck, i64 %i.cl, i64 undef
  %i.cm = trunc nuw i64 %i.bk to i1
  %. = select i1 %i.cm, i64 %i.bm, i64 undef
  %i.cn = trunc nuw i32 %i.bo to i1
  %i.co = trunc i32 %i.bq to i8
  %.sroa.582.0 = select i1 %i.cn, i8 %i.co, i8 undef
  %i.cp = trunc nuw nsw i32 %i.bo to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 290
  store i64 %.sroa.047.0, ptr %0, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.548.0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.049.0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.550.0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.051.0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.552.0, ptr %i.cv, align 8
  store <4 x i8> %i.t, ptr %i.cq, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.053.0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.554.0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.y, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.556.0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ac, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.558.0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ag, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.560.0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.061.0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.562.0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.063.0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.564.0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.as, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.566.0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.aw, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.568.0, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.ba, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.570.0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.be, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.sroa.572.0, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.073.0, ptr %i.dr, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.574.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.574, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.bk, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %., ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.cp, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %.sroa.582.0, ptr %i.dv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.574)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %.noexc, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.noexc unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.574, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.noexc:                                           ; preds = %bb.l, %bb.m, %bb.i, %bb.h
  %.pn91 = phi { ptr, i32 } [ %i.dw, %bb.i ], [ %i.dw, %bb.h ], [ %i.dz, %bb.m ], [ %i.dz, %bb.l ]
  resume { ptr, i32 } %.pn91

bb.l:                                             ; preds = %bb.b
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %i.f, align 8, !alias.scope !27, !noundef !4
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %.noexc, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.noexc unwind label %bb.k
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #3 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs1XrQGnCAlpr_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !31 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !31 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !31 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !31 ; 6 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0> ; 2 uses
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0> ; 2 uses
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0> ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.89.0.i.i = phi <2 x i64> [ %i.h, %bb.b ], [ %19, %bb.c ]
  %.sroa.64.0.i.i = phi <2 x i64> [ %i.g, %bb.b ], [ %18, %bb.c ]
  %.sroa.39.0.i.i = phi <2 x i64> [ %i.f, %bb.b ], [ %17, %bb.c ]
  %.sroa.16.0.i.i = phi <2 x i64> [ %.sroa.015.0.copyload.i, %bb.b ], [ %16, %bb.c ]
  %.sroa.042.0102.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.n = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.o = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.q = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.s = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0102.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %i.j, %i.i                 ; 2 uses
  %2 = bitcast <2 x i64> %.sroa.16.0.i.i to <4 x i32>
  %i.w = xor <4 x i32> %i.v, %2                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %i.k                 ; 2 uses
  %i.z = xor <4 x i32> %i.y, %i.j                 ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.m, %i.l                ; 2 uses
  %3 = bitcast <2 x i64> %.sroa.39.0.i.i to <4 x i32>
  %i.ai = xor <4 x i32> %i.ah, %3                 ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.n               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.m               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.p, %i.o                ; 2 uses
  %4 = bitcast <2 x i64> %.sroa.64.0.i.i to <4 x i32>
  %i.au = xor <4 x i32> %i.at, %4                 ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.q               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.p               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.s, %i.r                ; 2 uses
  %5 = bitcast <2 x i64> %.sroa.89.0.i.i to <4 x i32>
  %i.bg = xor <4 x i32> %i.bf, %5                 ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.s               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %6 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %7 = add <4 x i32> %i.ag, %i.bs                 ; 2 uses
  %8 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.by = xor <4 x i32> %7, %8                    ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %7                 ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %9 = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %10 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = xor <4 x i32> %i.cj, %10                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %11 = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %13 = bitcast <4 x i32> %i.dd to <2 x i64>
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %6                 ; 2 uses
  %14 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.di = xor <4 x i32> %i.dh, %14                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %15 = bitcast <4 x i32> %i.dp to <2 x i64>
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage.exit, label %bb.c

_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %20 = bitcast <2 x i64> %16 to <4 x i32>
  %21 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32>
  %i.ee = add <4 x i32> %20, %21
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %22 = bitcast <2 x i64> %17 to <4 x i32>
  %23 = bitcast <2 x i64> %i.f to <4 x i32>
  %i.ei = add <4 x i32> %22, %23
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %24 = bitcast <2 x i64> %18 to <4 x i32>
  %25 = bitcast <2 x i64> %i.g to <4 x i32>
  %i.em = add <4 x i32> %24, %25
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %26 = bitcast <2 x i64> %19 to <4 x i32>
  %27 = bitcast <2 x i64> %i.h to <4 x i32>
  %i.eq = add <4 x i32> %26, %27
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !32, !noalias !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !32, !noalias !4
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !31
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECsgGgPqgSfnMH_7storage(<2 x i64> %i.er) #11
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !31
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCs931dBByOpY6_6issues6broker11EventBrokerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !33, !noundef !4 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i32 -1 release, align 4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = and i32 %i.d, -1073741825
  %or.cond = icmp eq i32 %i.e, -2147483648
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.b, i32 noundef %i.d)
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCs931dBByOpY6_6issues6broker11EventBrokerENCNvMsd_BP_BM_3new0ECsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1T_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types27StrictModeMultivectorConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtB8_6qdrant27StrictModeMultivectorConfigE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1U_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types22StrictModeSparseConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtB8_6qdrant22StrictModeSparseConfigE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #9

attributes #0 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = distinct !{!5, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!6 = distinct !{!6, !5, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!7 = distinct !{!7, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!8 = distinct !{!8, !7, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!9 = distinct !{!9, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!10 = distinct !{!10, !9, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11 = distinct !{!11, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!12 = distinct !{!12, !11, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!13 = distinct !{!13, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgGgPqgSfnMH_7storage"}
!14 = distinct !{!14, !13, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgGgPqgSfnMH_7storage: argument 0"}
!15 = distinct !{!15, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgGgPqgSfnMH_7storage"}
!16 = distinct !{!16, !15, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgGgPqgSfnMH_7storage: argument 0"}
!17 = !{!6}
!18 = !{!8}
!19 = !{!10}
!20 = !{!12}
!21 = !{!14}
!22 = !{!16}
!23 = distinct !{!23, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22StrictModeSparseConfigEECsgGgPqgSfnMH_7storage"}
!24 = distinct !{!24, !23, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22StrictModeSparseConfigEECsgGgPqgSfnMH_7storage: argument 0"}
!25 = !{i32 0, i32 2}
!26 = !{i64 0, i64 2}
!27 = !{!24}
!28 = distinct !{!28, i1 true, !"_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage"}
!29 = distinct !{!29, !28, !"_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage: argument 0"}
!30 = distinct !{!30, !28, !"_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgGgPqgSfnMH_7storage: argument 1"}
!31 = !{!29}
!32 = !{!30}
!33 = !{i64 4}
!34 = !{!"branch_weights", i32 1, i32 4001}
end_hunk_0
