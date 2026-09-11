Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/adler32_avx512_vnni?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [69 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/adler32_avx512_vnni.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 48, i32 13 }, ptr @0 }
@2 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 59, i32 17 } }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 76, i32 55 } }
@4 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 77, i32 17 } }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 141, i32 13 }, ptr @0 }
@6 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 152, i32 17 } }
@7 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 154, i32 17 } }
@8 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 171, i32 55 } }
@9 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 173, i32 48 } }
@10 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 174, i32 17 } }
@11 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 175, i32 17 } }
@.src.3 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/avxintrin.h\00", align 1
@12 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 -1, i16 0, [24 x i8] c"'struct __storeu_si256'\00" }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 3319, i32 34 }, ptr @12, i8 0, i8 3 }
@14 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'__m256i_u' (vector of 4 'long long' values)\00" }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.3, i32 3319, i32 34 }, ptr @14, i8 0, i8 1 }

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_avx512_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !19 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = insertelement <2 x i32> poison, i32 %0, i64 0
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = lshr <2 x i32> %4, <i32 65535, i32 16>
  %6 = and <2 x i32> %4, <i32 65535, i32 poison>
  %7 = shufflevector <2 x i32> %6, <2 x i32> %5, <2 x i32> <i32 0, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.c
  %.086 = phi i64 [ %2, %bb.c ], [ %i.n, %bb.p ]  ; 5 uses
  %.084 = phi ptr [ %1, %bb.c ], [ %.3.lcssa, %bb.p ] ; 3 uses
  %.072 = phi i32 [ %0, %bb.c ], [ %i.cd, %bb.p ] ; 2 uses
  %8 = phi <2 x i32> [ %7, %bb.c ], [ %i.ca, %bb.p ]
  %i.c = icmp ult i64 %.086, 32
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = call i32 @adler32_ssse3(i32 noundef %.072, ptr noundef %.084, i64 noundef %.086) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %.086, 64
  br i1 %i.e, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.f = call i32 @adler32_avx2(i32 noundef %.072, ptr noundef %.084, i64 noundef %.086) #8
  br label %.loopexit

.preheader:                                       ; preds = %bb.f, %._crit_edge
  %.185125 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.084, %bb.f ] ; 5 uses
  %.187124 = phi i64 [ %i.n, %._crit_edge ], [ %.086, %bb.f ] ; 3 uses
  %9 = phi <2 x i32> [ %i.ca, %._crit_edge ], [ %8, %bb.f ]
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <4 x i32> %10, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.g = bitcast <4 x i32> %11 to <2 x i64>
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3> ; 2 uses
  %12 = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %10, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.i = bitcast <4 x i32> %12 to <2 x i64>
  %i.j = shufflevector <2 x i64> %i.i, <2 x i64> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3> ; 2 uses
  %i.k = call i64 @llvm.umin.i64(i64 %.187124, i64 5552) ; 2 uses
  %i.l = and i64 %i.k, 8128                       ; 4 uses
  %i.m = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.187124, i64 %i.l), !nosanitize !12 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0, !nosanitize !12 ; 4 uses
  %i.o = extractvalue { i64, i1 } %i.m, 1, !nosanitize !12
  br i1 %i.o, label %bb.h, label %bb.i, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %.preheader
  call void @__ubsan_handle_sub_overflow(ptr nonnull @1, i64 %.187124, i64 %i.l) #9, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %.preheader
  %i.p = and i64 %i.k, 64
  %.not94 = icmp eq i64 %i.p, 0
  br i1 %.not94, label %bb.l, label %_mm512_loadu_si512.exit96

_mm512_loadu_si512.exit96:                        ; preds = %bb.i
  %.pre141 = ptrtoint ptr %.185125 to i64, !nosanitize !12 ; 2 uses
  %i.q = load <64 x i8>, ptr %.185125, align 1, !tbaa !14 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.185125, i64 64
  %i.s = add i64 %.pre141, 64, !nosanitize !12    ; 2 uses
  %i.t = icmp ne i64 %i.s, 0, !nosanitize !12
  %i.u = icmp ult ptr %.185125, inttoptr (i64 -64 to ptr)
  %i.v = and i1 %i.u, %i.t, !nosanitize !12
  br i1 %i.v, label %bb.k, label %bb.j, !prof !15, !nosanitize !12

