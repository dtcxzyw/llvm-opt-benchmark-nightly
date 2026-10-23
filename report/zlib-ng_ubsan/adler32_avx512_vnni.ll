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
  %i.c = lshr i32 %0, 16
  %i.d = and i32 %0, 65535
  br label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.c
  %.090 = phi i32 [ %i.d, %bb.c ], [ %i.cb, %bb.p ]
  %.088 = phi i32 [ %i.c, %bb.c ], [ %i.ca, %bb.p ]
  %.086 = phi i64 [ %2, %bb.c ], [ %i.r, %bb.p ]  ; 5 uses
  %.084 = phi ptr [ %1, %bb.c ], [ %.3.lcssa, %bb.p ] ; 3 uses
  %.072 = phi i32 [ %0, %bb.c ], [ %i.ce, %bb.p ] ; 2 uses
  %i.e = icmp ult i64 %.086, 32
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = call i32 @adler32_ssse3(i32 noundef %.072, ptr noundef %.084, i64 noundef %.086) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.g = icmp ult i64 %.086, 64
  br i1 %i.g, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @adler32_avx2(i32 noundef %.072, ptr noundef %.084, i64 noundef %.086) #8
  br label %.loopexit

.preheader:                                       ; preds = %bb.f, %._crit_edge
  %.185125 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.084, %bb.f ] ; 5 uses
  %.187124 = phi i64 [ %i.r, %._crit_edge ], [ %.086, %bb.f ] ; 3 uses
  %.189123 = phi i32 [ %i.ca, %._crit_edge ], [ %.088, %bb.f ]
  %.191122 = phi i32 [ %i.cb, %._crit_edge ], [ %.090, %bb.f ]
  %i.i = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.191122, i64 0
  %i.j = bitcast <4 x i32> %i.i to <2 x i64>
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3> ; 2 uses
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.189123, i64 0
  %i.m = bitcast <4 x i32> %i.l to <2 x i64>
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3> ; 2 uses
  %i.o = call i64 @llvm.umin.i64(i64 %.187124, i64 5552) ; 2 uses
  %i.p = and i64 %i.o, 8128                       ; 4 uses
  %i.q = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.187124, i64 %i.p), !nosanitize !12 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 0, !nosanitize !12 ; 4 uses
  %i.s = extractvalue { i64, i1 } %i.q, 1, !nosanitize !12
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %.preheader
  call void @__ubsan_handle_sub_overflow(ptr nonnull @1, i64 %.187124, i64 %i.p) #9, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %.preheader
  %i.t = and i64 %i.o, 64
  %.not94 = icmp eq i64 %i.t, 0
  br i1 %.not94, label %bb.l, label %_mm512_loadu_si512.exit96

_mm512_loadu_si512.exit96:                        ; preds = %bb.i
  %.pre141 = ptrtoint ptr %.185125 to i64, !nosanitize !12 ; 2 uses
  %i.u = load <64 x i8>, ptr %.185125, align 1, !tbaa !14 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.185125, i64 64
  %i.w = add i64 %.pre141, 64, !nosanitize !12    ; 2 uses
  %i.x = icmp ne i64 %i.w, 0, !nosanitize !12
  %i.y = icmp ult ptr %.185125, inttoptr (i64 -64 to ptr)
  %i.z = and i1 %i.y, %i.x, !nosanitize !12
  br i1 %i.z, label %bb.k, label %bb.j, !prof !15, !nosanitize !12

