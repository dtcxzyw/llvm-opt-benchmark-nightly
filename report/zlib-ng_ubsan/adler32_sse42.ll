Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/adler32_sse42?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [63 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/adler32_sse42.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 10, [32 x i8] c"'uint32_t' (aka 'unsigned int')\00" }
@1 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 39, i32 13 }, ptr @1 }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 54, i32 53 } }
@4 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 55, i32 17 } }
@5 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 61, i32 45 } }
@6 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 17 } }
@7 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 89, i32 17 } }
@8 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 102, i32 17 } }
@.src.1 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/adler32_p.h\00", align 1
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 42, i32 15 }, ptr @1 }
@10 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 43, i32 20 } }
@11 = private unnamed_addr constant { i16, i16, [44 x i8] } { i16 0, i16 6, [44 x i8] c"'const uint8_t' (aka 'const unsigned char')\00" }
@12 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 43, i32 16 }, ptr @11, i8 0, i8 0 }
@13 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 6, [32 x i8] c"'uint8_t' (aka 'unsigned char')\00" }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 43, i32 9 }, ptr @13, i8 0, i8 1 }
@15 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 22 } }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 15 }, ptr @0 }
@17 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 45, i32 14 }, ptr @0 }
@.src.2 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@18 = private unnamed_addr constant { i16, i16, [29 x i8] } { i16 -1, i16 0, [29 x i8] c"'const struct __loadu_si128'\00" }
@19 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3469, i32 47 }, ptr @18, i8 0, i8 3 }
@20 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const __m128i_u' (vector of 2 'long long' values)\00" }
@21 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3469, i32 47 }, ptr @20, i8 0, i8 0 }
@22 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 -1, i16 0, [24 x i8] c"'struct __storeu_si128'\00" }
@23 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3923, i32 35 }, ptr @22, i8 0, i8 3 }
@24 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'__m128i_u' (vector of 2 'long long' values)\00" }
@25 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3923, i32 35 }, ptr @24, i8 0, i8 1 }

; Function Attrs: nounwind uwtable
define hidden range(i32 0, -983055) i32 @adler32_fold_copy_sse42(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !func_sanitize !16 {
bb.a:
  %i.a = lshr i32 %0, 16
  %i.b = and i32 %0, 65535
  br label %bb.b

bb.b:                                             ; preds = %bb.ae, %bb.a
  %.095 = phi i32 [ %i.a, %bb.a ], [ %10, %bb.ae ] ; 3 uses
  %.093 = phi i32 [ %i.b, %bb.a ], [ %8, %bb.ae ] ; 3 uses
  %.091 = phi i64 [ %3, %bb.a ], [ %i.ai, %bb.ae ] ; 3 uses
  %.087 = phi ptr [ %2, %bb.a ], [ %.390.lcssa, %bb.ae ] ; 2 uses
  %.085 = phi ptr [ %1, %bb.a ], [ %.3.lcssa, %bb.ae ] ; 2 uses
  %i.c = icmp ult i64 %.091, 16
  br i1 %i.c, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.d = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 0, 16) %.091, i64 1), !nosanitize !17 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1, !nosanitize !17
  br i1 %i.e, label %adler32_copy_len_16.exit, label %.lr.ph.i, !prof !18, !nosanitize !17

.lr.ph.i:                                         ; preds = %bb.c, %bb.n
  %.pn.i = phi { i64, i1 } [ %i.ab, %bb.n ], [ %i.d, %bb.c ]
  %.021.i = phi i32 [ %i.x, %bb.n ], [ %.095, %bb.c ] ; 2 uses
  %.01120.i = phi ptr [ %i.n, %bb.n ], [ %.085, %bb.c ] ; 6 uses
  %.01219.i = phi ptr [ %i.g, %bb.n ], [ %.087, %bb.c ] ; 4 uses
  %.01318.i = phi i32 [ %i.s, %bb.n ], [ %.093, %bb.c ] ; 2 uses
  %i.f = extractvalue { i64, i1 } %.pn.i, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.01219.i, i64 1
  %i.h = ptrtoint ptr %.01219.i to i64, !nosanitize !17 ; 3 uses
  %i.i = add i64 %i.h, 1, !nosanitize !17         ; 2 uses
  %i.j = icmp ne ptr %.01219.i, null, !nosanitize !17 ; 2 uses
  %i.k = icmp ne i64 %i.i, 0
  %i.l = and i1 %i.j, %i.k, !nosanitize !17
  br i1 %i.l, label %bb.e, label %bb.d, !prof !19, !nosanitize !17

