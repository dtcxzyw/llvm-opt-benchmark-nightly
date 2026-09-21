Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/adler32_ssse3?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [63 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/adler32_ssse3.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 10, [32 x i8] c"'uint32_t' (aka 'unsigned int')\00" }
@1 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@2 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 61, i32 17 } }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 70, i32 27 } }
@4 = private unnamed_addr constant { i16, i16, [44 x i8] } { i16 0, i16 6, [44 x i8] c"'const uint8_t' (aka 'const unsigned char')\00" }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 70, i32 19 }, ptr @0 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 71, i32 18 }, ptr @0 }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 90, i32 13 }, ptr @1 }
@8 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 98, i32 52 } }
@9 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 99, i32 17 } }
@10 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 128, i32 17 } }
@.src.1 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/adler32_p.h\00", align 1
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 22, i32 14 }, ptr @4, i8 0, i8 0 }
@12 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src.1, i32 32, i32 22 } }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 32, i32 15 }, ptr @0 }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.1, i32 33, i32 14 }, ptr @0 }
@.src.2 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@15 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const __m128i' (vector of 2 'long long' values)\00" }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3451, i32 10 }, ptr @15, i8 4, i8 0 }

; Function Attrs: nounwind uwtable
define hidden range(i32 0, -983055) i32 @adler32_ssse3(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !21 {
bb.a:
  %i.a = lshr i32 %0, 16                          ; 5 uses
  %i.b = and i32 %0, 65535                        ; 5 uses
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @adler32_len_1(i32 noundef %i.b, ptr noundef %1, i32 noundef %i.a)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.am, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %2, 16
  br i1 %i.f, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.g = call fastcc i32 @adler32_len_16(i32 noundef %i.b, ptr noundef %1, i64 noundef %2, i32 noundef %i.a)
  br label %bb.am

bb.f:                                             ; preds = %bb.d
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = and i64 %i.h, 15                         ; 4 uses
  %i.j = sub nuw nsw i64 16, %i.i                 ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = sub nuw nsw i64 32, %i.i
  %i.l = icmp ult i64 %2, %i.k
  br i1 %i.l, label %_mm_loadu_si128.exit, label %.preheader

_mm_loadu_si128.exit:                             ; preds = %bb.g
  %i.m = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.n = add nsw i64 %2, -16
  %.not141 = icmp ugt ptr %1, inttoptr (i64 -17 to ptr)
  br i1 %.not141, label %bb.h, label %bb.i, !prof !14, !nosanitize !15

bb.h:                                             ; preds = %_mm_loadu_si128.exit
  %i.o = add i64 %i.h, 16, !nosanitize !15
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @2, i64 %i.h, i64 %i.o) #5, !nosanitize !15
  br label %bb.i, !nosanitize !15

bb.i:                                             ; preds = %bb.h, %_mm_loadu_si128.exit
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.a, i64 0
  br label %bb.ad

bb.j:                                             ; preds = %bb.p
  %i.r = sub nuw i64 %2, %i.j
  %i.s = or disjoint i64 %i.i, 5536
  br label %bb.q

.preheader:                                       ; preds = %bb.g, %bb.p
  %.0167 = phi i64 [ %i.ai, %bb.p ], [ 0, %bb.g ]
  %.0121166 = phi i32 [ %i.ae, %bb.p ], [ %i.a, %bb.g ] ; 2 uses
  %.0126165 = phi ptr [ %i.t, %bb.p ], [ %1, %bb.g ] ; 4 uses
  %.0129164 = phi i32 [ %i.z, %bb.p ], [ %i.b, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0126165, i64 1 ; 2 uses
  %.not139 = icmp eq ptr %.0126165, inttoptr (i64 -1 to ptr)
  br i1 %.not139, label %bb.k, label %bb.l, !prof !14, !nosanitize !15

bb.k:                                             ; preds = %.preheader
  %i.u = ptrtoint ptr %.0126165 to i64, !nosanitize !15 ; 2 uses
  %i.v = add i64 %i.u, 1, !nosanitize !15
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %i.u, i64 %i.v) #5, !nosanitize !15
  br label %bb.l, !nosanitize !15

bb.l:                                             ; preds = %.preheader, %bb.k
  %i.w = load i8, ptr %.0126165, align 1, !tbaa !13 ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0129164, i32 %i.x), !nosanitize !15 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 0, !nosanitize !15 ; 4 uses
  %i.aa = extractvalue { i32, i1 } %i.y, 1, !nosanitize !15
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !14, !nosanitize !15

