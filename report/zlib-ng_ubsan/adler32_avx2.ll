Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/adler32_avx2?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [62 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/adler32_avx2.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 10, [32 x i8] c"'uint32_t' (aka 'unsigned int')\00" }
@1 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 13 }, ptr @1 }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 66, i32 64 } }
@4 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 67, i32 17 } }
@5 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 75, i32 52 } }
@6 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 76, i32 21 } }
@7 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 102, i32 17 } }
@8 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 109, i32 21 } }
@.src.1 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/adler32_p.h\00", align 1
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 42, i32 15 }, ptr @1 }
@10 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 43, i32 20 } }
@11 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 6, [32 x i8] c"'uint8_t' (aka 'unsigned char')\00" }
@12 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 43, i32 9 }, ptr @11, i8 0, i8 1 }
@13 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 22 } }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 15 }, ptr @0 }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 45, i32 14 }, ptr @0 }
@16 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 32, i32 22 } }
@17 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 32, i32 15 }, ptr @0 }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 33, i32 14 }, ptr @0 }
@.src.2 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/avxintrin.h\00", align 1
@19 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 -1, i16 0, [24 x i8] c"'struct __storeu_si256'\00" }
@20 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3319, i32 34 }, ptr @19, i8 0, i8 3 }
@21 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'__m256i_u' (vector of 4 'long long' values)\00" }
@22 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3319, i32 34 }, ptr @21, i8 0, i8 1 }

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_avx2(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = call fastcc i32 @adler32_fold_copy_impl(i32 noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @adler32_fold_copy_impl(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 !func_sanitize !18 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = lshr i32 %0, 16
  %6 = and i32 %0, 65535
  %.not132 = icmp eq i32 %4, 0                    ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ap, %bb.c
  %.0122 = phi i32 [ %5, %bb.c ], [ %17, %bb.ap ] ; 3 uses
  %.0114 = phi i32 [ %6, %bb.c ], [ %i.eg, %bb.ap ] ; 3 uses
  %.0112 = phi i64 [ %3, %bb.c ], [ %i.ba, %bb.ap ] ; 7 uses
  %.0108 = phi ptr [ %2, %bb.c ], [ %.3111.lcssa, %bb.ap ] ; 5 uses
  %.0106 = phi ptr [ %1, %bb.c ], [ %.4.lcssa, %bb.ap ] ; 3 uses
  %.0105 = phi i32 [ %0, %bb.c ], [ %i.ei, %bb.ap ] ; 2 uses
  %i.c = icmp ult i64 %.0112, 16
  br i1 %i.c, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  br i1 %.not132, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = add nsw i64 %.0112, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.f
  %i.e = phi i64 [ %i.x, %bb.o ], [ %i.d, %bb.f ]
  %.023.i = phi i32 [ %i.s, %bb.o ], [ %.0122, %bb.f ] ; 2 uses
  %.01122.i = phi ptr [ %i.i, %bb.o ], [ %.0106, %bb.f ] ; 6 uses
  %.01221.i = phi ptr [ %i.f, %bb.o ], [ %.0108, %bb.f ] ; 4 uses
  %.01320.i = phi i32 [ %i.n, %bb.o ], [ %.0114, %bb.f ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01221.i, i64 1
  %.not16.i = icmp eq ptr %.01221.i, inttoptr (i64 -1 to ptr)
  br i1 %.not16.i, label %bb.g, label %bb.h, !prof !19, !nosanitize !20

bb.g:                                             ; preds = %.lr.ph.i
  %i.g = ptrtoint ptr %.01221.i to i64, !nosanitize !20
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.g, i64 0) #6, !nosanitize !20
  br label %bb.h, !nosanitize !20

bb.h:                                             ; preds = %.lr.ph.i, %bb.g
  %i.h = load i8, ptr %.01221.i, align 1, !tbaa !21
  %.not317 = icmp eq ptr %.01122.i, null, !nosanitize !20
  %.pre.i = ptrtoint ptr %.01122.i to i64, !nosanitize !20 ; 3 uses
  br i1 %.not317, label %bb.i, label %._crit_edge28.i, !prof !19, !nosanitize !20

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @12, i64 %.pre.i) #6, !nosanitize !20
  br label %._crit_edge28.i, !nosanitize !20

._crit_edge28.i:                                  ; preds = %bb.i, %bb.h
  store i8 %i.h, ptr %.01122.i, align 1, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %.01122.i, i64 1
  %.not18.i = icmp eq ptr %.01122.i, inttoptr (i64 -1 to ptr)
  br i1 %.not18.i, label %bb.j, label %bb.k, !prof !19, !nosanitize !20

bb.j:                                             ; preds = %._crit_edge28.i
  %i.j = add i64 %.pre.i, 1, !nosanitize !20
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @13, i64 %.pre.i, i64 %i.j) #6, !nosanitize !20
  br label %bb.k, !nosanitize !20

bb.k:                                             ; preds = %._crit_edge28.i, %bb.j
  %i.k = load i8, ptr %.01122.i, align 1, !tbaa !21 ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.01320.i, i32 %i.l), !nosanitize !20 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 0, !nosanitize !20 ; 4 uses
  %i.o = extractvalue { i32, i1 } %i.m, 1, !nosanitize !20
  br i1 %i.o, label %bb.l, label %bb.m, !prof !19, !nosanitize !20