bb.d:                                             ; preds = %.lr.ph.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.h, i64 %i.i) #4, !nosanitize !17
  br label %bb.e, !nosanitize !17

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  br i1 %i.j, label %bb.g, label %bb.f, !prof !19, !nosanitize !17

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @12, i64 %i.h) #4, !nosanitize !17
  br label %bb.g, !nosanitize !17

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = load i8, ptr %.01219.i, align 1, !tbaa !20
  %.not238 = icmp eq ptr %.01120.i, null, !nosanitize !17
  %.pre.i = ptrtoint ptr %.01120.i to i64, !nosanitize !17 ; 3 uses
  br i1 %.not238, label %bb.h, label %._crit_edge26.i, !prof !21, !nosanitize !17

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @14, i64 %.pre.i) #4, !nosanitize !17
  br label %._crit_edge26.i, !nosanitize !17

._crit_edge26.i:                                  ; preds = %bb.h, %bb.g
  store i8 %i.m, ptr %.01120.i, align 1, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %.01120.i, i64 1
  %.not16.i = icmp eq ptr %.01120.i, inttoptr (i64 -1 to ptr)
  br i1 %.not16.i, label %bb.i, label %bb.j, !prof !21, !nosanitize !17

bb.i:                                             ; preds = %._crit_edge26.i
  %i.o = add i64 %.pre.i, 1, !nosanitize !17
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @15, i64 %.pre.i, i64 %i.o) #4, !nosanitize !17
  br label %bb.j, !nosanitize !17

bb.j:                                             ; preds = %._crit_edge26.i, %bb.i
  %i.p = load i8, ptr %.01120.i, align 1, !tbaa !20 ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.01318.i, i32 %i.q), !nosanitize !17 ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 0, !nosanitize !17 ; 4 uses
  %i.t = extractvalue { i32, i1 } %i.r, 1, !nosanitize !17
  br i1 %i.t, label %bb.k, label %bb.l, !prof !21, !nosanitize !17

bb.k:                                             ; preds = %bb.j
  %i.u = zext i32 %.01318.i to i64, !nosanitize !17
  %i.v = zext i8 %i.p to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @16, i64 %i.u, i64 %i.v) #5, !nosanitize !17
  br label %bb.l, !nosanitize !17

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.w = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.021.i, i32 %i.s), !nosanitize !17 ; 2 uses
  %i.x = extractvalue { i32, i1 } %i.w, 0, !nosanitize !17 ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.w, 1, !nosanitize !17
  br i1 %i.y, label %bb.m, label %bb.n, !prof !21, !nosanitize !17

bb.m:                                             ; preds = %bb.l
  %i.z = zext i32 %.021.i to i64, !nosanitize !17
  %i.aa = zext i32 %i.s to i64, !nosanitize !17
  call void @__ubsan_handle_add_overflow(ptr nonnull @17, i64 %i.z, i64 %i.aa) #5, !nosanitize !17
  br label %bb.n, !nosanitize !17

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.f, i64 1), !nosanitize !17 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1, !nosanitize !17
  br i1 %i.ac, label %adler32_copy_len_16.exit, label %.lr.ph.i, !prof !22, !llvm.loop !12, !nosanitize !17

adler32_copy_len_16.exit:                         ; preds = %bb.n, %bb.c
  %.013.lcssa.i = phi i32 [ %.093, %bb.c ], [ %i.s, %bb.n ]
  %.0.lcssa.i = phi i32 [ %.095, %bb.c ], [ %i.x, %bb.n ]
  call void @__ubsan_handle_sub_overflow(ptr nonnull @9, i64 0, i64 1) #5, !nosanitize !17
  %4 = urem i32 %.0.lcssa.i, 65521
  %5 = urem i32 %.013.lcssa.i, 65521
  %i.ad = shl nuw i32 %4, 16
  %i.ae = or disjoint i32 %i.ad, %5
  br label %bb.ag