bb.m:                                             ; preds = %bb.l
  %i.ab = zext i32 %.0129164 to i64, !nosanitize !15
  %i.ac = zext i8 %i.w to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @5, i64 %i.ab, i64 %i.ac) #6, !nosanitize !15
  br label %bb.n, !nosanitize !15

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0121166, i32 %i.z), !nosanitize !15 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 0, !nosanitize !15 ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ad, 1, !nosanitize !15
  br i1 %i.af, label %bb.o, label %bb.p, !prof !14, !nosanitize !15

bb.o:                                             ; preds = %bb.n
  %i.ag = zext i32 %.0121166 to i64, !nosanitize !15
  %i.ah = zext i32 %i.z to i64, !nosanitize !15
  call void @__ubsan_handle_add_overflow(ptr nonnull @6, i64 %i.ag, i64 %i.ah) #6, !nosanitize !15
  br label %bb.p, !nosanitize !15

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ai = add nuw nsw i64 %.0167, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.j
  br i1 %exitcond.not, label %bb.j, label %.preheader, !llvm.loop !17

bb.q:                                             ; preds = %bb.f, %bb.j, %bb.ae
  %.1130 = phi i32 [ %5, %bb.ae ], [ %i.z, %bb.j ], [ %i.b, %bb.f ] ; 3 uses
  %.1127 = phi ptr [ %.3, %bb.ae ], [ %i.t, %bb.j ], [ %1, %bb.f ] ; 3 uses
  %.0123 = phi i64 [ %.1124, %bb.ae ], [ %i.r, %bb.j ], [ %2, %bb.f ] ; 7 uses
  %.1122 = phi i32 [ %7, %bb.ae ], [ %i.ae, %bb.j ], [ %i.a, %bb.f ] ; 3 uses
  %.0106 = phi i64 [ 5552, %bb.ae ], [ %i.s, %bb.j ], [ 5552, %bb.f ]
  %i.aj = icmp ugt i64 %.0123, 15
  br i1 %i.aj, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1130, i64 0 ; 2 uses
  %i.al = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1122, i64 0 ; 2 uses
  %i.am = call i64 @llvm.umin.i64(i64 %.0123, i64 %.0106)
  %i.an = and i64 %i.am, -16                      ; 4 uses
  %i.ao = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.0123, i64 %i.an), !nosanitize !15 ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 0, !nosanitize !15
  %i.aq = extractvalue { i64, i1 } %i.ao, 1, !nosanitize !15
  br i1 %i.aq, label %bb.s, label %bb.t, !prof !14, !nosanitize !15

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_sub_overflow(ptr nonnull @7, i64 %.0123, i64 %i.an) #6, !nosanitize !15
  br label %bb.t, !nosanitize !15

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ar = icmp ugt i64 %.0123, 31
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t, %bb.x
  %.0105171 = phi i64 [ %i.bj, %bb.x ], [ %i.an, %bb.t ]
  %i.as = phi <4 x i32> [ %i.bw, %bb.x ], [ zeroinitializer, %bb.t ]
  %.0108.in170 = phi <4 x i32> [ %i.bu, %bb.x ], [ %i.al, %bb.t ]
  %.0111.in169 = phi <4 x i32> [ %i.bq, %bb.x ], [ %i.ak, %bb.t ] ; 2 uses
  %i.at = phi <4 x i32> [ %i.bo, %bb.x ], [ zeroinitializer, %bb.t ]
  %.2128168 = phi ptr [ %i.be, %bb.x ], [ %.1127, %bb.t ] ; 6 uses
  %i.au = ptrtoint ptr %.2128168 to i64, !nosanitize !15 ; 6 uses
  %i.av = and i64 %i.au, 15, !nosanitize !15
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !15
  br i1 %i.aw, label %_mm_load_si128.exit143, label %bb.u, !prof !23, !nosanitize !15