bb.l:                                             ; preds = %bb.k
  %i.p = zext i32 %.01320.i to i64, !nosanitize !20
  %i.q = zext i8 %i.k to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @14, i64 %i.p, i64 %i.q) #7, !nosanitize !20
  br label %bb.m, !nosanitize !20

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.023.i, i32 %i.n), !nosanitize !20 ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 0, !nosanitize !20 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.r, 1, !nosanitize !20
  br i1 %i.t, label %bb.n, label %bb.o, !prof !19, !nosanitize !20

bb.n:                                             ; preds = %bb.m
  %i.u = zext i32 %.023.i to i64, !nosanitize !20
  %i.v = zext i32 %i.n to i64, !nosanitize !20
  call void @__ubsan_handle_add_overflow(ptr nonnull @15, i64 %i.u, i64 %i.v) #7, !nosanitize !20
  br label %bb.o, !nosanitize !20

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.w = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.e, i64 1), !nosanitize !20 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 0, !nosanitize !20
  %i.y = extractvalue { i64, i1 } %i.w, 1, !nosanitize !20
  br i1 %i.y, label %adler32_copy_len_16.exit, label %.lr.ph.i, !prof !22, !llvm.loop !13, !nosanitize !20

adler32_copy_len_16.exit:                         ; preds = %bb.o
  call void @__ubsan_handle_sub_overflow(ptr nonnull @9, i64 0, i64 1) #7, !nosanitize !20
  %7 = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.n, i64 1
  %9 = urem <2 x i32> %8, splat (i32 65521)       ; 2 uses
  %10 = extractelement <2 x i32> %9, i64 0
  %i.z = shl nuw i32 %10, 16
  %11 = extractelement <2 x i32> %9, i64 1
  %i.aa = or disjoint i32 %i.z, %11
  br label %.loopexit

.preheader:                                       ; preds = %bb.e, %bb.u
  %.017.i = phi i32 [ %i.am, %bb.u ], [ %.0122, %bb.e ] ; 2 uses
  %.0916.i = phi i64 [ %i.ab, %bb.u ], [ %.0112, %bb.e ]
  %.01015.i = phi ptr [ %i.ac, %bb.u ], [ %.0108, %bb.e ] ; 4 uses
  %.01114.i = phi i32 [ %i.ah, %bb.u ], [ %.0114, %bb.e ] ; 2 uses
  %i.ab = add nsw i64 %.0916.i, -1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01015.i, i64 1
  %.not12.i = icmp eq ptr %.01015.i, inttoptr (i64 -1 to ptr)
  br i1 %.not12.i, label %bb.p, label %bb.q, !prof !19, !nosanitize !20