.preheader:                                       ; preds = %bb.b, %._crit_edge151
  %.186161 = phi ptr [ %.3.lcssa, %._crit_edge151 ], [ %.085, %bb.b ] ; 2 uses
  %.188160 = phi ptr [ %.390.lcssa, %._crit_edge151 ], [ %.087, %bb.b ] ; 2 uses
  %.192159 = phi i64 [ %i.ai, %._crit_edge151 ], [ %.091, %bb.b ] ; 4 uses
  %.194158 = phi i32 [ %8, %._crit_edge151 ], [ %.093, %bb.b ]
  %.196157 = phi i32 [ %10, %._crit_edge151 ], [ %.095, %bb.b ]
  %i.af = call i64 @llvm.umin.i64(i64 %.192159, i64 5552)
  %i.ag = and i64 %i.af, 8176                     ; 4 uses
  %i.ah = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.192159, i64 %i.ag), !nosanitize !17 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 0, !nosanitize !17 ; 4 uses
  %i.aj = extractvalue { i64, i1 } %i.ah, 1, !nosanitize !17
  br i1 %i.aj, label %bb.o, label %bb.p, !prof !21, !nosanitize !17

bb.o:                                             ; preds = %.preheader
  call void @__ubsan_handle_sub_overflow(ptr nonnull @2, i64 %.192159, i64 %i.ag) #5, !nosanitize !17
  br label %bb.p, !nosanitize !17

bb.p:                                             ; preds = %bb.o, %.preheader
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.194158, i64 0 ; 2 uses
  %i.al = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.196157, i64 0 ; 2 uses
  %i.am = icmp ugt i64 %.192159, 31
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.x
  %.0136 = phi i64 [ %i.bb, %bb.x ], [ %i.ag, %bb.p ]
  %.2135 = phi ptr [ %i.bl, %bb.x ], [ %.186161, %bb.p ] ; 7 uses
  %.289134 = phi ptr [ %i.aw, %bb.x ], [ %.188160, %bb.p ] ; 7 uses
  %i.an = phi <4 x i32> [ %i.ca, %bb.x ], [ zeroinitializer, %bb.p ]
  %.098.in133 = phi <4 x i32> [ %i.bz, %bb.x ], [ %i.al, %bb.p ]
  %.0100.in132 = phi <4 x i32> [ %i.by, %bb.x ], [ %i.ak, %bb.p ] ; 2 uses
  %i.ao = phi <4 x i32> [ %i.bu, %bb.x ], [ zeroinitializer, %bb.p ]
  %.not234 = icmp eq ptr %.289134, null, !nosanitize !17
  %.pre = ptrtoint ptr %.289134 to i64, !nosanitize !17 ; 6 uses
  br i1 %.not234, label %bb.q, label %_mm_loadu_si128.exit107, !prof !21, !nosanitize !17

bb.q:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @19, i64 %.pre) #4, !nosanitize !17
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @21, i64 %.pre) #4, !nosanitize !17
  br label %_mm_loadu_si128.exit107, !nosanitize !17

_mm_loadu_si128.exit107:                          ; preds = %.lr.ph, %bb.q
  %i.ap = load <2 x i64>, ptr %.289134, align 1, !tbaa !20 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.289134, i64 16
  %i.ar = add i64 %.pre, 16, !nosanitize !17      ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = icmp ult ptr %.289134, inttoptr (i64 -16 to ptr)
  %i.au = and i1 %i.at, %i.as
  br i1 %i.au, label %_mm_loadu_si128.exit106, label %bb.r, !prof !19, !nosanitize !17

bb.r:                                             ; preds = %_mm_loadu_si128.exit107
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %.pre, i64 %i.ar) #4, !nosanitize !17
  br label %_mm_loadu_si128.exit106, !nosanitize !17