bb.u:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @16, i64 %i.au) #5, !nosanitize !15
  br label %_mm_load_si128.exit143, !nosanitize !15

_mm_load_si128.exit143:                           ; preds = %.lr.ph, %bb.u
  %i.ax = load <16 x i8>, ptr %.2128168, align 16, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.2128168, i64 16
  %i.az = add i64 %i.au, 16, !nosanitize !15      ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0, !nosanitize !15
  %i.bb = icmp ult ptr %.2128168, inttoptr (i64 -16 to ptr)
  %i.bc = and i1 %i.bb, %i.ba, !nosanitize !15
  br i1 %i.bc, label %_mm_load_si128.exit142, label %bb.v, !prof !23, !nosanitize !15

bb.v:                                             ; preds = %_mm_load_si128.exit143
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %i.au, i64 %i.az) #5, !nosanitize !15
  br label %_mm_load_si128.exit142, !nosanitize !15

_mm_load_si128.exit142:                           ; preds = %_mm_load_si128.exit143, %bb.v
  %i.bd = load <16 x i8>, ptr %i.ay, align 16, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.2128168, i64 32 ; 2 uses
  %i.bf = add i64 %i.au, 32, !nosanitize !15      ; 2 uses
  %i.bg = icmp ne i64 %i.bf, 0, !nosanitize !15
  %i.bh = icmp ult ptr %.2128168, inttoptr (i64 -32 to ptr)
  %i.bi = and i1 %i.bh, %i.bg, !nosanitize !15
  br i1 %i.bi, label %bb.x, label %bb.w, !prof !23, !nosanitize !15

bb.w:                                             ; preds = %_mm_load_si128.exit142
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.au, i64 %i.bf) #5, !nosanitize !15
  br label %bb.x, !nosanitize !15