bb.p:                                             ; preds = %.preheader
  %i.ad = ptrtoint ptr %.01015.i to i64, !nosanitize !20
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @16, i64 %i.ad, i64 0) #6, !nosanitize !20
  br label %bb.q, !nosanitize !20

bb.q:                                             ; preds = %.preheader, %bb.p
  %i.ae = load i8, ptr %.01015.i, align 1, !tbaa !21 ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.01114.i, i32 %i.af), !nosanitize !20 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 0, !nosanitize !20 ; 4 uses
  %i.ai = extractvalue { i32, i1 } %i.ag, 1, !nosanitize !20
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !19, !nosanitize !20

bb.r:                                             ; preds = %bb.q
  %i.aj = zext i32 %.01114.i to i64, !nosanitize !20
  %i.ak = zext i8 %i.ae to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @17, i64 %i.aj, i64 %i.ak) #7, !nosanitize !20
  br label %bb.s, !nosanitize !20

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.017.i, i32 %i.ah), !nosanitize !20 ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.al, 0, !nosanitize !20 ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.al, 1, !nosanitize !20
  br i1 %i.an, label %bb.t, label %bb.u, !prof !19, !nosanitize !20

bb.t:                                             ; preds = %bb.s
  %i.ao = zext i32 %.017.i to i64, !nosanitize !20
  %i.ap = zext i32 %i.ah to i64, !nosanitize !20
  call void @__ubsan_handle_add_overflow(ptr nonnull @18, i64 %i.ao, i64 %i.ap) #7, !nosanitize !20
  br label %bb.u, !nosanitize !20

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %adler32_len_16.exit, label %.preheader, !llvm.loop !14

adler32_len_16.exit:                              ; preds = %bb.u
  %12 = insertelement <2 x i32> poison, i32 %i.am, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.ah, i64 1
  %14 = urem <2 x i32> %13, splat (i32 65521)     ; 2 uses
  %15 = extractelement <2 x i32> %14, i64 0
  %i.aq = shl nuw i32 %15, 16
  %16 = extractelement <2 x i32> %14, i64 1
  %i.ar = or disjoint i32 %i.aq, %16
  br label %.loopexit

bb.v:                                             ; preds = %bb.d
  %i.as = icmp ult i64 %.0112, 32
  br i1 %i.as, label %bb.w, label %.preheader153

bb.w:                                             ; preds = %bb.v
  br i1 %.not132, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = call i32 @adler32_fold_copy_sse42(i32 noundef %.0105, ptr noundef %.0106, ptr noundef %.0108, i64 noundef %.0112) #6
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.au = call i32 @adler32_ssse3(i32 noundef %.0105, ptr noundef %.0108, i64 noundef %.0112) #6
  br label %.loopexit

.preheader153:                                    ; preds = %bb.v, %._crit_edge192
  %.1107202 = phi ptr [ %.4.lcssa, %._crit_edge192 ], [ %.0106, %bb.v ] ; 2 uses
  %.1109201 = phi ptr [ %.3111.lcssa, %._crit_edge192 ], [ %.0108, %bb.v ] ; 2 uses
  %.1113200 = phi i64 [ %i.ba, %._crit_edge192 ], [ %.0112, %bb.v ] ; 4 uses
  %.1115199 = phi i32 [ %i.eg, %._crit_edge192 ], [ %.0114, %bb.v ]
  %.1123198 = phi i32 [ %17, %._crit_edge192 ], [ %.0122, %bb.v ]
  %i.av = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1115199, i64 0
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1123198, i64 0
  %i.ax = call i64 @llvm.umin.i64(i64 %.1113200, i64 5552)
  %i.ay = and i64 %i.ax, 8160                     ; 4 uses
  %i.az = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.1113200, i64 %i.ay), !nosanitize !20 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 0, !nosanitize !20 ; 4 uses
  %i.bb = extractvalue { i64, i1 } %i.az, 1, !nosanitize !20
  br i1 %i.bb, label %bb.z, label %bb.aa, !prof !19, !nosanitize !20

