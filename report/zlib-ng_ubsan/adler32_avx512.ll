Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/adler32_avx512?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [64 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/adler32_avx512.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 56, i32 13 }, ptr @0 }
@2 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 67, i32 21 } }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 70, i32 17 } }
@.src.1 = private unnamed_addr constant [54 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/avx512fintrin.h\00", align 1
@4 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 -1, i16 0, [24 x i8] c"'struct __storeu_si512'\00" }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 4247, i32 34 }, ptr @4, i8 0, i8 3 }
@6 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'__m512i_u' (vector of 8 'long long' values)\00" }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 4247, i32 34 }, ptr @6, i8 0, i8 1 }

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_fold_copy_avx512(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !func_sanitize !19 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %adler32_fold_copy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %adler32_fold_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %3, 64
  br i1 %i.c, label %._crit_edge119.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.d = and i32 %0, 65535
  %i.e = lshr i32 %0, 16
  br label %bb.d

._crit_edge119.i:                                 ; preds = %bb.k, %bb.c
  %.065.lcssa.i = phi i64 [ %3, %bb.c ], [ %i.p, %bb.k ] ; 2 uses
  %.062.lcssa.i = phi ptr [ %2, %bb.c ], [ %i.aa, %bb.k ] ; 2 uses
  %.057.lcssa.i = phi ptr [ %1, %bb.c ], [ %i.v, %bb.k ]
  %.056.lcssa.i = phi i32 [ %0, %bb.c ], [ %i.bh, %bb.k ]
  %i.f = sub nuw nsw i64 64, %.065.lcssa.i
  %i.g = lshr i64 -1, %i.f
  %i.h = bitcast i64 %i.g to <64 x i1>            ; 2 uses
  %i.i = call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.062.lcssa.i, <64 x i1> %i.h, <64 x i8> zeroinitializer)
  call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.i, ptr align 1 %.057.lcssa.i, <64 x i1> %i.h)
  %i.j = call i32 @adler32_avx2(i32 noundef %.056.lcssa.i, ptr noundef nonnull %.062.lcssa.i, i64 noundef %.065.lcssa.i) #7
  br label %adler32_fold_copy_impl.exit

bb.d:                                             ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.158113.i = phi ptr [ %1, %.preheader.lr.ph.i ], [ %i.v, %._crit_edge.i ]
  %.163112.i = phi ptr [ %2, %.preheader.lr.ph.i ], [ %i.aa, %._crit_edge.i ]
  %.166111.i = phi i64 [ %3, %.preheader.lr.ph.i ], [ %i.p, %._crit_edge.i ] ; 3 uses
  %.168110.i = phi i32 [ %i.d, %.preheader.lr.ph.i ], [ %i.be, %._crit_edge.i ]
  %.172109.i = phi i32 [ %i.e, %.preheader.lr.ph.i ], [ %i.bf, %._crit_edge.i ]
  %i.k = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.168110.i, i64 0
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.172109.i, i64 0
  %i.m = call i64 @llvm.umin.i64(i64 %.166111.i, i64 5552)
  %i.n = and i64 %i.m, 8128                       ; 3 uses
  %i.o = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.166111.i, i64 %i.n), !nosanitize !14 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0, !nosanitize !14 ; 4 uses
  %i.q = extractvalue { i64, i1 } %i.o, 1, !nosanitize !14
  br i1 %i.q, label %bb.e, label %.lr.ph.i, !prof !15, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_sub_overflow(ptr nonnull @1, i64 %.166111.i, i64 %i.n) #8, !nosanitize !14
  br label %.lr.ph.i, !nosanitize !14

.lr.ph.i:                                         ; preds = %bb.e, %bb.d
  %i.r = shufflevector <4 x i32> %i.k, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.s = shufflevector <4 x i32> %i.l, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  br label %_mm512_loadu_si512.exit.i