bb.x:                                             ; preds = %_mm_load_si128.exit142, %bb.w
  %i.bj = add i64 %.0105171, -32                  ; 3 uses
  %i.bk = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ax, <16 x i8> zeroinitializer)
  %i.bl = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bd, <16 x i8> zeroinitializer)
  %i.bm = bitcast <2 x i64> %i.bk to <4 x i32>
  %i.bn = add <4 x i32> %.0111.in169, %i.bm
  %i.bo = add <4 x i32> %.0111.in169, %i.at       ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bl to <4 x i32>
  %i.bq = add <4 x i32> %i.bn, %i.bp              ; 2 uses
  %i.br = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.ax, <16 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17>)
  %i.bs = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> splat (i16 1))
  %i.bt = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.bd, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bu = add <4 x i32> %i.bs, %.0108.in170       ; 2 uses
  %i.bv = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bt, <8 x i16> splat (i16 1))
  %i.bw = add <4 x i32> %i.bv, %i.as              ; 2 uses
  %i.bx = icmp ugt i64 %i.bj, 31
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %bb.x
  %i.by = shl <4 x i32> %i.bo, splat (i32 5)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %.2128.lcssa = phi ptr [ %.1127, %bb.t ], [ %i.be, %._crit_edge.loopexit ]
  %.lcssa161 = phi <4 x i32> [ zeroinitializer, %bb.t ], [ %i.by, %._crit_edge.loopexit ]
  %.0111.in.lcssa = phi <4 x i32> [ %i.ak, %bb.t ], [ %i.bq, %._crit_edge.loopexit ]
  %.0108.in.lcssa = phi <4 x i32> [ %i.al, %bb.t ], [ %i.bu, %._crit_edge.loopexit ]
  %.lcssa = phi <4 x i32> [ zeroinitializer, %bb.t ], [ %i.bw, %._crit_edge.loopexit ]
  %.0105.lcssa = phi i64 [ %i.an, %bb.t ], [ %i.bj, %._crit_edge.loopexit ]
  %i.bz = add <4 x i32> %.0108.in.lcssa, %.lcssa161
  %i.ca = add <4 x i32> %i.bz, %.lcssa
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %._crit_edge
  %.3 = phi ptr [ %.4, %bb.ad ], [ %.2128.lcssa, %._crit_edge ] ; 5 uses
  %.1124 = phi i64 [ %.2125, %bb.ad ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.cb = phi <4 x i32> [ %i.cr, %bb.ad ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.1112.in = phi <4 x i32> [ %i.cq, %bb.ad ], [ %.0111.in.lcssa, %._crit_edge ] ; 3 uses
  %.1109.in = phi <4 x i32> [ %i.cu, %bb.ad ], [ %i.ca, %._crit_edge ] ; 2 uses
  %.1 = phi i64 [ %.2, %bb.ad ], [ %.0105.lcssa, %._crit_edge ] ; 2 uses
  %i.cc = icmp ugt i64 %.1, 15
  br i1 %i.cc, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cd = ptrtoint ptr %.3 to i64, !nosanitize !15 ; 4 uses
  %i.ce = and i64 %i.cd, 15, !nosanitize !15
  %i.cf = icmp eq i64 %i.ce, 0, !nosanitize !15
  br i1 %i.cf, label %_mm_load_si128.exit, label %bb.aa, !prof !23, !nosanitize !15

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @16, i64 %i.cd) #5, !nosanitize !15
  br label %_mm_load_si128.exit, !nosanitize !15

_mm_load_si128.exit:                              ; preds = %bb.z, %bb.aa
  %i.cg = load <16 x i8>, ptr %.3, align 16, !tbaa !13
  %i.ch = add i64 %i.cd, 16, !nosanitize !15      ; 2 uses
  %i.ci = icmp ne i64 %i.ch, 0, !nosanitize !15
  %i.cj = icmp ult ptr %.3, inttoptr (i64 -16 to ptr)
  %i.ck = and i1 %i.cj, %i.ci, !nosanitize !15
  br i1 %i.ck, label %bb.ac, label %bb.ab, !prof !23, !nosanitize !15

bb.ab:                                            ; preds = %_mm_load_si128.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.cd, i64 %i.ch) #5, !nosanitize !15
  br label %bb.ac, !nosanitize !15

bb.ac:                                            ; preds = %_mm_load_si128.exit, %bb.ab
  %i.cl = add nsw i64 %.1, -16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.i
  %.pn = phi ptr [ %1, %bb.i ], [ %.3, %bb.ac ]
  %.2125 = phi i64 [ %i.n, %bb.i ], [ %.1124, %bb.ac ]
  %i.cm = phi <16 x i8> [ %i.m, %bb.i ], [ %i.cg, %bb.ac ] ; 2 uses
  %i.cn = phi <4 x i32> [ zeroinitializer, %bb.i ], [ %i.cb, %bb.ac ]
  %.2113 = phi <4 x i32> [ %i.p, %bb.i ], [ %.1112.in, %bb.ac ] ; 2 uses
  %.2110.in = phi <4 x i32> [ %i.q, %bb.i ], [ %.1109.in, %bb.ac ]
  %.2 = phi i64 [ 0, %bb.i ], [ %i.cl, %bb.ac ]
  %.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.co = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cm, <16 x i8> zeroinitializer)
  %i.cp = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cq = add <4 x i32> %.2113, %i.cp
  %i.cr = add <4 x i32> %.2113, %i.cn
  %i.cs = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.cm, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ct = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cs, <8 x i16> splat (i16 1))
  %i.cu = add <4 x i32> %i.ct, %.2110.in
  br label %bb.y, !llvm.loop !19

bb.ae:                                            ; preds = %bb.y
  %i.cv = shl <4 x i32> %i.cb, splat (i32 4)
  %i.cw = add <4 x i32> %.1109.in, %i.cv
  %3 = shufflevector <4 x i32> %.1112.in, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cx = add <4 x i32> %.1112.in, %3
  %4 = extractelement <4 x i32> %i.cx, i64 0
  %5 = urem i32 %4, 65521
  %6 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cw)
  %7 = urem i32 %6, 65521
  br label %bb.q, !llvm.loop !20