_mm_loadu_si128.exit106:                          ; preds = %_mm_loadu_si128.exit107, %bb.r
  %i.av = load <2 x i64>, ptr %i.aq, align 1, !tbaa !20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.289134, i64 32 ; 2 uses
  %i.ax = add i64 %.pre, 32, !nosanitize !17      ; 2 uses
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = icmp ult ptr %.289134, inttoptr (i64 -32 to ptr)
  %i.ba = and i1 %i.az, %i.ay
  br i1 %i.ba, label %bb.t, label %bb.s, !prof !19, !nosanitize !17

bb.s:                                             ; preds = %_mm_loadu_si128.exit106
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %.pre, i64 %i.ax) #4, !nosanitize !17
  br label %bb.t, !nosanitize !17

bb.t:                                             ; preds = %bb.s, %_mm_loadu_si128.exit106
  %i.bb = add i64 %.0136, -32                     ; 3 uses
  %i.bc = bitcast <2 x i64> %i.ap to <16 x i8>    ; 2 uses
  %i.bd = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bc, <16 x i8> zeroinitializer)
  %i.be = bitcast <2 x i64> %i.av to <16 x i8>    ; 2 uses
  %i.bf = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.be, <16 x i8> zeroinitializer)
  %.not235 = icmp eq ptr %.2135, null, !nosanitize !17
  %.pre183 = ptrtoint ptr %.2135 to i64, !nosanitize !17 ; 6 uses
  br i1 %.not235, label %bb.u, label %_mm_storeu_si128.exit109, !prof !21, !nosanitize !17

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @23, i64 %.pre183) #4, !nosanitize !17
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @25, i64 %.pre183) #4, !nosanitize !17
  br label %_mm_storeu_si128.exit109, !nosanitize !17

_mm_storeu_si128.exit109:                         ; preds = %bb.t, %bb.u
  store <2 x i64> %i.ap, ptr %.2135, align 1, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %.2135, i64 16
  %i.bh = add i64 %.pre183, 16, !nosanitize !17   ; 2 uses
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = icmp ult ptr %.2135, inttoptr (i64 -16 to ptr)
  %i.bk = and i1 %i.bj, %i.bi
  br i1 %i.bk, label %_mm_storeu_si128.exit108, label %bb.v, !prof !19, !nosanitize !17

bb.v:                                             ; preds = %_mm_storeu_si128.exit109
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @5, i64 %.pre183, i64 %i.bh) #4, !nosanitize !17
  br label %_mm_storeu_si128.exit108, !nosanitize !17

_mm_storeu_si128.exit108:                         ; preds = %_mm_storeu_si128.exit109, %bb.v
  store <2 x i64> %i.av, ptr %i.bg, align 1, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %.2135, i64 32 ; 2 uses
  %i.bm = add i64 %.pre183, 32, !nosanitize !17   ; 2 uses
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = icmp ult ptr %.2135, inttoptr (i64 -32 to ptr)
  %i.bp = and i1 %i.bo, %i.bn
  br i1 %i.bp, label %bb.x, label %bb.w, !prof !19, !nosanitize !17

bb.w:                                             ; preds = %_mm_storeu_si128.exit108
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %.pre183, i64 %i.bm) #4, !nosanitize !17
  br label %bb.x, !nosanitize !17