_mm512_loadu_si512.exit.i:                        ; preds = %.lr.ph.i, %bb.j
  %.2100.i = phi ptr [ %i.v, %bb.j ], [ %.158113.i, %.lr.ph.i ] ; 5 uses
  %.05999.i = phi <16 x i32> [ %i.ao, %bb.j ], [ %i.s, %.lr.ph.i ]
  %.06098.i = phi <16 x i32> [ %i.al, %bb.j ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.06197.i = phi i64 [ %i.ag, %bb.j ], [ %i.n, %.lr.ph.i ]
  %.26496.i = phi ptr [ %i.aa, %bb.j ], [ %.163112.i, %.lr.ph.i ] ; 4 uses
  %i.t = phi <16 x i32> [ %i.am, %bb.j ], [ zeroinitializer, %.lr.ph.i ]
  %i.u = load <8 x i64>, ptr %.26496.i, align 1, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %.2100.i, null, !nosanitize !14
  %.pre142.i = ptrtoint ptr %.2100.i to i64, !nosanitize !14 ; 4 uses
  br i1 %.not, label %bb.f, label %_mm512_storeu_si512.exit.i, !prof !15, !nosanitize !14

bb.f:                                             ; preds = %_mm512_loadu_si512.exit.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @5, i64 %.pre142.i) #7, !nosanitize !14
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @7, i64 %.pre142.i) #7, !nosanitize !14
  br label %_mm512_storeu_si512.exit.i, !nosanitize !14

_mm512_storeu_si512.exit.i:                       ; preds = %bb.f, %_mm512_loadu_si512.exit.i
  store <8 x i64> %i.u, ptr %.2100.i, align 1, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %.2100.i, i64 64 ; 3 uses
  %i.w = add i64 %.pre142.i, 64, !nosanitize !14  ; 2 uses
  %i.x = icmp ne i64 %i.w, 0
  %i.y = icmp ult ptr %.2100.i, inttoptr (i64 -64 to ptr)
  %i.z = and i1 %i.y, %i.x, !nosanitize !14
  br i1 %i.z, label %bb.h, label %bb.g, !prof !17, !nosanitize !14

bb.g:                                             ; preds = %_mm512_storeu_si512.exit.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @2, i64 %.pre142.i, i64 %i.w) #7, !nosanitize !14
  br label %bb.h, !nosanitize !14

bb.h:                                             ; preds = %bb.g, %_mm512_storeu_si512.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.26496.i, i64 64 ; 3 uses
  %i.ab = ptrtoint ptr %.26496.i to i64, !nosanitize !14 ; 2 uses
  %i.ac = add i64 %i.ab, 64, !nosanitize !14      ; 2 uses
  %i.ad = icmp ne i64 %i.ac, 0, !nosanitize !14
  %i.ae = icmp ult ptr %.26496.i, inttoptr (i64 -64 to ptr)
  %i.af = and i1 %i.ae, %i.ad, !nosanitize !14
  br i1 %i.af, label %bb.j, label %bb.i, !prof !17, !nosanitize !14

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %i.ab, i64 %i.ac) #7, !nosanitize !14
  br label %bb.j, !nosanitize !14

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = add i64 %.06197.i, -64                  ; 2 uses
  %i.ah = bitcast <8 x i64> %i.u to <64 x i8>     ; 2 uses
  %i.ai = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.ah, <64 x i8> zeroinitializer)
  %i.aj = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ah, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ak = bitcast <8 x i64> %i.ai to <16 x i32>
  %i.al = add <16 x i32> %.06098.i, %i.ak         ; 3 uses
  %i.am = add <16 x i32> %i.t, %.06098.i          ; 2 uses
  %i.an = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aj, <32 x i16> splat (i16 1))
  %i.ao = add <16 x i32> %i.an, %.05999.i         ; 2 uses
  %.not77.i = icmp eq i64 %i.ag, 0
  br i1 %.not77.i, label %._crit_edge.i, label %_mm512_loadu_si512.exit.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.j
  %i.ap = shl <16 x i32> %i.am, splat (i32 6)
  %i.aq = add <16 x i32> %i.ao, %i.ap             ; 2 uses
  %i.ar = shufflevector <16 x i32> %i.al, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.as = shufflevector <16 x i32> %i.al, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %4 = add <4 x i32> %i.ar, %i.as                 ; 2 uses
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.at = add <4 x i32> %4, %5                    ; 2 uses
  %i.au = shufflevector <16 x i32> %i.aq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.av = shufflevector <16 x i32> %i.aq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = add <8 x i32> %i.au, %i.av              ; 2 uses
  %i.ax = shufflevector <8 x i32> %i.aw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ay = shufflevector <8 x i32> %i.aw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = add <4 x i32> %i.ax, %i.ay              ; 2 uses
  %6 = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %7 = add <4 x i32> %i.az, %6                    ; 2 uses
  %8 = shufflevector <4 x i32> %i.at, <4 x i32> %7, <2 x i32> <i32 1, i32 5>
  %i.ba = shufflevector <4 x i32> %i.at, <4 x i32> %7, <2 x i32> <i32 0, i32 4>
  %i.bb = add <2 x i32> %8, %i.ba
  %i.bc = urem <2 x i32> %i.bb, splat (i32 65521) ; 2 uses
  %i.bd = icmp ugt i64 %i.p, 63
  %i.be = extractelement <2 x i32> %i.bc, i64 0   ; 2 uses
  %i.bf = extractelement <2 x i32> %i.bc, i64 1   ; 2 uses
  br i1 %i.bd, label %bb.d, label %bb.k, !llvm.loop !1