bb.j:                                             ; preds = %_mm512_loadu_si512.exit96
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @2, i64 %.pre141, i64 %i.w) #8, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %_mm512_loadu_si512.exit96
  %i.aa = add nsw i64 %i.p, -64
  %i.ab = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.u, <64 x i8> zeroinitializer)
  %i.ac = bitcast <8 x i64> %i.k to <16 x i32>    ; 2 uses
  %i.ad = bitcast <8 x i64> %i.ab to <16 x i32>
  %i.ae = add <16 x i32> %i.ad, %i.ac
  %i.af = bitcast <16 x i32> %i.ae to <8 x i64>
  %i.ag = bitcast <8 x i64> %i.n to <16 x i32>
  %i.ah = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ag, <64 x i8> %i.u, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ai = bitcast <16 x i32> %i.ah to <8 x i64>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.2 = phi ptr [ %i.v, %bb.k ], [ %.185125, %bb.i ] ; 2 uses
  %.080 = phi <8 x i64> [ %i.ai, %bb.k ], [ %i.n, %bb.i ]
  %.078 = phi i64 [ %i.aa, %bb.k ], [ %i.p, %bb.i ] ; 2 uses
  %.076 = phi <8 x i64> [ %i.af, %bb.k ], [ %i.k, %bb.i ]
  %.074 = phi <16 x i32> [ %i.ac, %bb.k ], [ zeroinitializer, %bb.i ] ; 2 uses
  %i.aj = bitcast <8 x i64> %.080 to <16 x i32>   ; 2 uses
  %i.ak = bitcast <8 x i64> %.076 to <16 x i32>   ; 2 uses
  %i.al = icmp samesign ugt i64 %.078, 127
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.o
  %i.am = phi <16 x i32> [ %i.bj, %bb.o ], [ zeroinitializer, %bb.l ]
  %.175117 = phi <16 x i32> [ %i.bf, %bb.o ], [ %.074, %bb.l ]
  %.177116 = phi <16 x i32> [ %i.bi, %bb.o ], [ %i.ak, %bb.l ] ; 2 uses
  %.179115 = phi i64 [ %i.az, %bb.o ], [ %.078, %bb.l ]
  %.181114 = phi <16 x i32> [ %i.be, %bb.o ], [ %i.aj, %bb.l ]
  %.3113 = phi ptr [ %i.au, %bb.o ], [ %.2, %bb.l ] ; 6 uses
  %.pre = ptrtoint ptr %.3113 to i64, !nosanitize !12 ; 4 uses
  %i.an = load <64 x i8>, ptr %.3113, align 1, !tbaa !14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.3113, i64 64
  %i.ap = add i64 %.pre, 64, !nosanitize !12      ; 2 uses
  %i.aq = icmp ne i64 %i.ap, 0, !nosanitize !12
  %i.ar = icmp ult ptr %.3113, inttoptr (i64 -64 to ptr)
  %i.as = and i1 %i.ar, %i.aq, !nosanitize !12
  br i1 %i.as, label %_mm512_loadu_si512.exit, label %bb.m, !prof !15, !nosanitize !12

bb.m:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %.pre, i64 %i.ap) #8, !nosanitize !12
  br label %_mm512_loadu_si512.exit, !nosanitize !12

_mm512_loadu_si512.exit:                          ; preds = %.lr.ph, %bb.m
  %i.at = load <64 x i8>, ptr %i.ao, align 1, !tbaa !14 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.3113, i64 128 ; 2 uses
  %i.av = add i64 %.pre, 128, !nosanitize !12     ; 2 uses
  %i.aw = icmp ne i64 %i.av, 0, !nosanitize !12
  %i.ax = icmp ult ptr %.3113, inttoptr (i64 -128 to ptr)
  %i.ay = and i1 %i.ax, %i.aw, !nosanitize !12
  br i1 %i.ay, label %bb.o, label %bb.n, !prof !15, !nosanitize !12