bb.j:                                             ; preds = %_mm512_loadu_si512.exit96
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @2, i64 %.pre141, i64 %i.s) #8, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %_mm512_loadu_si512.exit96
  %i.w = add nsw i64 %i.l, -64
  %i.x = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.q, <64 x i8> zeroinitializer)
  %i.y = bitcast <8 x i64> %i.h to <16 x i32>     ; 2 uses
  %i.z = bitcast <8 x i64> %i.x to <16 x i32>
  %i.aa = add <16 x i32> %i.z, %i.y
  %i.ab = bitcast <16 x i32> %i.aa to <8 x i64>
  %i.ac = bitcast <8 x i64> %i.j to <16 x i32>
  %i.ad = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ac, <64 x i8> %i.q, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ae = bitcast <16 x i32> %i.ad to <8 x i64>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.2 = phi ptr [ %i.r, %bb.k ], [ %.185125, %bb.i ] ; 2 uses
  %.080 = phi <8 x i64> [ %i.ae, %bb.k ], [ %i.j, %bb.i ]
  %.078 = phi i64 [ %i.w, %bb.k ], [ %i.l, %bb.i ] ; 2 uses
  %.076 = phi <8 x i64> [ %i.ab, %bb.k ], [ %i.h, %bb.i ]
  %.074 = phi <16 x i32> [ %i.y, %bb.k ], [ zeroinitializer, %bb.i ] ; 2 uses
  %i.af = bitcast <8 x i64> %.080 to <16 x i32>   ; 2 uses
  %i.ag = bitcast <8 x i64> %.076 to <16 x i32>   ; 2 uses
  %i.ah = icmp samesign ugt i64 %.078, 127
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.o
  %i.ai = phi <16 x i32> [ %i.bf, %bb.o ], [ zeroinitializer, %bb.l ]
  %.175117 = phi <16 x i32> [ %i.bb, %bb.o ], [ %.074, %bb.l ]
  %.177116 = phi <16 x i32> [ %i.be, %bb.o ], [ %i.ag, %bb.l ] ; 2 uses
  %.179115 = phi i64 [ %i.av, %bb.o ], [ %.078, %bb.l ]
  %.181114 = phi <16 x i32> [ %i.ba, %bb.o ], [ %i.af, %bb.l ]
  %.3113 = phi ptr [ %i.aq, %bb.o ], [ %.2, %bb.l ] ; 6 uses
  %.pre = ptrtoint ptr %.3113 to i64, !nosanitize !12 ; 4 uses
  %i.aj = load <64 x i8>, ptr %.3113, align 1, !tbaa !14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.3113, i64 64
  %i.al = add i64 %.pre, 64, !nosanitize !12      ; 2 uses
  %i.am = icmp ne i64 %i.al, 0, !nosanitize !12
  %i.an = icmp ult ptr %.3113, inttoptr (i64 -64 to ptr)
  %i.ao = and i1 %i.an, %i.am, !nosanitize !12
  br i1 %i.ao, label %_mm512_loadu_si512.exit, label %bb.m, !prof !15, !nosanitize !12

bb.m:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %.pre, i64 %i.al) #8, !nosanitize !12
  br label %_mm512_loadu_si512.exit, !nosanitize !12

_mm512_loadu_si512.exit:                          ; preds = %.lr.ph, %bb.m
  %i.ap = load <64 x i8>, ptr %i.ak, align 1, !tbaa !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.3113, i64 128 ; 2 uses
  %i.ar = add i64 %.pre, 128, !nosanitize !12     ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0, !nosanitize !12
  %i.at = icmp ult ptr %.3113, inttoptr (i64 -128 to ptr)
  %i.au = and i1 %i.at, %i.as, !nosanitize !12
  br i1 %i.au, label %bb.o, label %bb.n, !prof !15, !nosanitize !12