bb.x:                                             ; preds = %bb.w, %_mm_storeu_si128.exit108
  %i.bq = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.bc, <16 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17>)
  %i.br = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.be, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bs = bitcast <2 x i64> %i.bd to <4 x i32>
  %i.bt = add <4 x i32> %.0100.in132, %i.bs
  %i.bu = add <4 x i32> %.0100.in132, %i.ao       ; 2 uses
  %i.bv = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bq, <8 x i16> splat (i16 1))
  %i.bw = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> splat (i16 1))
  %i.bx = bitcast <2 x i64> %i.bf to <4 x i32>
  %i.by = add <4 x i32> %i.bt, %i.bx              ; 2 uses
  %i.bz = add <4 x i32> %i.bv, %.098.in133        ; 2 uses
  %i.ca = add <4 x i32> %i.bw, %i.an              ; 2 uses
  %i.cb = icmp ugt i64 %i.bb, 31
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %bb.x
  %i.cc = shl <4 x i32> %i.bu, splat (i32 5)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %.lcssa125 = phi <4 x i32> [ zeroinitializer, %bb.p ], [ %i.cc, %._crit_edge.loopexit ]
  %.0100.in.lcssa = phi <4 x i32> [ %i.ak, %bb.p ], [ %i.by, %._crit_edge.loopexit ] ; 2 uses
  %.098.in.lcssa = phi <4 x i32> [ %i.al, %bb.p ], [ %i.bz, %._crit_edge.loopexit ]
  %.lcssa124 = phi <4 x i32> [ zeroinitializer, %bb.p ], [ %i.ca, %._crit_edge.loopexit ]
  %.289.lcssa = phi ptr [ %.188160, %bb.p ], [ %i.aw, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi ptr [ %.186161, %bb.p ], [ %i.bl, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.ag, %bb.p ], [ %i.bb, %._crit_edge.loopexit ] ; 2 uses
  %i.cd = add <4 x i32> %.098.in.lcssa, %.lcssa125
  %i.ce = add <4 x i32> %i.cd, %.lcssa124         ; 2 uses
  %.not122143 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not122143, label %._crit_edge151, label %.lr.ph150

.lr.ph150:                                        ; preds = %._crit_edge, %bb.ad
  %.1148 = phi i64 [ %i.cm, %bb.ad ], [ %.0.lcssa, %._crit_edge ]
  %.3147 = phi ptr [ %i.cv, %bb.ad ], [ %.2.lcssa, %._crit_edge ] ; 5 uses
  %.390146 = phi ptr [ %i.ch, %bb.ad ], [ %.289.lcssa, %._crit_edge ] ; 5 uses
  %.199.in145 = phi <4 x i32> [ %i.cu, %bb.ad ], [ %i.ce, %._crit_edge ]
  %.1101.in144 = phi <4 x i32> [ %i.cr, %bb.ad ], [ %.0100.in.lcssa, %._crit_edge ] ; 2 uses
  %i.cf = phi <4 x i32> [ %i.cs, %bb.ad ], [ zeroinitializer, %._crit_edge ]
  %.not236 = icmp eq ptr %.390146, null, !nosanitize !17
  %.pre185 = ptrtoint ptr %.390146 to i64, !nosanitize !17 ; 4 uses
  br i1 %.not236, label %bb.y, label %_mm_loadu_si128.exit, !prof !21, !nosanitize !17

bb.y:                                             ; preds = %.lr.ph150
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @19, i64 %.pre185) #4, !nosanitize !17
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @21, i64 %.pre185) #4, !nosanitize !17
  br label %_mm_loadu_si128.exit, !nosanitize !17

_mm_loadu_si128.exit:                             ; preds = %.lr.ph150, %bb.y
  %i.cg = load <2 x i64>, ptr %.390146, align 1, !tbaa !20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.390146, i64 16 ; 2 uses
  %i.ci = add i64 %.pre185, 16, !nosanitize !17   ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = icmp ult ptr %.390146, inttoptr (i64 -16 to ptr)
  %i.cl = and i1 %i.ck, %i.cj, !nosanitize !17
  br i1 %i.cl, label %bb.aa, label %bb.z, !prof !19, !nosanitize !17

bb.z:                                             ; preds = %_mm_loadu_si128.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %.pre185, i64 %i.ci) #4, !nosanitize !17
  br label %bb.aa, !nosanitize !17