bb.n:                                             ; preds = %_mm512_loadu_si512.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %.pre, i64 %i.av) #8, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %_mm512_loadu_si512.exit, %bb.n
  %i.az = add nsw i64 %.179115, -128              ; 2 uses
  %i.ba = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.an, <64 x i8> zeroinitializer)
  %i.bb = bitcast <8 x i64> %i.ba to <16 x i32>
  %i.bc = add <16 x i32> %.177116, %i.bb          ; 2 uses
  %i.bd = add <16 x i32> %.175117, %.177116
  %i.be = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.181114, <64 x i8> %i.an, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bf = add <16 x i32> %i.bd, %i.bc             ; 2 uses
  %i.bg = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.at, <64 x i8> zeroinitializer)
  %i.bh = bitcast <8 x i64> %i.bg to <16 x i32>
  %i.bi = add <16 x i32> %i.bc, %i.bh             ; 2 uses
  %i.bj = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.am, <64 x i8> %i.at, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bk = icmp ugt i64 %i.az, 127
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.o, %bb.l
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.au, %bb.o ] ; 2 uses
  %.181.lcssa = phi <16 x i32> [ %i.aj, %bb.l ], [ %i.be, %bb.o ]
  %.177.lcssa = phi <16 x i32> [ %i.ak, %bb.l ], [ %i.bi, %bb.o ] ; 2 uses
  %.175.lcssa = phi <16 x i32> [ %.074, %bb.l ], [ %i.bf, %bb.o ]
  %.lcssa = phi <16 x i32> [ zeroinitializer, %bb.l ], [ %i.bj, %bb.o ]
  %i.bl = shl <16 x i32> %.175.lcssa, splat (i32 6)
  %i.bm = add <16 x i32> %i.bl, %.181.lcssa
  %i.bn = add <16 x i32> %i.bm, %.lcssa           ; 2 uses
  %i.bo = shufflevector <16 x i32> %.177.lcssa, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.bp = shufflevector <16 x i32> %.177.lcssa, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %3 = add <4 x i32> %i.bo, %i.bp                 ; 2 uses
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bq = add <4 x i32> %3, %4                    ; 2 uses
  %i.br = shufflevector <16 x i32> %i.bn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = shufflevector <16 x i32> %i.bn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = add <8 x i32> %i.br, %i.bs              ; 2 uses
  %i.bu = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bv = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bw = add <4 x i32> %i.bu, %i.bv              ; 2 uses
  %5 = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %6 = add <4 x i32> %i.bw, %5                    ; 2 uses
  %7 = shufflevector <4 x i32> %i.bq, <4 x i32> %6, <2 x i32> <i32 1, i32 5>
  %i.bx = shufflevector <4 x i32> %i.bq, <4 x i32> %6, <2 x i32> <i32 0, i32 4>
  %i.by = add <2 x i32> %7, %i.bx
  %i.bz = urem <2 x i32> %i.by, splat (i32 65521) ; 2 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 1   ; 3 uses
  %i.cb = extractelement <2 x i32> %i.bz, i64 0   ; 3 uses
  %i.cc = icmp ugt i64 %i.r, 63
  br i1 %i.cc, label %.preheader, label %bb.p, !llvm.loop !18

bb.p:                                             ; preds = %._crit_edge
  %i.cd = shl nuw i32 %i.ca, 16
  %i.ce = or disjoint i32 %i.cd, %i.cb            ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.p, %bb.e, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.f, %bb.e ], [ %i.h, %bb.g ], [ %i.ce, %bb.p ]
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
  %i.d = and i32 %0, 65535
  %i.e = lshr i32 %0, 16
  br label %bb.d