bb.n:                                             ; preds = %_mm512_loadu_si512.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %.pre, i64 %i.ar) #8, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %_mm512_loadu_si512.exit, %bb.n
  %i.av = add nsw i64 %.179115, -128              ; 2 uses
  %i.aw = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.aj, <64 x i8> zeroinitializer)
  %i.ax = bitcast <8 x i64> %i.aw to <16 x i32>
  %i.ay = add <16 x i32> %.177116, %i.ax          ; 2 uses
  %i.az = add <16 x i32> %.175117, %.177116
  %i.ba = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.181114, <64 x i8> %i.aj, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bb = add <16 x i32> %i.az, %i.ay             ; 2 uses
  %i.bc = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.ap, <64 x i8> zeroinitializer)
  %i.bd = bitcast <8 x i64> %i.bc to <16 x i32>
  %i.be = add <16 x i32> %i.ay, %i.bd             ; 2 uses
  %i.bf = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ai, <64 x i8> %i.ap, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bg = icmp ugt i64 %i.av, 127
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.o, %bb.l
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.aq, %bb.o ] ; 2 uses
  %.181.lcssa = phi <16 x i32> [ %i.af, %bb.l ], [ %i.ba, %bb.o ]
  %.177.lcssa = phi <16 x i32> [ %i.ag, %bb.l ], [ %i.be, %bb.o ] ; 2 uses
  %.175.lcssa = phi <16 x i32> [ %.074, %bb.l ], [ %i.bb, %bb.o ]
  %.lcssa = phi <16 x i32> [ zeroinitializer, %bb.l ], [ %i.bf, %bb.o ]
  %i.bh = shl <16 x i32> %.175.lcssa, splat (i32 6)
  %i.bi = add <16 x i32> %i.bh, %.181.lcssa
  %i.bj = add <16 x i32> %i.bi, %.lcssa           ; 2 uses
  %i.bk = shufflevector <16 x i32> %.177.lcssa, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.bl = shufflevector <16 x i32> %.177.lcssa, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bm = add <4 x i32> %i.bk, %i.bl              ; 4 uses
  %i.bn = shufflevector <16 x i32> %i.bj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = shufflevector <16 x i32> %i.bj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bp = add <8 x i32> %i.bn, %i.bo              ; 2 uses
  %i.bq = shufflevector <8 x i32> %i.bp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.br = shufflevector <8 x i32> %i.bp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = add <4 x i32> %i.bq, %i.br              ; 4 uses
  %i.bt = shufflevector <4 x i32> %i.bm, <4 x i32> %i.bs, <2 x i32> <i32 1, i32 5>
  %i.bu = shufflevector <4 x i32> %i.bm, <4 x i32> %i.bs, <2 x i32> <i32 3, i32 7>
  %i.bv = add <2 x i32> %i.bt, %i.bu
  %i.bw = shufflevector <4 x i32> %i.bm, <4 x i32> %i.bs, <2 x i32> <i32 0, i32 4>
  %i.bx = shufflevector <4 x i32> %i.bm, <4 x i32> %i.bs, <2 x i32> <i32 2, i32 6>
  %i.by = add <2 x i32> %i.bw, %i.bx
  %i.bz = add <2 x i32> %i.bv, %i.by
  %i.ca = urem <2 x i32> %i.bz, splat (i32 65521) ; 4 uses
  %i.cb = icmp ugt i64 %i.n, 63
  br i1 %i.cb, label %.preheader, label %bb.p, !llvm.loop !18

bb.p:                                             ; preds = %._crit_edge
  %13 = extractelement <2 x i32> %i.ca, i64 1
  %i.cc = shl nuw i32 %13, 16
  %14 = extractelement <2 x i32> %i.ca, i64 0
  %i.cd = or disjoint i32 %i.cc, %14              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.p, %bb.e, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.d, %bb.e ], [ %i.f, %bb.g ], [ %i.cd, %bb.p ]
  ret i32 %.1
}