bb.z:                                             ; preds = %.preheader153
  call void @__ubsan_handle_sub_overflow(ptr nonnull @2, i64 %.1113200, i64 %i.ay) #7, !nosanitize !20
  br label %bb.aa, !nosanitize !20

bb.aa:                                            ; preds = %bb.z, %.preheader153
  %i.bc = shufflevector <4 x i32> %i.aw, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bd = shufflevector <4 x i32> %i.av, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.be = icmp ugt i64 %.1113200, 63
  br i1 %i.be, label %.lr.ph, label %.lr.ph191.preheader

.lr.ph:                                           ; preds = %bb.aa, %bb.ai
  %.2177 = phi ptr [ %.3, %bb.ai ], [ %.1107202, %bb.aa ] ; 8 uses
  %.2110176 = phi ptr [ %i.bo, %bb.ai ], [ %.1109201, %bb.aa ] ; 6 uses
  %.0116175 = phi i64 [ %i.bt, %bb.ai ], [ %i.ay, %bb.aa ]
  %i.bf = phi <8 x i32> [ %i.ck, %bb.ai ], [ zeroinitializer, %bb.aa ]
  %.0120174 = phi <8 x i32> [ %i.cq, %bb.ai ], [ %i.bd, %bb.aa ] ; 2 uses
  %.0126173 = phi <8 x i32> [ %i.cr, %bb.ai ], [ %i.bc, %bb.aa ]
  %i.bg = phi <8 x i32> [ %i.cs, %bb.ai ], [ zeroinitializer, %bb.aa ]
  %.pre = ptrtoint ptr %.2110176 to i64, !nosanitize !20 ; 4 uses
  %i.bh = load <4 x i64>, ptr %.2110176, align 1, !tbaa !21 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.2110176, i64 32
  %i.bj = add i64 %.pre, 32, !nosanitize !20      ; 2 uses
  %i.bk = icmp ne i64 %i.bj, 0, !nosanitize !20
  %i.bl = icmp ult ptr %.2110176, inttoptr (i64 -32 to ptr)
  %i.bm = and i1 %i.bl, %i.bk, !nosanitize !20
  br i1 %i.bm, label %_mm256_loadu_si256.exit135, label %bb.ab, !prof !24, !nosanitize !20

bb.ab:                                            ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %.pre, i64 %i.bj) #6, !nosanitize !20
  br label %_mm256_loadu_si256.exit135, !nosanitize !20

_mm256_loadu_si256.exit135:                       ; preds = %.lr.ph, %bb.ab
  %i.bn = load <4 x i64>, ptr %i.bi, align 1, !tbaa !21 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.2110176, i64 64 ; 3 uses
  %i.bp = add i64 %.pre, 64, !nosanitize !20      ; 2 uses
  %i.bq = icmp ne i64 %i.bp, 0, !nosanitize !20
  %i.br = icmp ult ptr %.2110176, inttoptr (i64 -64 to ptr)
  %i.bs = and i1 %i.br, %i.bq, !nosanitize !20
  br i1 %i.bs, label %bb.ad, label %bb.ac, !prof !24, !nosanitize !20

bb.ac:                                            ; preds = %_mm256_loadu_si256.exit135
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %.pre, i64 %i.bp) #6, !nosanitize !20
  br label %bb.ad, !nosanitize !20

bb.ad:                                            ; preds = %bb.ac, %_mm256_loadu_si256.exit135
  %i.bt = add i64 %.0116175, -64                  ; 4 uses
  %i.bu = bitcast <4 x i64> %i.bh to <32 x i8>    ; 2 uses
  %i.bv = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.bu, <32 x i8> zeroinitializer)
  %i.bw = bitcast <4 x i64> %i.bn to <32 x i8>    ; 2 uses
  %i.bx = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.bw, <32 x i8> zeroinitializer)
  br i1 %.not132, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not315 = icmp eq ptr %.2177, null, !nosanitize !20
  %.pre236 = ptrtoint ptr %.2177 to i64, !nosanitize !20 ; 6 uses
  br i1 %.not315, label %bb.af, label %_mm256_storeu_si256.exit138, !prof !19, !nosanitize !20

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @20, i64 %.pre236) #6, !nosanitize !20
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @22, i64 %.pre236) #6, !nosanitize !20
  br label %_mm256_storeu_si256.exit138, !nosanitize !20