bb.af:                                            ; preds = %bb.q
  %.not14.i = icmp eq i64 %.0123, 0
  br i1 %.not14.i, label %adler32_len_16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %bb.al
  %.018.i = phi i32 [ %i.dj, %bb.al ], [ %.1122, %bb.af ] ; 2 uses
  %.0917.i = phi i64 [ %i.cy, %bb.al ], [ %.0123, %bb.af ]
  %.01016.i = phi ptr [ %i.cz, %bb.al ], [ %.1127, %bb.af ] ; 4 uses
  %.01115.i = phi i32 [ %i.de, %bb.al ], [ %.1130, %bb.af ] ; 2 uses
  %i.cy = add nsw i64 %.0917.i, -1                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01016.i, i64 1
  %.not12.i = icmp eq ptr %.01016.i, inttoptr (i64 -1 to ptr)
  br i1 %.not12.i, label %bb.ag, label %bb.ah, !prof !14, !nosanitize !15

bb.ag:                                            ; preds = %.lr.ph.i
  %i.da = ptrtoint ptr %.01016.i to i64, !nosanitize !15
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.da, i64 0) #5, !nosanitize !15
  br label %bb.ah, !nosanitize !15

bb.ah:                                            ; preds = %.lr.ph.i, %bb.ag
  %i.db = load i8, ptr %.01016.i, align 1, !tbaa !13 ; 2 uses
  %i.dc = zext i8 %i.db to i32
  %i.dd = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.01115.i, i32 %i.dc), !nosanitize !15 ; 2 uses
  %i.de = extractvalue { i32, i1 } %i.dd, 0, !nosanitize !15 ; 4 uses
  %i.df = extractvalue { i32, i1 } %i.dd, 1, !nosanitize !15
  br i1 %i.df, label %bb.ai, label %bb.aj, !prof !14, !nosanitize !15

bb.ai:                                            ; preds = %bb.ah
  %i.dg = zext i32 %.01115.i to i64, !nosanitize !15
  %i.dh = zext i8 %i.db to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @13, i64 %i.dg, i64 %i.dh) #6, !nosanitize !15
  br label %bb.aj, !nosanitize !15

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.di = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.018.i, i32 %i.de), !nosanitize !15 ; 2 uses
  %i.dj = extractvalue { i32, i1 } %i.di, 0, !nosanitize !15 ; 2 uses
  %i.dk = extractvalue { i32, i1 } %i.di, 1, !nosanitize !15
  br i1 %i.dk, label %bb.ak, label %bb.al, !prof !14, !nosanitize !15

bb.ak:                                            ; preds = %bb.aj
  %i.dl = zext i32 %.018.i to i64, !nosanitize !15
  %i.dm = zext i32 %i.de to i64, !nosanitize !15
  call void @__ubsan_handle_add_overflow(ptr nonnull @14, i64 %i.dl, i64 %i.dm) #6, !nosanitize !15
  br label %bb.al, !nosanitize !15

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.not.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i, label %adler32_len_16.exit, label %.lr.ph.i, !llvm.loop !0

adler32_len_16.exit:                              ; preds = %bb.al, %bb.af
  %.011.lcssa.i = phi i32 [ %.1130, %bb.af ], [ %i.de, %bb.al ]
  %.0.lcssa.i = phi i32 [ %.1122, %bb.af ], [ %i.dj, %bb.al ]
  %i.dn = urem i32 %.0.lcssa.i, 65521
  %i.do = urem i32 %.011.lcssa.i, 65521
  %i.dp = shl nuw i32 %i.dn, 16
  %i.dq = or disjoint i32 %i.dp, %i.do
  br label %bb.am