declare i32 @adler32_ssse3(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @adler32_avx2(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_fold_copy_avx512_vnni(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 !func_sanitize !22 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %3, 32
  br i1 %i.c, label %._crit_edge150, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %4 = insertelement <2 x i32> poison, i32 %0, i64 0
  %5 = shufflevector <2 x i32> %4, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %6 = lshr <2 x i32> %5, <i32 65535, i32 16>
  %7 = and <2 x i32> %5, <i32 65535, i32 poison>
  %8 = shufflevector <2 x i32> %7, <2 x i32> %6, <2 x i32> <i32 0, i32 3>
  br label %bb.d

._crit_edge150:                                   ; preds = %bb.t, %bb.c
  %.0100.lcssa = phi i64 [ %3, %bb.c ], [ %i.q, %bb.t ] ; 2 uses
  %.096.lcssa = phi ptr [ %2, %bb.c ], [ %.399.lcssa, %bb.t ] ; 2 uses
  %.094.lcssa = phi ptr [ %1, %bb.c ], [ %.3.lcssa, %bb.t ]
  %.082.lcssa = phi i32 [ %0, %bb.c ], [ %i.cu, %bb.t ]
  %i.d = sub nuw nsw i64 32, %.0100.lcssa
  %i.e = lshr i64 4294967295, %i.d
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = bitcast i32 %i.f to <32 x i1>            ; 2 uses
  %i.h = call <32 x i8> @llvm.masked.load.v32i8.p0(ptr nonnull align 1 %.096.lcssa, <32 x i1> %i.g, <32 x i8> zeroinitializer)
  call void @llvm.masked.store.v32i8.p0(<32 x i8> %i.h, ptr align 1 %.094.lcssa, <32 x i1> %i.g)
  %i.i = call i32 @adler32_ssse3(i32 noundef %.082.lcssa, ptr noundef nonnull %.096.lcssa, i64 noundef %.0100.lcssa) #8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader.preheader, %._crit_edge
  %.195144 = phi ptr [ %1, %.preheader.preheader ], [ %.3.lcssa, %._crit_edge ] ; 6 uses
  %.197143 = phi ptr [ %2, %.preheader.preheader ], [ %.399.lcssa, %._crit_edge ] ; 5 uses
  %.1101142 = phi i64 [ %3, %.preheader.preheader ], [ %i.q, %._crit_edge ] ; 3 uses
  %9 = phi <2 x i32> [ %8, %.preheader.preheader ], [ %i.cr, %._crit_edge ]
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <4 x i32> %10, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.j = bitcast <4 x i32> %11 to <2 x i64>
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %12 = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %10, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.l = bitcast <4 x i32> %12 to <2 x i64>
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.n = call i64 @llvm.umin.i64(i64 %.1101142, i64 5552) ; 2 uses
  %i.o = and i64 %i.n, 8160                       ; 4 uses
  %i.p = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.1101142, i64 %i.o), !nosanitize !12 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 0, !nosanitize !12 ; 4 uses
  %i.r = extractvalue { i64, i1 } %i.p, 1, !nosanitize !12
  br i1 %i.r, label %bb.e, label %bb.f, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_sub_overflow(ptr nonnull @5, i64 %.1101142, i64 %i.o) #9, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = and i64 %i.n, 32
  %.not109 = icmp eq i64 %i.s, 0
  br i1 %.not109, label %bb.l, label %_mm256_loadu_si256.exit111

_mm256_loadu_si256.exit111:                       ; preds = %bb.f
  %i.t = load <4 x i64>, ptr %.197143, align 1, !tbaa !14 ; 2 uses
  %.not195 = icmp eq ptr %.195144, null, !nosanitize !12
  %.pre171 = ptrtoint ptr %.195144 to i64, !nosanitize !12 ; 4 uses
  br i1 %.not195, label %bb.g, label %_mm256_storeu_si256.exit113, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %_mm256_loadu_si256.exit111
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %.pre171) #8, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @15, i64 %.pre171) #8, !nosanitize !12
  br label %_mm256_storeu_si256.exit113, !nosanitize !12

_mm256_storeu_si256.exit113:                      ; preds = %_mm256_loadu_si256.exit111, %bb.g
  store <4 x i64> %i.t, ptr %.195144, align 1, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %.195144, i64 32
  %i.v = add i64 %.pre171, 32, !nosanitize !12    ; 2 uses
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ult ptr %.195144, inttoptr (i64 -32 to ptr)
  %i.y = and i1 %i.x, %i.w, !nosanitize !12
  br i1 %i.y, label %bb.i, label %bb.h, !prof !15, !nosanitize !12

bb.h:                                             ; preds = %_mm256_storeu_si256.exit113
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %.pre171, i64 %i.v) #8, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %_mm256_storeu_si256.exit113
  %i.z = getelementptr inbounds nuw i8, ptr %.197143, i64 32
  %i.aa = ptrtoint ptr %.197143 to i64, !nosanitize !12 ; 2 uses
  %i.ab = add i64 %i.aa, 32, !nosanitize !12      ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 0, !nosanitize !12
  %i.ad = icmp ult ptr %.197143, inttoptr (i64 -32 to ptr)
  %i.ae = and i1 %i.ad, %i.ac, !nosanitize !12
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !15, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %i.aa, i64 %i.ab) #8, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = add nsw i64 %i.o, -32
  %i.ag = bitcast <4 x i64> %i.t to <32 x i8>     ; 2 uses
  %i.ah = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ag, <32 x i8> zeroinitializer)
  %i.ai = bitcast <4 x i64> %i.k to <8 x i32>     ; 2 uses
  %i.aj = bitcast <4 x i64> %i.ah to <8 x i32>
  %i.ak = add <8 x i32> %i.aj, %i.ai
  %i.al = bitcast <8 x i32> %i.ak to <4 x i64>
  %i.am = bitcast <4 x i64> %i.m to <8 x i32>
  %i.an = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.am, <32 x i8> %i.ag, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ao = bitcast <8 x i32> %i.an to <4 x i64>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.298 = phi ptr [ %i.z, %bb.k ], [ %.197143, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %i.u, %bb.k ], [ %.195144, %bb.f ] ; 2 uses
  %.090 = phi <4 x i64> [ %i.ao, %bb.k ], [ %i.m, %bb.f ]
  %.088 = phi i64 [ %i.af, %bb.k ], [ %i.o, %bb.f ] ; 2 uses
  %.086 = phi <4 x i64> [ %i.al, %bb.k ], [ %i.k, %bb.f ]
  %.084 = phi <8 x i32> [ %i.ai, %bb.k ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.ap = bitcast <4 x i64> %.090 to <8 x i32>    ; 2 uses
  %i.aq = bitcast <4 x i64> %.086 to <8 x i32>    ; 2 uses
  %i.ar = icmp ugt i64 %.088, 63
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %i.as = phi <8 x i32> [ %i.cb, %bb.s ], [ zeroinitializer, %bb.l ]
  %.185134 = phi <8 x i32> [ %i.bw, %bb.s ], [ %.084, %bb.l ]
  %.187133 = phi <8 x i32> [ %i.ca, %bb.s ], [ %i.aq, %bb.l ] ; 2 uses
  %.189132 = phi i64 [ %i.bp, %bb.s ], [ %.088, %bb.l ]
  %.191131 = phi <8 x i32> [ %i.bv, %bb.s ], [ %i.ap, %bb.l ]
  %.3130 = phi ptr [ %i.bf, %bb.s ], [ %.2, %bb.l ] ; 7 uses
  %.399129 = phi ptr [ %i.bk, %bb.s ], [ %.298, %bb.l ] ; 6 uses
  %.pre = ptrtoint ptr %.399129 to i64, !nosanitize !12 ; 4 uses
  %i.at = load <4 x i64>, ptr %.399129, align 1, !tbaa !14 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.399129, i64 32
  %i.av = add i64 %.pre, 32, !nosanitize !12      ; 2 uses
  %i.aw = icmp ne i64 %i.av, 0, !nosanitize !12
  %i.ax = icmp ult ptr %.399129, inttoptr (i64 -32 to ptr)
  %i.ay = and i1 %i.ax, %i.aw, !nosanitize !12
  br i1 %i.ay, label %_mm256_loadu_si256.exit, label %bb.m, !prof !15, !nosanitize !12

bb.m:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %.pre, i64 %i.av) #8, !nosanitize !12
  br label %_mm256_loadu_si256.exit, !nosanitize !12