_mm256_storeu_si256.exit138:                      ; preds = %bb.ae, %bb.af
  store <4 x i64> %i.bh, ptr %.2177, align 1, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %.2177, i64 32
  %i.bz = add i64 %.pre236, 32, !nosanitize !20   ; 2 uses
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = icmp ult ptr %.2177, inttoptr (i64 -32 to ptr)
  %i.cc = and i1 %i.cb, %i.ca
  br i1 %i.cc, label %_mm256_storeu_si256.exit137, label %bb.ag, !prof !24, !nosanitize !20

bb.ag:                                            ; preds = %_mm256_storeu_si256.exit138
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @5, i64 %.pre236, i64 %i.bz) #6, !nosanitize !20
  br label %_mm256_storeu_si256.exit137, !nosanitize !20

_mm256_storeu_si256.exit137:                      ; preds = %_mm256_storeu_si256.exit138, %bb.ag
  store <4 x i64> %i.bn, ptr %i.by, align 1, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.2177, i64 64 ; 2 uses
  %i.ce = add i64 %.pre236, 64, !nosanitize !20   ; 2 uses
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = icmp ult ptr %.2177, inttoptr (i64 -64 to ptr)
  %i.ch = and i1 %i.cg, %i.cf
  br i1 %i.ch, label %bb.ai, label %bb.ah, !prof !24, !nosanitize !20

bb.ah:                                            ; preds = %_mm256_storeu_si256.exit137
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %.pre236, i64 %i.ce) #6, !nosanitize !20
  br label %bb.ai, !nosanitize !20

bb.ai:                                            ; preds = %_mm256_storeu_si256.exit137, %bb.ah, %bb.ad
  %.3 = phi ptr [ %.2177, %bb.ad ], [ %i.cd, %bb.ah ], [ %i.cd, %_mm256_storeu_si256.exit137 ] ; 3 uses
  %i.ci = bitcast <4 x i64> %i.bv to <8 x i32>
  %i.cj = add <8 x i32> %.0120174, %i.ci
  %i.ck = add <8 x i32> %i.bf, %.0120174          ; 2 uses
  %i.cl = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bu, <32 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33>)
  %i.cm = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bw, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cn = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cl, <16 x i16> splat (i16 1))
  %i.co = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cm, <16 x i16> splat (i16 1))
  %i.cp = bitcast <4 x i64> %i.bx to <8 x i32>
  %i.cq = add <8 x i32> %i.cj, %i.cp              ; 3 uses
  %i.cr = add <8 x i32> %i.cn, %.0126173          ; 2 uses
  %i.cs = add <8 x i32> %i.co, %i.bg              ; 2 uses
  %i.ct = icmp ugt i64 %i.bt, 63
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.ai
  %i.cu = shl <8 x i32> %i.ck, splat (i32 6)
  %i.cv = add <8 x i32> %i.cr, %i.cs
  %i.cw = add <8 x i32> %i.cv, %i.cu              ; 2 uses
  %.not152184 = icmp eq i64 %i.bt, 0
  br i1 %.not152184, label %._crit_edge192, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %bb.aa, %._crit_edge
  %.4189.ph = phi ptr [ %.1107202, %bb.aa ], [ %.3, %._crit_edge ]
  %.3111188.ph = phi ptr [ %.1109201, %bb.aa ], [ %i.bo, %._crit_edge ]
  %.1117187.ph = phi i64 [ %i.ay, %bb.aa ], [ %i.bt, %._crit_edge ]
  %.1121186.ph = phi <8 x i32> [ %i.bd, %bb.aa ], [ %i.cq, %._crit_edge ]
  %.1127.in185.ph = phi <8 x i32> [ %i.bc, %bb.aa ], [ %i.cw, %._crit_edge ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %bb.ao
  %.4189 = phi ptr [ %.5, %bb.ao ], [ %.4189.ph, %.lr.ph191.preheader ] ; 6 uses
  %.3111188 = phi ptr [ %i.cz, %bb.ao ], [ %.3111188.ph, %.lr.ph191.preheader ] ; 4 uses
  %.1117187 = phi i64 [ %i.de, %bb.ao ], [ %.1117187.ph, %.lr.ph191.preheader ]
  %i.cx = phi <8 x i32> [ %i.do, %bb.ao ], [ zeroinitializer, %.lr.ph191.preheader ]
  %.1121186 = phi <8 x i32> [ %i.dn, %bb.ao ], [ %.1121186.ph, %.lr.ph191.preheader ] ; 2 uses
  %.1127.in185 = phi <8 x i32> [ %i.dr, %bb.ao ], [ %.1127.in185.ph, %.lr.ph191.preheader ]
  %.pre232 = ptrtoint ptr %.3111188 to i64, !nosanitize !20 ; 2 uses
  %i.cy = load <4 x i64>, ptr %.3111188, align 1, !tbaa !21 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.3111188, i64 32 ; 2 uses
  %i.da = add i64 %.pre232, 32, !nosanitize !20   ; 2 uses
  %i.db = icmp ne i64 %i.da, 0, !nosanitize !20
  %i.dc = icmp ult ptr %.3111188, inttoptr (i64 -32 to ptr)
  %i.dd = and i1 %i.dc, %i.db, !nosanitize !20
  br i1 %i.dd, label %bb.ak, label %bb.aj, !prof !24, !nosanitize !20

bb.aj:                                            ; preds = %.lr.ph191
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %.pre232, i64 %i.da) #6, !nosanitize !20
  br label %bb.ak, !nosanitize !20