bb.aa:                                            ; preds = %bb.z, %_mm_loadu_si128.exit
  %i.cm = add i64 %.1148, -16                     ; 2 uses
  %i.cn = bitcast <2 x i64> %i.cg to <16 x i8>    ; 2 uses
  %i.co = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cn, <16 x i8> zeroinitializer)
  %i.cp = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.cn, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cq = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cr = add <4 x i32> %.1101.in144, %i.cq       ; 2 uses
  %i.cs = add <4 x i32> %.1101.in144, %i.cf       ; 2 uses
  %i.ct = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cp, <8 x i16> splat (i16 1))
  %i.cu = add <4 x i32> %i.ct, %.199.in145        ; 2 uses
  %.not237 = icmp eq ptr %.3147, null, !nosanitize !17
  %.pre187 = ptrtoint ptr %.3147 to i64, !nosanitize !17 ; 4 uses
  br i1 %.not237, label %bb.ab, label %_mm_storeu_si128.exit, !prof !21, !nosanitize !17

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @23, i64 %.pre187) #4, !nosanitize !17
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @25, i64 %.pre187) #4, !nosanitize !17
  br label %_mm_storeu_si128.exit, !nosanitize !17

_mm_storeu_si128.exit:                            ; preds = %bb.aa, %bb.ab
  store <2 x i64> %i.cg, ptr %.3147, align 1, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %.3147, i64 16 ; 2 uses
  %i.cw = add i64 %.pre187, 16, !nosanitize !17   ; 2 uses
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = icmp ult ptr %.3147, inttoptr (i64 -16 to ptr)
  %i.cz = and i1 %i.cy, %i.cx, !nosanitize !17
  br i1 %i.cz, label %bb.ad, label %bb.ac, !prof !19, !nosanitize !17

bb.ac:                                            ; preds = %_mm_storeu_si128.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %.pre187, i64 %i.cw) #4, !nosanitize !17
  br label %bb.ad, !nosanitize !17

bb.ad:                                            ; preds = %bb.ac, %_mm_storeu_si128.exit
  %.not122 = icmp eq i64 %i.cm, 0
  br i1 %.not122, label %._crit_edge151.loopexit, label %.lr.ph150, !llvm.loop !14

._crit_edge151.loopexit:                          ; preds = %bb.ad
  %i.da = shl <4 x i32> %i.cs, splat (i32 4)
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit, %._crit_edge
  %.lcssa126 = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.da, %._crit_edge151.loopexit ]
  %.1101.in.lcssa = phi <4 x i32> [ %.0100.in.lcssa, %._crit_edge ], [ %i.cr, %._crit_edge151.loopexit ] ; 2 uses
  %.199.in.lcssa = phi <4 x i32> [ %i.ce, %._crit_edge ], [ %i.cu, %._crit_edge151.loopexit ]
  %.390.lcssa = phi ptr [ %.289.lcssa, %._crit_edge ], [ %i.ch, %._crit_edge151.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %._crit_edge ], [ %i.cv, %._crit_edge151.loopexit ] ; 2 uses
  %i.db = add <4 x i32> %.199.in.lcssa, %.lcssa126
  %6 = shufflevector <4 x i32> %.1101.in.lcssa, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dc = add <4 x i32> %.1101.in.lcssa, %6
  %7 = extractelement <4 x i32> %i.dc, i64 0
  %8 = urem i32 %7, 65521                         ; 3 uses
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.db)
  %10 = urem i32 %9, 65521                        ; 3 uses
  %i.dd = icmp ugt i64 %i.ai, 15
  br i1 %i.dd, label %.preheader, label %bb.ae, !llvm.loop !15

bb.ae:                                            ; preds = %._crit_edge151
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.af, label %bb.b

bb.af:                                            ; preds = %bb.ae
  %i.de = shl nuw i32 %10, 16
  %i.df = or disjoint i32 %8, %i.de
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %adler32_copy_len_16.exit
  %.084 = phi i32 [ %i.ae, %adler32_copy_len_16.exit ], [ %i.df, %bb.af ]
  ret i32 %.084
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { uwtable }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nomerge nounwind }

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
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23}
!16 = !{i32 -1056584962, i32 464585491}
!17 = !{}
!18 = !{!"branch_weights", i32 1, i32 127}
!19 = !{!"branch_weights", i32 1048575, i32 1}
!20 = !{!8, !8, i64 0}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!"branch_weights", i32 127, i32 134217473}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