._crit_edge150:                                   ; preds = %bb.t, %bb.c
  %.0100.lcssa = phi i64 [ %3, %bb.c ], [ %i.u, %bb.t ] ; 2 uses
  %.096.lcssa = phi ptr [ %2, %bb.c ], [ %.399.lcssa, %bb.t ] ; 2 uses
  %.094.lcssa = phi ptr [ %1, %bb.c ], [ %.3.lcssa, %bb.t ]
  %.082.lcssa = phi i32 [ %0, %bb.c ], [ %i.da, %bb.t ]
  %i.f = sub nuw nsw i64 32, %.0100.lcssa
  %i.g = lshr i64 4294967295, %i.f
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = bitcast i32 %i.h to <32 x i1>            ; 2 uses
  %i.j = call <32 x i8> @llvm.masked.load.v32i8.p0(ptr nonnull align 1 %.096.lcssa, <32 x i1> %i.i, <32 x i8> zeroinitializer)
  call void @llvm.masked.store.v32i8.p0(<32 x i8> %i.j, ptr align 1 %.094.lcssa, <32 x i1> %i.i)
  %i.k = call i32 @adler32_ssse3(i32 noundef %.082.lcssa, ptr noundef nonnull %.096.lcssa, i64 noundef %.0100.lcssa) #8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader.preheader, %._crit_edge
  %.195144 = phi ptr [ %1, %.preheader.preheader ], [ %.3.lcssa, %._crit_edge ] ; 6 uses
  %.197143 = phi ptr [ %2, %.preheader.preheader ], [ %.399.lcssa, %._crit_edge ] ; 5 uses
  %.1101142 = phi i64 [ %3, %.preheader.preheader ], [ %i.u, %._crit_edge ] ; 3 uses
  %.1103141 = phi i32 [ %i.e, %.preheader.preheader ], [ %i.cy, %._crit_edge ]
  %.1105140 = phi i32 [ %i.d, %.preheader.preheader ], [ %i.cx, %._crit_edge ]
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1105140, i64 0
  %i.m = bitcast <4 x i32> %i.l to <2 x i64>
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.o = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1103141, i64 0
  %i.p = bitcast <4 x i32> %i.o to <2 x i64>
  %i.q = shufflevector <2 x i64> %i.p, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.r = call i64 @llvm.umin.i64(i64 %.1101142, i64 5552) ; 2 uses
  %i.s = and i64 %i.r, 8160                       ; 4 uses
  %i.t = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.1101142, i64 %i.s), !nosanitize !12 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 0, !nosanitize !12 ; 4 uses
  %i.v = extractvalue { i64, i1 } %i.t, 1, !nosanitize !12
  br i1 %i.v, label %bb.e, label %bb.f, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_sub_overflow(ptr nonnull @5, i64 %.1101142, i64 %i.s) #9, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = and i64 %i.r, 32
  %.not109 = icmp eq i64 %i.w, 0
  br i1 %.not109, label %bb.l, label %_mm256_loadu_si256.exit111

_mm256_loadu_si256.exit111:                       ; preds = %bb.f
  %i.x = load <4 x i64>, ptr %.197143, align 1, !tbaa !14 ; 2 uses
  %.not195 = icmp eq ptr %.195144, null, !nosanitize !12
  %.pre171 = ptrtoint ptr %.195144 to i64, !nosanitize !12 ; 4 uses
  br i1 %.not195, label %bb.g, label %_mm256_storeu_si256.exit113, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %_mm256_loadu_si256.exit111
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %.pre171) #8, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @15, i64 %.pre171) #8, !nosanitize !12
  br label %_mm256_storeu_si256.exit113, !nosanitize !12

_mm256_storeu_si256.exit113:                      ; preds = %_mm256_loadu_si256.exit111, %bb.g
  store <4 x i64> %i.x, ptr %.195144, align 1, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %.195144, i64 32
  %i.z = add i64 %.pre171, 32, !nosanitize !12    ; 2 uses
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = icmp ult ptr %.195144, inttoptr (i64 -32 to ptr)
  %i.ac = and i1 %i.ab, %i.aa, !nosanitize !12
  br i1 %i.ac, label %bb.i, label %bb.h, !prof !15, !nosanitize !12