bb.ak:                                            ; preds = %bb.aj, %.lr.ph191
  %i.de = add i64 %.1117187, -32                  ; 2 uses
  %i.df = bitcast <4 x i64> %i.cy to <32 x i8>    ; 2 uses
  %i.dg = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.df, <32 x i8> zeroinitializer)
  br i1 %.not132, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not316 = icmp eq ptr %.4189, null, !nosanitize !20
  %.pre234 = ptrtoint ptr %.4189 to i64, !nosanitize !20 ; 4 uses
  br i1 %.not316, label %bb.am, label %_mm256_storeu_si256.exit, !prof !19, !nosanitize !20

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @20, i64 %.pre234) #6, !nosanitize !20
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @22, i64 %.pre234) #6, !nosanitize !20
  br label %_mm256_storeu_si256.exit, !nosanitize !20

_mm256_storeu_si256.exit:                         ; preds = %bb.al, %bb.am
  store <4 x i64> %i.cy, ptr %.4189, align 1, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %.4189, i64 32 ; 2 uses
  %i.di = add i64 %.pre234, 32, !nosanitize !20   ; 2 uses
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = icmp ult ptr %.4189, inttoptr (i64 -32 to ptr)
  %i.dl = and i1 %i.dk, %i.dj, !nosanitize !20
  br i1 %i.dl, label %bb.ao, label %bb.an, !prof !24, !nosanitize !20

bb.an:                                            ; preds = %_mm256_storeu_si256.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %.pre234, i64 %i.di) #6, !nosanitize !20
  br label %bb.ao, !nosanitize !20

bb.ao:                                            ; preds = %_mm256_storeu_si256.exit, %bb.an, %bb.ak
  %.5 = phi ptr [ %.4189, %bb.ak ], [ %i.dh, %bb.an ], [ %i.dh, %_mm256_storeu_si256.exit ] ; 2 uses
  %i.dm = bitcast <4 x i64> %i.dg to <8 x i32>
  %i.dn = add <8 x i32> %.1121186, %i.dm          ; 2 uses
  %i.do = add <8 x i32> %i.cx, %.1121186          ; 2 uses
  %i.dp = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.df, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.dq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.dp, <16 x i16> splat (i16 1))
  %i.dr = add <8 x i32> %i.dq, %.1127.in185       ; 2 uses
  %.not152 = icmp eq i64 %i.de, 0
  br i1 %.not152, label %._crit_edge192.loopexit, label %.lr.ph191, !llvm.loop !16