bb.am:                                            ; preds = %bb.c, %adler32_len_16.exit, %bb.e, %bb.b
  %.0131 = phi i32 [ %i.d, %bb.b ], [ %i.dq, %adler32_len_16.exit ], [ %i.g, %bb.e ], [ 1, %bb.c ]
  ret i32 %.0131
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -983055) i32 @adler32_len_1(i32 noundef range(i32 0, 65536) %0, ptr noundef %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #1 !func_sanitize !24 {
bb.a:
  %.not = icmp eq ptr %1, null, !nosanitize !15
  br i1 %.not, label %bb.b, label %bb.c, !prof !14, !nosanitize !15

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !15
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @11, i64 %i.a) #5, !nosanitize !15
  br label %bb.c, !nosanitize !15

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %.fr7 = freeze i8 %i.b
  %i.c = zext i8 %.fr7 to i32
  %i.d = add nuw nsw i32 %0, %i.c                 ; 3 uses
  %.urem = add nsw i32 %i.d, -65521
  %.cmp = icmp samesign ult i32 %i.d, 65521
  %i.e = select i1 %.cmp, i32 %i.d, i32 %.urem    ; 2 uses
  %i.f = add nuw nsw i32 %i.e, %2
  %i.g = urem i32 %i.f, 65521
  %i.h = shl nuw i32 %i.g, 16
  %i.i = add nuw nsw i32 %i.h, %i.e
  ret i32 %i.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -983055) i32 @adler32_len_16(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 !func_sanitize !25 {
bb.a:
  %.not14 = icmp eq i64 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.018 = phi i32 [ %i.l, %bb.g ], [ %3, %bb.a ]  ; 2 uses
  %.0917 = phi i64 [ %i.a, %bb.g ], [ %2, %bb.a ]
  %.01016 = phi ptr [ %i.b, %bb.g ], [ %1, %bb.a ] ; 4 uses
  %.01115 = phi i32 [ %i.g, %bb.g ], [ %0, %bb.a ] ; 2 uses
  %i.a = add i64 %.0917, -1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01016, i64 1
  %.not12 = icmp eq ptr %.01016, inttoptr (i64 -1 to ptr)
  br i1 %.not12, label %bb.b, label %bb.c, !prof !14, !nosanitize !15

bb.b:                                             ; preds = %.lr.ph
  %i.c = ptrtoint ptr %.01016 to i64, !nosanitize !15
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.c, i64 0) #5, !nosanitize !15
  br label %bb.c, !nosanitize !15

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = load i8, ptr %.01016, align 1, !tbaa !13 ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.01115, i32 %i.e), !nosanitize !15 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 0, !nosanitize !15 ; 4 uses
  %i.h = extractvalue { i32, i1 } %i.f, 1, !nosanitize !15
  br i1 %i.h, label %bb.d, label %bb.e, !prof !14, !nosanitize !15

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %.01115 to i64, !nosanitize !15
  %i.j = zext i8 %i.d to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @13, i64 %i.i, i64 %i.j) #6, !nosanitize !15
  br label %bb.e, !nosanitize !15

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.018, i32 %i.g), !nosanitize !15 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 0, !nosanitize !15 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.k, 1, !nosanitize !15
  br i1 %i.m, label %bb.f, label %bb.g, !prof !14, !nosanitize !15

bb.f:                                             ; preds = %bb.e
  %i.n = zext i32 %.018 to i64, !nosanitize !15
  %i.o = zext i32 %i.g to i64, !nosanitize !15
  call void @__ubsan_handle_add_overflow(ptr nonnull @14, i64 %i.n, i64 %i.o) #6, !nosanitize !15
  br label %bb.g, !nosanitize !15

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.011.lcssa = phi i32 [ %0, %bb.a ], [ %i.g, %bb.g ]
  %.0.lcssa = phi i32 [ %3, %bb.a ], [ %i.l, %bb.g ]
  %i.p = urem i32 %.0.lcssa, 65521
  %i.q = urem i32 %.011.lcssa, 65521
  %i.r = shl nuw i32 %i.p, 16
  %i.s = or disjoint i32 %i.r, %i.q
  ret i32 %i.s
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { uwtable }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nomerge nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !16}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"branch_weights", i32 1, i32 1048575}
!15 = !{}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = !{i32 -1056584962, i32 411946090}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"branch_weights", i32 1048575, i32 1}
!24 = !{i32 -1056584962, i32 -1317199462}
!25 = !{i32 -1056584962, i32 -880331902}
end_hunk_0