bb.h:                                             ; preds = %_mm256_storeu_si256.exit113
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %.pre171, i64 %i.z) #8, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %_mm256_storeu_si256.exit113
  %i.ad = getelementptr inbounds nuw i8, ptr %.197143, i64 32
  %i.ae = ptrtoint ptr %.197143 to i64, !nosanitize !12 ; 2 uses
  %i.af = add i64 %i.ae, 32, !nosanitize !12      ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0, !nosanitize !12
  %i.ah = icmp ult ptr %.197143, inttoptr (i64 -32 to ptr)
  %i.ai = and i1 %i.ah, %i.ag, !nosanitize !12
  br i1 %i.ai, label %bb.k, label %bb.j, !prof !15, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %i.ae, i64 %i.af) #8, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = add nsw i64 %i.s, -32
  %i.ak = bitcast <4 x i64> %i.x to <32 x i8>     ; 2 uses
  %i.al = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ak, <32 x i8> zeroinitializer)
  %i.am = bitcast <4 x i64> %i.n to <8 x i32>     ; 2 uses
  %i.an = bitcast <4 x i64> %i.al to <8 x i32>
  %i.ao = add <8 x i32> %i.an, %i.am
  %i.ap = bitcast <8 x i32> %i.ao to <4 x i64>
  %i.aq = bitcast <4 x i64> %i.q to <8 x i32>
  %i.ar = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aq, <32 x i8> %i.ak, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.as = bitcast <8 x i32> %i.ar to <4 x i64>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.298 = phi ptr [ %i.ad, %bb.k ], [ %.197143, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %i.y, %bb.k ], [ %.195144, %bb.f ] ; 2 uses
  %.090 = phi <4 x i64> [ %i.as, %bb.k ], [ %i.q, %bb.f ]
  %.088 = phi i64 [ %i.aj, %bb.k ], [ %i.s, %bb.f ] ; 2 uses
  %.086 = phi <4 x i64> [ %i.ap, %bb.k ], [ %i.n, %bb.f ]
  %.084 = phi <8 x i32> [ %i.am, %bb.k ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.at = bitcast <4 x i64> %.090 to <8 x i32>    ; 2 uses
  %i.au = bitcast <4 x i64> %.086 to <8 x i32>    ; 2 uses
  %i.av = icmp ugt i64 %.088, 63
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %i.aw = phi <8 x i32> [ %i.cf, %bb.s ], [ zeroinitializer, %bb.l ]
  %.185134 = phi <8 x i32> [ %i.ca, %bb.s ], [ %.084, %bb.l ]
  %.187133 = phi <8 x i32> [ %i.ce, %bb.s ], [ %i.au, %bb.l ] ; 2 uses
  %.189132 = phi i64 [ %i.bt, %bb.s ], [ %.088, %bb.l ]
  %.191131 = phi <8 x i32> [ %i.bz, %bb.s ], [ %i.at, %bb.l ]
  %.3130 = phi ptr [ %i.bj, %bb.s ], [ %.2, %bb.l ] ; 7 uses
  %.399129 = phi ptr [ %i.bo, %bb.s ], [ %.298, %bb.l ] ; 6 uses
  %.pre = ptrtoint ptr %.399129 to i64, !nosanitize !12 ; 4 uses
  %i.ax = load <4 x i64>, ptr %.399129, align 1, !tbaa !14 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.399129, i64 32
  %i.az = add i64 %.pre, 32, !nosanitize !12      ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0, !nosanitize !12
  %i.bb = icmp ult ptr %.399129, inttoptr (i64 -32 to ptr)
  %i.bc = and i1 %i.bb, %i.ba, !nosanitize !12
  br i1 %i.bc, label %_mm256_loadu_si256.exit, label %bb.m, !prof !15, !nosanitize !12

bb.m:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %.pre, i64 %i.az) #8, !nosanitize !12
  br label %_mm256_loadu_si256.exit, !nosanitize !12

_mm256_loadu_si256.exit:                          ; preds = %.lr.ph, %bb.m
  %i.bd = load <4 x i64>, ptr %i.ay, align 1, !tbaa !14 ; 2 uses
  %.not196 = icmp eq ptr %.3130, null, !nosanitize !12
  %.pre169 = ptrtoint ptr %.3130 to i64, !nosanitize !12 ; 6 uses
  br i1 %.not196, label %bb.n, label %_mm256_storeu_si256.exit112, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %_mm256_loadu_si256.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %.pre169) #8, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @15, i64 %.pre169) #8, !nosanitize !12
  br label %_mm256_storeu_si256.exit112, !nosanitize !12

_mm256_storeu_si256.exit112:                      ; preds = %_mm256_loadu_si256.exit, %bb.n
  store <4 x i64> %i.ax, ptr %.3130, align 1, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %.3130, i64 32
  %i.bf = add i64 %.pre169, 32, !nosanitize !12   ; 2 uses
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = icmp ult ptr %.3130, inttoptr (i64 -32 to ptr)
  %i.bi = and i1 %i.bh, %i.bg
  br i1 %i.bi, label %_mm256_storeu_si256.exit, label %bb.o, !prof !15, !nosanitize !12

bb.o:                                             ; preds = %_mm256_storeu_si256.exit112
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %.pre169, i64 %i.bf) #8, !nosanitize !12
  br label %_mm256_storeu_si256.exit, !nosanitize !12

_mm256_storeu_si256.exit:                         ; preds = %_mm256_storeu_si256.exit112, %bb.o
  store <4 x i64> %i.bd, ptr %i.be, align 1, !tbaa !14
end_hunk_0