bb.k:                                             ; preds = %._crit_edge.i
  %i.bg = shl nuw i32 %i.bf, 16
  %i.bh = or disjoint i32 %i.bg, %i.be            ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %._crit_edge119.i

adler32_fold_copy_impl.exit:                      ; preds = %bb.a, %bb.b, %._crit_edge119.i, %bb.k
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.j, %._crit_edge119.i ], [ %i.bh, %bb.k ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_avx512(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !20 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %adler32_fold_copy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %adler32_fold_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %2, 64
  br i1 %i.c, label %._crit_edge119.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.d = and i32 %0, 65535
  %i.e = lshr i32 %0, 16
  br label %bb.d

._crit_edge119.i:                                 ; preds = %bb.h, %bb.c
  %.065.lcssa.i = phi i64 [ %2, %bb.c ], [ %i.l, %bb.h ]
  %.062.lcssa.i = phi ptr [ %1, %bb.c ], [ %i.r, %bb.h ]
  %.056.lcssa.i = phi i32 [ %0, %bb.c ], [ %i.aw, %bb.h ]
  %i.f = call i32 @adler32_avx2(i32 noundef %.056.lcssa.i, ptr noundef nonnull %.062.lcssa.i, i64 noundef %.065.lcssa.i) #7
  br label %adler32_fold_copy_impl.exit

bb.d:                                             ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.163112.i = phi ptr [ %1, %.preheader.lr.ph.i ], [ %i.r, %._crit_edge.i ]
  %.166111.i = phi i64 [ %2, %.preheader.lr.ph.i ], [ %i.l, %._crit_edge.i ] ; 3 uses
  %.168110.i = phi i32 [ %i.d, %.preheader.lr.ph.i ], [ %i.at, %._crit_edge.i ]
  %.172109.i = phi i32 [ %i.e, %.preheader.lr.ph.i ], [ %i.au, %._crit_edge.i ]
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.168110.i, i64 0
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.172109.i, i64 0
  %i.i = call i64 @llvm.umin.i64(i64 %.166111.i, i64 5552)
  %i.j = and i64 %i.i, 8128                       ; 3 uses
  %i.k = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.166111.i, i64 %i.j), !nosanitize !14 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0, !nosanitize !14 ; 4 uses
  %i.m = extractvalue { i64, i1 } %i.k, 1, !nosanitize !14
  br i1 %i.m, label %bb.e, label %.lr.ph.i, !prof !15, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_sub_overflow(ptr nonnull @1, i64 %.166111.i, i64 %i.j) #8, !nosanitize !14
  br label %.lr.ph.i, !nosanitize !14

.lr.ph.i:                                         ; preds = %bb.e, %bb.d
  %i.n = shufflevector <4 x i32> %i.g, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.o = shufflevector <4 x i32> %i.h, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.g, %.lr.ph.i
  %.05999.us.i = phi <16 x i32> [ %i.ad, %bb.g ], [ %i.o, %.lr.ph.i ]
  %.06098.us.i = phi <16 x i32> [ %i.aa, %bb.g ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.06197.us.i = phi i64 [ %i.w, %bb.g ], [ %i.j, %.lr.ph.i ]
  %.26496.us.i = phi ptr [ %i.r, %bb.g ], [ %.163112.i, %.lr.ph.i ] ; 4 uses
  %i.p = phi <16 x i32> [ %i.ab, %bb.g ], [ zeroinitializer, %.lr.ph.i ]
  %.pre.i = ptrtoint ptr %.26496.us.i to i64, !nosanitize !14 ; 2 uses
  %i.q = load <64 x i8>, ptr %.26496.us.i, align 1, !tbaa !16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.26496.us.i, i64 64 ; 3 uses
  %i.s = add i64 %.pre.i, 64, !nosanitize !14     ; 2 uses
  %i.t = icmp ne i64 %i.s, 0, !nosanitize !14
  %i.u = icmp ult ptr %.26496.us.i, inttoptr (i64 -64 to ptr)
  %i.v = and i1 %i.u, %i.t, !nosanitize !14
  br i1 %i.v, label %bb.g, label %bb.f, !prof !17, !nosanitize !14

bb.f:                                             ; preds = %.lr.ph.split.us.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %.pre.i, i64 %i.s) #7, !nosanitize !14
  br label %bb.g, !nosanitize !14

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.i
  %i.w = add i64 %.06197.us.i, -64                ; 2 uses
  %i.x = call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.q, <64 x i8> zeroinitializer)
  %i.y = call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.q, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.z = bitcast <8 x i64> %i.x to <16 x i32>
  %i.aa = add <16 x i32> %.06098.us.i, %i.z       ; 3 uses
  %i.ab = add <16 x i32> %i.p, %.06098.us.i       ; 2 uses
  %i.ac = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.y, <32 x i16> splat (i16 1))
  %i.ad = add <16 x i32> %i.ac, %.05999.us.i      ; 2 uses
  %.not77.us.i = icmp eq i64 %i.w, 0
  br i1 %.not77.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.g
  %i.ae = shl <16 x i32> %i.ab, splat (i32 6)
  %i.af = add <16 x i32> %i.ad, %i.ae             ; 2 uses
  %i.ag = shufflevector <16 x i32> %i.aa, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.ah = shufflevector <16 x i32> %i.aa, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %3 = add <4 x i32> %i.ag, %i.ah                 ; 2 uses
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ai = add <4 x i32> %3, %4                    ; 2 uses
  %i.aj = shufflevector <16 x i32> %i.af, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = shufflevector <16 x i32> %i.af, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.al = add <8 x i32> %i.aj, %i.ak              ; 2 uses
  %i.am = shufflevector <8 x i32> %i.al, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.an = shufflevector <8 x i32> %i.al, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ao = add <4 x i32> %i.am, %i.an              ; 2 uses
  %5 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %6 = add <4 x i32> %i.ao, %5                    ; 2 uses
  %7 = shufflevector <4 x i32> %i.ai, <4 x i32> %6, <2 x i32> <i32 1, i32 5>
  %i.ap = shufflevector <4 x i32> %i.ai, <4 x i32> %6, <2 x i32> <i32 0, i32 4>
  %i.aq = add <2 x i32> %7, %i.ap
  %i.ar = urem <2 x i32> %i.aq, splat (i32 65521) ; 2 uses
  %i.as = icmp ugt i64 %i.l, 63
  %i.at = extractelement <2 x i32> %i.ar, i64 0   ; 2 uses
  %i.au = extractelement <2 x i32> %i.ar, i64 1   ; 2 uses
  br i1 %i.as, label %bb.d, label %bb.h, !llvm.loop !1

bb.h:                                             ; preds = %._crit_edge.i
  %i.av = shl nuw i32 %i.au, 16
  %i.aw = or disjoint i32 %i.av, %i.at            ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %._crit_edge119.i

adler32_fold_copy_impl.exit:                      ; preds = %bb.a, %bb.b, %._crit_edge119.i, %bb.h
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.f, %._crit_edge119.i ], [ %i.aw, %bb.h ]
  ret i32 %.1.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

declare i32 @adler32_avx2(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <64 x i8> @llvm.masked.load.v64i8.p0(ptr captures(none), <64 x i1>, <64 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v64i8.p0(<64 x i8>, ptr captures(none), <64 x i1>) #5

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8>, <64 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { uwtable }
attributes #3 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nomerge nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{}
!15 = !{!"branch_weights", i32 1, i32 1048575}
!16 = !{!10, !10, i64 0}
!17 = !{!"branch_weights", i32 1048575, i32 1}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i32 -1056584962, i32 464585491}
!20 = !{i32 -1056584962, i32 411946090}
end_hunk_0