._crit_edge192.loopexit:                          ; preds = %bb.ao
  %i.ds = shl <8 x i32> %i.do, splat (i32 5)
  br label %._crit_edge192

._crit_edge192:                                   ; preds = %._crit_edge192.loopexit, %._crit_edge
  %.1127.in.lcssa = phi <8 x i32> [ %i.cw, %._crit_edge ], [ %i.dr, %._crit_edge192.loopexit ]
  %.1121.lcssa = phi <8 x i32> [ %i.cq, %._crit_edge ], [ %i.dn, %._crit_edge192.loopexit ] ; 2 uses
  %.lcssa159 = phi <8 x i32> [ zeroinitializer, %._crit_edge ], [ %i.ds, %._crit_edge192.loopexit ]
  %.3111.lcssa = phi ptr [ %i.bo, %._crit_edge ], [ %i.cz, %._crit_edge192.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %.3, %._crit_edge ], [ %.5, %._crit_edge192.loopexit ] ; 2 uses
  %i.dt = add <8 x i32> %.lcssa159, %.1127.in.lcssa ; 2 uses
  %i.du = shufflevector <8 x i32> %.1121.lcssa, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dv = shufflevector <8 x i32> %.1121.lcssa, <8 x i32> poison, <4 x i32> <i32 4, i32 6, i32 4, i32 6>
  %i.dw = add <4 x i32> %i.du, %i.dv              ; 2 uses
  %i.dx = shufflevector <8 x i32> %i.dt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dy = shufflevector <8 x i32> %i.dt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = add <4 x i32> %i.dx, %i.dy              ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.eb = add <4 x i32> %i.dz, %i.ea              ; 2 uses
  %i.ec = shufflevector <4 x i32> %i.dw, <4 x i32> %i.eb, <2 x i32> <i32 1, i32 5>
  %i.ed = shufflevector <4 x i32> %i.dw, <4 x i32> %i.eb, <2 x i32> <i32 0, i32 4>
  %i.ee = add <2 x i32> %i.ec, %i.ed
  %i.ef = urem <2 x i32> %i.ee, splat (i32 65521) ; 2 uses
  %17 = extractelement <2 x i32> %i.ef, i64 1     ; 3 uses
  %i.eg = extractelement <2 x i32> %i.ef, i64 0   ; 3 uses
  %18 = icmp ugt i64 %i.ba, 31
  br i1 %18, label %.preheader153, label %bb.ap, !llvm.loop !17

bb.ap:                                            ; preds = %._crit_edge192
  %i.eh = shl nuw i32 %17, 16
  %i.ei = or disjoint i32 %i.eg, %i.eh            ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.ap, %adler32_copy_len_16.exit, %adler32_len_16.exit, %bb.x, %bb.y, %bb.b, %bb.a
  %.1 = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.aa, %adler32_copy_len_16.exit ], [ %i.ar, %adler32_len_16.exit ], [ %i.at, %bb.x ], [ %i.au, %bb.y ], [ %i.ei, %bb.ap ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_fold_copy_avx2(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !func_sanitize !25 {
bb.a:
  %i.a = call fastcc i32 @adler32_fold_copy_impl(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 1)
  ret i32 %i.a
}

declare i32 @adler32_fold_copy_sse42(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @adler32_ssse3(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { uwtable }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nomerge nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{i32 -1056584962, i32 411946090}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !23}
!18 = !{i32 -1056584962, i32 191897224}
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = !{}
!21 = !{!8, !8, i64 0}
!22 = !{!"branch_weights", i32 127, i32 134217473}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"branch_weights", i32 1048575, i32 1}
!25 = !{i32 -1056584962, i32 464585491}
end_hunk_0