_mm256_loadu_si256.exit:                          ; preds = %.lr.ph, %bb.m
  %i.az = load <4 x i64>, ptr %i.au, align 1, !tbaa !14 ; 2 uses
  %.not196 = icmp eq ptr %.3130, null, !nosanitize !12
  %.pre169 = ptrtoint ptr %.3130 to i64, !nosanitize !12 ; 6 uses
  br i1 %.not196, label %bb.n, label %_mm256_storeu_si256.exit112, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %_mm256_loadu_si256.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %.pre169) #8, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @15, i64 %.pre169) #8, !nosanitize !12
  br label %_mm256_storeu_si256.exit112, !nosanitize !12

_mm256_storeu_si256.exit112:                      ; preds = %_mm256_loadu_si256.exit, %bb.n
  store <4 x i64> %i.at, ptr %.3130, align 1, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.3130, i64 32
  %i.bb = add i64 %.pre169, 32, !nosanitize !12   ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = icmp ult ptr %.3130, inttoptr (i64 -32 to ptr)
  %i.be = and i1 %i.bd, %i.bc
  br i1 %i.be, label %_mm256_storeu_si256.exit, label %bb.o, !prof !15, !nosanitize !12

bb.o:                                             ; preds = %_mm256_storeu_si256.exit112
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %.pre169, i64 %i.bb) #8, !nosanitize !12
  br label %_mm256_storeu_si256.exit, !nosanitize !12

_mm256_storeu_si256.exit:                         ; preds = %_mm256_storeu_si256.exit112, %bb.o
  store <4 x i64> %i.az, ptr %i.ba, align 1, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %.3130, i64 64 ; 2 uses
  %i.bg = add i64 %.pre169, 64, !nosanitize !12   ; 2 uses
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = icmp ult ptr %.3130, inttoptr (i64 -64 to ptr)
  %i.bj = and i1 %i.bi, %i.bh
  br i1 %i.bj, label %bb.q, label %bb.p, !prof !15, !nosanitize !12

bb.p:                                             ; preds = %_mm256_storeu_si256.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %.pre169, i64 %i.bg) #8, !nosanitize !12
  br label %bb.q, !nosanitize !12

bb.q:                                             ; preds = %bb.p, %_mm256_storeu_si256.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.399129, i64 64 ; 2 uses
  %i.bl = add i64 %.pre, 64, !nosanitize !12      ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 0, !nosanitize !12
  %i.bn = icmp ult ptr %.399129, inttoptr (i64 -64 to ptr)
  %i.bo = and i1 %i.bn, %i.bm, !nosanitize !12
  br i1 %i.bo, label %bb.s, label %bb.r, !prof !15, !nosanitize !12

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %.pre, i64 %i.bl) #8, !nosanitize !12
  br label %bb.s, !nosanitize !12

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bp = add nsw i64 %.189132, -64               ; 2 uses
  %i.bq = bitcast <4 x i64> %i.at to <32 x i8>    ; 2 uses
  %i.br = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.bq, <32 x i8> zeroinitializer)
  %i.bs = bitcast <4 x i64> %i.br to <8 x i32>
  %i.bt = add <8 x i32> %.187133, %i.bs           ; 2 uses
  %i.bu = add <8 x i32> %.185134, %.187133
  %i.bv = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.191131, <32 x i8> %i.bq, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bw = add <8 x i32> %i.bu, %i.bt              ; 2 uses
  %i.bx = bitcast <4 x i64> %i.az to <32 x i8>    ; 2 uses
  %i.by = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.bx, <32 x i8> zeroinitializer)
  %i.bz = bitcast <4 x i64> %i.by to <8 x i32>
  %i.ca = add <8 x i32> %i.bt, %i.bz              ; 2 uses
  %i.cb = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.as, <32 x i8> %i.bx, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.cc = icmp ugt i64 %i.bp, 63
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.s, %bb.l
  %.399.lcssa = phi ptr [ %.298, %bb.l ], [ %i.bk, %bb.s ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.bf, %bb.s ] ; 2 uses
  %.191.lcssa = phi <8 x i32> [ %i.ap, %bb.l ], [ %i.bv, %bb.s ]
  %.187.lcssa = phi <8 x i32> [ %i.aq, %bb.l ], [ %i.ca, %bb.s ] ; 2 uses
  %.185.lcssa = phi <8 x i32> [ %.084, %bb.l ], [ %i.bw, %bb.s ]
  %.lcssa = phi <8 x i32> [ zeroinitializer, %bb.l ], [ %i.cb, %bb.s ]
  %i.cd = shl <8 x i32> %.185.lcssa, splat (i32 5)
  %i.ce = add <8 x i32> %i.cd, %.191.lcssa
  %i.cf = add <8 x i32> %i.ce, %.lcssa            ; 2 uses
  %i.cg = shufflevector <8 x i32> %.187.lcssa, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ch = shufflevector <8 x i32> %.187.lcssa, <8 x i32> poison, <4 x i32> <i32 4, i32 6, i32 4, i32 6>
  %i.ci = add <4 x i32> %i.cg, %i.ch              ; 2 uses
  %i.cj = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ck = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cl = add <4 x i32> %i.cj, %i.ck              ; 2 uses
  %i.cm = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cn = add <4 x i32> %i.cl, %i.cm              ; 2 uses
  %i.co = shufflevector <4 x i32> %i.ci, <4 x i32> %i.cn, <2 x i32> <i32 1, i32 5>
  %i.cp = shufflevector <4 x i32> %i.ci, <4 x i32> %i.cn, <2 x i32> <i32 0, i32 4>
  %i.cq = add <2 x i32> %i.co, %i.cp
  %i.cr = urem <2 x i32> %i.cq, splat (i32 65521) ; 3 uses
  %i.cs = icmp ugt i64 %i.q, 31
  br i1 %i.cs, label %bb.d, label %bb.t, !llvm.loop !21

bb.t:                                             ; preds = %._crit_edge
  %13 = extractelement <2 x i32> %i.cr, i64 1
  %i.ct = shl nuw i32 %13, 16
  %14 = extractelement <2 x i32> %i.cr, i64 0
  %i.cu = or disjoint i32 %i.ct, %14              ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %._crit_edge150

.loopexit:                                        ; preds = %bb.t, %._crit_edge150, %bb.b, %bb.a
  %.1 = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.i, %._crit_edge150 ], [ %i.cu, %bb.t ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #5

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8>, <64 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.masked.load.v32i8.p0(ptr captures(none), <32 x i1>, <32 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v32i8.p0(<32 x i8>, ptr captures(none), <32 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #1 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { uwtable }
attributes #4 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nomerge nounwind }

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
!12 = !{}
!13 = !{!"branch_weights", i32 1, i32 1048575}
!14 = !{!8, !8, i64 0}
!15 = !{!"branch_weights", i32 1048575, i32 1}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{i32 -1056584962, i32 411946090}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = !{i32 -1056584962, i32 464585491}
end_hunk_0
