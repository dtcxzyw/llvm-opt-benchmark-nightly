Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/adler32?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@adler32_impl = internal global ptr @dispatch_adler32, align 8
@libdeflate_x86_cpu_features = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @libdeflate_adler32(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr @adler32_impl, align 8, !tbaa !9
  %i.c = tail call i32 %i.b(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @dispatch_adler32(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !14
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %get_x86_cpu_features.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @libdeflate_init_x86_cpu_features() #11
  br label %get_x86_cpu_features.exit.i

get_x86_cpu_features.exit.i:                      ; preds = %bb.b, %bb.a
  %i.c = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !14 ; 4 uses
  %i.d = and i32 %i.c, 608
  %or.cond16.not.i = icmp eq i32 %i.d, 608
  br i1 %or.cond16.not.i, label %arch_select_adler32_func.exit, label %bb.c

bb.c:                                             ; preds = %get_x86_cpu_features.exit.i
  %i.e = and i32 %i.c, 704
  %or.cond18.not.i = icmp eq i32 %i.e, 704
  br i1 %or.cond18.not.i, label %arch_select_adler32_func.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, 8
  %.not14.i = icmp eq i32 %i.f, 0
  %i.g = and i32 %i.c, 1032
  %or.cond19.not.i = icmp eq i32 %i.g, 1032
  %adler32_x86_sse2.adler32_x86_avx2.i = select i1 %.not14.i, ptr @adler32_x86_sse2, ptr @adler32_x86_avx2
  %spec.select.i = select i1 %or.cond19.not.i, ptr @adler32_x86_avx2_vnni, ptr %adler32_x86_sse2.adler32_x86_avx2.i
  br label %arch_select_adler32_func.exit

arch_select_adler32_func.exit:                    ; preds = %get_x86_cpu_features.exit.i, %bb.c, %bb.d
  %.0.i = phi ptr [ %spec.select.i, %bb.d ], [ @adler32_x86_avx512_vl512_vnni, %get_x86_cpu_features.exit.i ], [ @adler32_x86_avx512_vl256_vnni, %bb.c ] ; 2 uses
  store volatile ptr %.0.i, ptr @adler32_impl, align 8, !tbaa !9
  %i.h = tail call i32 %.0.i(i32 noundef %0, ptr noundef %1, i64 noundef %2) #11
  ret i32 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx512_vl512_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 63
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader183, label %bb.c, !prof !10

.preheader183:                                    ; preds = %bb.a, %.preheader183
  %.0180 = phi i32 [ %i.k, %.preheader183 ], [ %i.a, %bb.a ]
  %.0177 = phi i32 [ %i.l, %.preheader183 ], [ %i.b, %bb.a ]
  %.0132 = phi i64 [ %i.m, %.preheader183 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.h, %.preheader183 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0180, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0177                     ; 2 uses
  %i.m = add i64 %.0132, -1                       ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 63
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !15

bb.b:                                             ; preds = %.preheader183
  %3 = urem i32 %i.k, 65521
  %4 = urem i32 %i.l, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1181 = phi i32 [ %3, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %4, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2205 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2134204 = phi i64 [ %i.t, %bb.k ], [ %.1133, %bb.c ] ; 3 uses
  %.2179203 = phi i32 [ %10, %bb.k ], [ %.1178, %bb.c ]
  %.2182202 = phi i32 [ %9, %bb.k ], [ %.1181, %bb.c ] ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5376) ; 4 uses
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = mul nuw nsw i32 %.2182202, %i.q
  %i.s = add nuw nsw i32 %i.r, %.2179203
  %i.t = sub nuw i64 %.2134204, %i.p              ; 2 uses
  %i.u = icmp ugt i64 %.2134204, 255
  br i1 %i.u, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.v = phi <16 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.w = phi <16 x i32> [ %i.ao, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.x = phi <16 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.y = phi <16 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.z = phi <16 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.aa = phi <16 x i32> [ %i.ap, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ab = phi <16 x i32> [ %i.aq, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ac = phi <16 x i32> [ %i.ar, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ad = phi <16 x i32> [ %i.as, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ae = phi <16 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.af = phi <16 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <16 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0135 = phi i64 [ %i.bb, %.preheader ], [ %i.p, %.lr.ph ]
  %.3 = phi ptr [ %i.ba, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.ah = load <64 x i8>, ptr %.3, align 1, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.aj = load <64 x i8>, ptr %i.ai, align 1, !tbaa !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 128
  %i.al = load <64 x i8>, ptr %i.ak, align 1, !tbaa !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.3, i64 192
  %i.an = load <64 x i8>, ptr %i.am, align 1, !tbaa !11 ; 2 uses
  %i.ao = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.w, <64 x i8> %i.ah, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ap = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.aa, <64 x i8> %i.aj, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ab, <64 x i8> %i.al, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ar = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ac, <64 x i8> %i.an, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.as = add <16 x i32> %i.ad, %i.v              ; 2 uses
  %i.at = add <16 x i32> %i.ae, %i.x              ; 2 uses
  %i.au = add <16 x i32> %i.af, %i.y              ; 2 uses
  %i.av = add <16 x i32> %i.ag, %i.z              ; 2 uses
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.v, <64 x i8> %i.ah, <64 x i8> splat (i8 1)) ; 3 uses
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.x, <64 x i8> %i.aj, <64 x i8> splat (i8 1)) ; 2 uses
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.y, <64 x i8> %i.al, <64 x i8> splat (i8 1)) ; 3 uses
  %i.az = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.z, <64 x i8> %i.an, <64 x i8> splat (i8 1)) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.3, i64 256 ; 2 uses
  %i.bb = add i64 %.0135, -256                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 255
  br i1 %i.bc, label %.preheader, label %bb.d, !llvm.loop !16

bb.d:                                             ; preds = %.preheader
  %i.bd = add <16 x i32> %i.ax, %i.aw             ; 2 uses
  %i.be = add <16 x i32> %i.ay, %i.aw
  %i.bf = add <16 x i32> %i.at, %i.as
  %i.bg = add <16 x i32> %i.bf, %i.au
  %i.bh = add <16 x i32> %i.bg, %i.av
  %i.bi = add <16 x i32> %i.bd, %i.ay
  %i.bj = add <16 x i32> %i.bi, %i.az
  %i.bk = shl <16 x i32> %i.bh, splat (i32 8)
  %i.bl = shl <16 x i32> %i.bd, splat (i32 7)
  %i.bm = shl <16 x i32> %i.be, splat (i32 6)
  %i.bn = add <16 x i32> %i.ao, %i.bk
  %i.bo = add <16 x i32> %i.bn, %i.ap
  %i.bp = add <16 x i32> %i.bo, %i.aq
  %i.bq = add <16 x i32> %i.bp, %i.ar
  %i.br = add <16 x i32> %i.bq, %i.bl
  %i.bs = add <16 x i32> %i.br, %i.bm
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bt = phi <16 x i32> [ %i.bj, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bu = phi <16 x i32> [ %i.bs, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1136 = phi i64 [ %i.bb, %bb.d ], [ %i.p, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.ba, %bb.d ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.bv = icmp samesign ugt i64 %.1136, 127
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bw = load <64 x i8>, ptr %.4, align 1, !tbaa !11 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.by = load <64 x i8>, ptr %i.bx, align 1, !tbaa !11 ; 2 uses
  %i.bz = shl <16 x i32> %i.bt, splat (i32 7)
  %i.ca = add <16 x i32> %i.bz, %i.bu
  %i.cb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bt, <64 x i8> %i.bw, <64 x i8> splat (i8 1))
  %i.cc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cb, <64 x i8> %i.by, <64 x i8> splat (i8 1))
  %i.cd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ca, <64 x i8> %i.bw, <64 x i8> splat (i8 64))
  %i.ce = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cd, <64 x i8> %i.bw, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ce, <64 x i8> %i.by, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cg = getelementptr inbounds nuw i8, ptr %.4, i64 128
  %i.ch = add nsw i64 %.1136, -128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ci = phi <16 x i32> [ %i.cc, %bb.f ], [ %i.bt, %bb.e ] ; 4 uses
  %i.cj = phi <16 x i32> [ %i.cf, %bb.f ], [ %i.bu, %bb.e ] ; 2 uses
  %.2137 = phi i64 [ %i.ch, %bb.f ], [ %.1136, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cg, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = trunc nuw nsw i64 %.2137 to i32
  %i.cl = insertelement <16 x i32> poison, i32 %i.ck, i64 0
  %i.cm = shufflevector <16 x i32> %i.cl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cn = mul <16 x i32> %i.cm, %i.ci
  %i.co = add <16 x i32> %i.cn, %i.cj             ; 2 uses
  %i.cp = trunc i64 %.2137 to i8
  %i.cq = add i8 %i.cp, -64
  %i.cr = insertelement <64 x i8> poison, i8 %i.cq, i64 0
  %i.cs = shufflevector <64 x i8> %i.cr, <64 x i8> poison, <64 x i32> zeroinitializer ; 2 uses
  %i.ct = add <64 x i8> %i.cs, <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cu = icmp samesign ugt i64 %.2137, 64
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cv = load <64 x i8>, ptr %.5, align 1, !tbaa !11 ; 2 uses
  %i.cw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ci, <64 x i8> %i.cv, <64 x i8> splat (i8 1))
  %i.cx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.co, <64 x i8> %i.cv, <64 x i8> %i.ct)
  %i.cy = getelementptr inbounds nuw i8, ptr %.5, i64 64
  %i.cz = add nsw i64 %.2137, -64
  %i.da = add <64 x i8> %i.cs, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31, i8 -32, i8 -33, i8 -34, i8 -35, i8 -36, i8 -37, i8 -38, i8 -39, i8 -40, i8 -41, i8 -42, i8 -43, i8 -44, i8 -45, i8 -46, i8 -47, i8 -48, i8 -49, i8 -50, i8 -51, i8 -52, i8 -53, i8 -54, i8 -55, i8 -56, i8 -57, i8 -58, i8 -59, i8 -60, i8 -61, i8 -62, i8 -63>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi <16 x i32> [ %i.cw, %bb.i ], [ %i.ci, %bb.h ]
  %.3153.in = phi <16 x i32> [ %i.cx, %bb.i ], [ %i.co, %bb.h ]
  %.0139.in = phi <64 x i8> [ %i.da, %bb.i ], [ %i.ct, %bb.h ]
  %.3138 = phi i64 [ %i.cz, %bb.i ], [ %.2137, %bb.h ] ; 2 uses
  %.6 = phi ptr [ %i.cy, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  %i.db = sub nuw nsw i64 64, %.3138
  %i.dc = lshr i64 -1, %i.db
  %i.dd = bitcast i64 %i.dc to <64 x i1>
  %i.de = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.6, <64 x i1> %i.dd, <64 x i8> zeroinitializer) ; 2 uses
  %i.df = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.pre-phi, <64 x i8> %i.de, <64 x i8> splat (i8 1))
  %i.dg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.3153.in, <64 x i8> %i.de, <64 x i8> %.0139.in)
  %i.dh = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.di = phi <16 x i32> [ %i.df, %bb.j ], [ %i.ci, %bb.g ]
  %i.dj = phi <16 x i32> [ %i.dg, %bb.j ], [ %i.cj, %bb.g ]
  %.7 = phi ptr [ %i.dh, %bb.j ], [ %.5, %bb.g ]
  %5 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.di)
  %6 = add i32 %5, %.2182202
  %7 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.dj)
  %8 = add i32 %i.s, %7
  %9 = urem i32 %6, 65521                         ; 2 uses
  %10 = urem i32 %8, 65521                        ; 2 uses
  %.not164 = icmp eq i64 %i.t, 0
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %9, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %10, %bb.k ]
  %i.dk = shl nuw i32 %.2179.lcssa, 16
  %i.dl = or i32 %i.dk, %.2182.lcssa
  ret i32 %i.dl
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx512_vl256_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #3 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader183, label %bb.c, !prof !10

.preheader183:                                    ; preds = %bb.a, %.preheader183
  %.0180 = phi i32 [ %i.k, %.preheader183 ], [ %i.a, %bb.a ]
  %.0177 = phi i32 [ %i.l, %.preheader183 ], [ %i.b, %bb.a ]
  %.0132 = phi i64 [ %i.m, %.preheader183 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.h, %.preheader183 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0180, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0177                     ; 2 uses
  %i.m = add i64 %.0132, -1                       ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 31
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !18

bb.b:                                             ; preds = %.preheader183
  %3 = urem i32 %i.k, 65521
  %4 = urem i32 %i.l, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1181 = phi i32 [ %3, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %4, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2205 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2134204 = phi i64 [ %i.t, %bb.k ], [ %.1133, %bb.c ] ; 3 uses
  %.2179203 = phi i32 [ %10, %bb.k ], [ %.1178, %bb.c ]
  %.2182202 = phi i32 [ %9, %bb.k ], [ %.1181, %bb.c ] ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5504) ; 4 uses
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = mul nuw nsw i32 %.2182202, %i.q
  %i.s = add nuw nsw i32 %i.r, %.2179203
  %i.t = sub nuw i64 %.2134204, %i.p              ; 2 uses
  %i.u = icmp ugt i64 %.2134204, 127
  br i1 %i.u, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.v = phi <8 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.w = phi <8 x i32> [ %i.ao, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.x = phi <8 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.y = phi <8 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.z = phi <8 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.aa = phi <8 x i32> [ %i.ap, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ab = phi <8 x i32> [ %i.aq, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ac = phi <8 x i32> [ %i.ar, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ad = phi <8 x i32> [ %i.as, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ae = phi <8 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.af = phi <8 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <8 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0135 = phi i64 [ %i.bb, %.preheader ], [ %i.p, %.lr.ph ]
  %.3 = phi ptr [ %i.ba, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.ah = load <32 x i8>, ptr %.3, align 1, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.aj = load <32 x i8>, ptr %i.ai, align 1, !tbaa !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.al = load <32 x i8>, ptr %i.ak, align 1, !tbaa !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.an = load <32 x i8>, ptr %i.am, align 1, !tbaa !11 ; 2 uses
  %i.ao = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.w, <32 x i8> %i.ah, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ap = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aa, <32 x i8> %i.aj, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ab, <32 x i8> %i.al, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ar = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ac, <32 x i8> %i.an, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.as = add <8 x i32> %i.ad, %i.v               ; 2 uses
  %i.at = add <8 x i32> %i.ae, %i.x               ; 2 uses
  %i.au = add <8 x i32> %i.af, %i.y               ; 2 uses
  %i.av = add <8 x i32> %i.ag, %i.z               ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.v, <32 x i8> %i.ah, <32 x i8> splat (i8 1)) ; 3 uses
  %i.ax = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.x, <32 x i8> %i.aj, <32 x i8> splat (i8 1)) ; 2 uses
  %i.ay = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.y, <32 x i8> %i.al, <32 x i8> splat (i8 1)) ; 3 uses
  %i.az = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.z, <32 x i8> %i.an, <32 x i8> splat (i8 1)) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.bb = add i64 %.0135, -128                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 127
  br i1 %i.bc, label %.preheader, label %bb.d, !llvm.loop !19

bb.d:                                             ; preds = %.preheader
  %i.bd = add <8 x i32> %i.ax, %i.aw              ; 2 uses
  %i.be = add <8 x i32> %i.ay, %i.aw
  %i.bf = add <8 x i32> %i.at, %i.as
  %i.bg = add <8 x i32> %i.bf, %i.au
  %i.bh = add <8 x i32> %i.bg, %i.av
  %i.bi = add <8 x i32> %i.bd, %i.ay
  %i.bj = add <8 x i32> %i.bi, %i.az
  %i.bk = shl <8 x i32> %i.bh, splat (i32 7)
  %i.bl = shl <8 x i32> %i.bd, splat (i32 6)
  %i.bm = shl <8 x i32> %i.be, splat (i32 5)
  %i.bn = add <8 x i32> %i.ao, %i.bk
  %i.bo = add <8 x i32> %i.bn, %i.ap
  %i.bp = add <8 x i32> %i.bo, %i.aq
  %i.bq = add <8 x i32> %i.bp, %i.ar
  %i.br = add <8 x i32> %i.bq, %i.bl
  %i.bs = add <8 x i32> %i.br, %i.bm
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bt = phi <8 x i32> [ %i.bj, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bu = phi <8 x i32> [ %i.bs, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1136 = phi i64 [ %i.bb, %bb.d ], [ %i.p, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.ba, %bb.d ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.bv = icmp samesign ugt i64 %.1136, 63
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bw = load <32 x i8>, ptr %.4, align 1, !tbaa !11 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.by = load <32 x i8>, ptr %i.bx, align 1, !tbaa !11 ; 2 uses
  %i.bz = shl <8 x i32> %i.bt, splat (i32 6)
  %i.ca = add <8 x i32> %i.bz, %i.bu
  %i.cb = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bt, <32 x i8> %i.bw, <32 x i8> splat (i8 1))
  %i.cc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cb, <32 x i8> %i.by, <32 x i8> splat (i8 1))
  %i.cd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ca, <32 x i8> %i.bw, <32 x i8> splat (i8 32))
  %i.ce = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cd, <32 x i8> %i.bw, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.by, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cg = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.ch = add nsw i64 %.1136, -64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ci = phi <8 x i32> [ %i.cc, %bb.f ], [ %i.bt, %bb.e ] ; 4 uses
  %i.cj = phi <8 x i32> [ %i.cf, %bb.f ], [ %i.bu, %bb.e ] ; 2 uses
  %.2137 = phi i64 [ %i.ch, %bb.f ], [ %.1136, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cg, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = trunc nuw nsw i64 %.2137 to i32         ; 2 uses
  %i.cl = insertelement <8 x i32> poison, i32 %i.ck, i64 0
  %i.cm = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cn = mul <8 x i32> %i.cm, %i.ci
  %i.co = add <8 x i32> %i.cn, %i.cj              ; 2 uses
  %i.cp = trunc i64 %.2137 to i8
  %i.cq = add i8 %i.cp, -32
  %i.cr = insertelement <32 x i8> poison, i8 %i.cq, i64 0
  %i.cs = shufflevector <32 x i8> %i.cr, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ct = add <32 x i8> %i.cs, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cu = icmp samesign ugt i64 %.2137, 32
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cv = load <32 x i8>, ptr %.5, align 1, !tbaa !11 ; 2 uses
  %i.cw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ci, <32 x i8> %i.cv, <32 x i8> splat (i8 1))
  %i.cx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.co, <32 x i8> %i.cv, <32 x i8> %i.ct)
  %i.cy = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cz = add nsw i64 %.2137, -32                 ; 2 uses
  %i.da = add <32 x i8> %i.cs, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  %.pre = trunc nuw nsw i64 %i.cz to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi227 = phi <8 x i32> [ %i.cw, %bb.i ], [ %i.ci, %bb.h ]
  %.pre-phi = phi i32 [ %.pre, %bb.i ], [ %i.ck, %bb.h ]
  %.3153.in = phi <8 x i32> [ %i.cx, %bb.i ], [ %i.co, %bb.h ]
  %.0139.in = phi <32 x i8> [ %i.da, %bb.i ], [ %i.ct, %bb.h ]
  %.3138 = phi i64 [ %i.cz, %bb.i ], [ %.2137, %bb.h ]
  %.6 = phi ptr [ %i.cy, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  %i.db = sub nsw i32 32, %.pre-phi
  %i.dc = lshr i32 -1, %i.db
  %i.dd = bitcast i32 %i.dc to <32 x i1>
  %i.de = tail call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %.6, <32 x i1> %i.dd, <32 x i8> zeroinitializer) ; 2 uses
  %i.df = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi227, <32 x i8> %i.de, <32 x i8> splat (i8 1))
  %i.dg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3153.in, <32 x i8> %i.de, <32 x i8> %.0139.in)
  %i.dh = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.di = phi <8 x i32> [ %i.df, %bb.j ], [ %i.ci, %bb.g ]
  %i.dj = phi <8 x i32> [ %i.dg, %bb.j ], [ %i.cj, %bb.g ]
  %.7 = phi ptr [ %i.dh, %bb.j ], [ %.5, %bb.g ]
  %5 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.di)
  %6 = add i32 %5, %.2182202
  %7 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dj)
  %8 = add i32 %i.s, %7
  %9 = urem i32 %6, 65521                         ; 2 uses
  %10 = urem i32 %8, 65521                        ; 2 uses
  %.not164 = icmp eq i64 %i.t, 0
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %9, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %10, %bb.k ]
  %i.dk = shl nuw i32 %.2179.lcssa, 16
  %i.dl = or i32 %i.dk, %.2182.lcssa
  ret i32 %i.dl
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = alloca <4 x i64>, align 32               ; 5 uses
  %i.b = and i32 %0, 65535                        ; 2 uses
  %i.c = lshr i32 %0, 16                          ; 2 uses
  %i.d = icmp ugt i64 %2, 65536
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, 31
  %i.g = icmp ne i64 %i.f, 0
  %i.h = and i1 %i.d, %i.g
  br i1 %i.h, label %.preheader185, label %bb.c, !prof !10

.preheader185:                                    ; preds = %bb.a, %.preheader185
  %.0181 = phi i32 [ %i.l, %.preheader185 ], [ %i.b, %bb.a ]
  %.0178 = phi i32 [ %i.m, %.preheader185 ], [ %i.c, %bb.a ]
  %.0133 = phi i64 [ %i.n, %.preheader185 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.i, %.preheader185 ], [ %1, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.j = load i8, ptr %.0, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i32
  %i.l = add i32 %.0181, %i.k                     ; 3 uses
  %i.m = add i32 %i.l, %.0178                     ; 2 uses
  %i.n = add i64 %.0133, -1                       ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = and i64 %i.o, 31
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.b, label %.preheader185, !llvm.loop !21

bb.b:                                             ; preds = %.preheader185
  %i.q = urem i32 %i.l, 65521
  %i.r = urem i32 %i.m, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1182 = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1179 = phi i32 [ %i.r, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.1134 = phi i64 [ %i.n, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]
  %.not165203 = icmp eq i64 %.1134, 0
  br i1 %.not165203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2207 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2135206 = phi i64 [ %i.w, %bb.k ], [ %.1134, %bb.c ] ; 3 uses
  %.2180205 = phi i32 [ %i.do, %bb.k ], [ %.1179, %bb.c ]
  %.2183204 = phi i32 [ %i.dn, %bb.k ], [ %.1182, %bb.c ] ; 2 uses
  %i.s = tail call i64 @llvm.umin.i64(i64 %.2135206, i64 5504) ; 4 uses
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = mul nuw nsw i32 %.2183204, %i.t
  %i.v = add nuw nsw i32 %i.u, %.2180205
  %i.w = sub nuw i64 %.2135206, %i.s              ; 2 uses
  %i.x = icmp ugt i64 %.2135206, 127
  br i1 %i.x, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.y = phi <8 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.z = phi <8 x i32> [ %i.ar, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aa = phi <8 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ab = phi <8 x i32> [ %i.bb, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ac = phi <8 x i32> [ %i.bc, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ad = phi <8 x i32> [ %i.as, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ae = phi <8 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.af = phi <8 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <8 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <8 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ai = phi <8 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aj = phi <8 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0136 = phi i64 [ %i.be, %.preheader ], [ %i.s, %.lr.ph ]
  %.3 = phi ptr [ %i.bd, %.preheader ], [ %.2207, %.lr.ph ] ; 5 uses
  %i.ak = load <32 x i8>, ptr %.3, align 1, !tbaa !11 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.am = load <32 x i8>, ptr %i.al, align 1, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.ao = load <32 x i8>, ptr %i.an, align 1, !tbaa !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.aq = load <32 x i8>, ptr %i.ap, align 1, !tbaa !11 ; 2 uses
  %i.ar = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.z, <32 x i8> %i.ak, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.as = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ad, <32 x i8> %i.am, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.at = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ae, <32 x i8> %i.ao, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.au = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.af, <32 x i8> %i.aq, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.av = add <8 x i32> %i.ag, %i.y               ; 2 uses
  %i.aw = add <8 x i32> %i.ah, %i.aa              ; 2 uses
  %i.ax = add <8 x i32> %i.ai, %i.ab              ; 2 uses
  %i.ay = add <8 x i32> %i.aj, %i.ac              ; 2 uses
  %i.az = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.y, <32 x i8> %i.ak, <32 x i8> splat (i8 1)) ; 3 uses
  %i.ba = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aa, <32 x i8> %i.am, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bb = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ab, <32 x i8> %i.ao, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ac, <32 x i8> %i.aq, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.be = add i64 %.0136, -128                    ; 3 uses
  %i.bf = icmp ugt i64 %i.be, 127
  br i1 %i.bf, label %.preheader, label %bb.d, !llvm.loop !22

bb.d:                                             ; preds = %.preheader
  %i.bg = add <8 x i32> %i.ba, %i.az              ; 2 uses
  %i.bh = add <8 x i32> %i.bb, %i.az
  %i.bi = add <8 x i32> %i.aw, %i.av
  %i.bj = add <8 x i32> %i.bi, %i.ax
  %i.bk = add <8 x i32> %i.bj, %i.ay
  %i.bl = add <8 x i32> %i.bg, %i.bb
  %i.bm = add <8 x i32> %i.bl, %i.bc
  %i.bn = shl <8 x i32> %i.bk, splat (i32 7)
  %i.bo = shl <8 x i32> %i.bg, splat (i32 6)
  %i.bp = shl <8 x i32> %i.bh, splat (i32 5)
  %i.bq = add <8 x i32> %i.ar, %i.bn
  %i.br = add <8 x i32> %i.bq, %i.as
  %i.bs = add <8 x i32> %i.br, %i.at
  %i.bt = add <8 x i32> %i.bs, %i.au
  %i.bu = add <8 x i32> %i.bt, %i.bo
  %i.bv = add <8 x i32> %i.bu, %i.bp
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bw = phi <8 x i32> [ %i.bm, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bx = phi <8 x i32> [ %i.bv, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1137 = phi i64 [ %i.be, %bb.d ], [ %i.s, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bd, %bb.d ], [ %.2207, %.lr.ph ] ; 4 uses
  %i.by = icmp samesign ugt i64 %.1137, 63
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = load <32 x i8>, ptr %.4, align 1, !tbaa !11 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.cb = load <32 x i8>, ptr %i.ca, align 1, !tbaa !11 ; 2 uses
  %i.cc = shl <8 x i32> %i.bw, splat (i32 6)
  %i.cd = add <8 x i32> %i.cc, %i.bx
  %i.ce = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bw, <32 x i8> %i.bz, <32 x i8> splat (i8 1))
  %i.cf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.cb, <32 x i8> splat (i8 1))
  %i.cg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cd, <32 x i8> %i.bz, <32 x i8> splat (i8 32))
  %i.ch = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.bz, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ci = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ch, <32 x i8> %i.cb, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cj = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.ck = add nsw i64 %.1137, -64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cl = phi <8 x i32> [ %i.cf, %bb.f ], [ %i.bw, %bb.e ] ; 4 uses
  %i.cm = phi <8 x i32> [ %i.ci, %bb.f ], [ %i.bx, %bb.e ] ; 2 uses
  %.2138 = phi i64 [ %i.ck, %bb.f ], [ %.1137, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cj, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not166 = icmp eq i64 %.2138, 0
  br i1 %.not166, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cn = trunc nuw nsw i64 %.2138 to i32
  %i.co = insertelement <8 x i32> poison, i32 %i.cn, i64 0
  %i.cp = shufflevector <8 x i32> %i.co, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cq = mul <8 x i32> %i.cp, %i.cl
  %i.cr = add <8 x i32> %i.cq, %i.cm              ; 2 uses
  %i.cs = trunc i64 %.2138 to i8
  %i.ct = add i8 %i.cs, -32
  %i.cu = insertelement <32 x i8> poison, i8 %i.ct, i64 0
  %i.cv = shufflevector <32 x i8> %i.cu, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.cw = add <32 x i8> %i.cv, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cx = icmp samesign ugt i64 %.2138, 32
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cy = load <32 x i8>, ptr %.5, align 1, !tbaa !11 ; 2 uses
  %i.cz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cl, <32 x i8> %i.cy, <32 x i8> splat (i8 1))
  %i.da = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cr, <32 x i8> %i.cy, <32 x i8> %i.cw)
  %i.db = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.dc = add nsw i64 %.2138, -32
  %i.dd = add <32 x i8> %i.cv, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi <8 x i32> [ %i.cz, %bb.i ], [ %i.cl, %bb.h ]
  %.3154.in = phi <8 x i32> [ %i.da, %bb.i ], [ %i.cr, %bb.h ]
  %.0140.in = phi <32 x i8> [ %i.dd, %bb.i ], [ %i.cw, %bb.h ]
  %.3139 = phi i64 [ %i.dc, %bb.i ], [ %.2138, %bb.h ] ; 2 uses
  %.6 = phi ptr [ %i.db, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.a, align 32, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %.6, i64 %.3139, i1 false)
  %.0..0..0..0.2184231289 = load <32 x i8>, ptr %i.a, align 32, !tbaa !11 ; 2 uses
  %i.de = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> splat (i8 1))
  %i.df = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3154.in, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> %.0140.in)
  %i.dg = getelementptr inbounds nuw i8, ptr %.6, i64 %.3139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.dh = phi <8 x i32> [ %i.de, %bb.j ], [ %i.cl, %bb.g ]
  %i.di = phi <8 x i32> [ %i.df, %bb.j ], [ %i.cm, %bb.g ]
  %.7 = phi ptr [ %i.dg, %bb.j ], [ %.5, %bb.g ]
  %i.dj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dh)
  %i.dk = add i32 %i.dj, %.2183204
  %i.dl = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.di)
  %i.dm = add i32 %i.v, %i.dl
  %i.dn = urem i32 %i.dk, 65521                   ; 2 uses
  %i.do = urem i32 %i.dm, 65521                   ; 2 uses
  %.not165 = icmp eq i64 %i.w, 0
  br i1 %.not165, label %._crit_edge, label %.lr.ph, !llvm.loop !23
end_hunk_0
begin_hunk_1_@adler32_x86_sse2:bb.a
  %i.ap = add <8 x i16> %i.z, %i.ao               ; 2 uses
  %i.aq = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.aa, <16 x i8> zeroinitializer)
  %i.ar = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ac, <16 x i8> zeroinitializer)
  %i.as = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.at = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.au = add <4 x i32> %i.u, %i.as
  %i.av = add <4 x i32> %i.au, %i.at              ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.3, i64 32 ; 2 uses
  %i.ax = add i64 %.094, -32                      ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 31
  br i1 %i.ay, label %.preheader222, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %.preheader222
  %i.az = trunc nuw nsw i64 %i.r to i32
  %i.ba = and i32 %i.az, 8160
  %i.bb = mul nuw nsw i32 %i.ba, %.2129162
  %i.bc = add nuw nsw i32 %i.bb, %.2123163
  %i.bd = shl <4 x i32> %i.ad, splat (i32 5)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ag, <8 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25>)
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aj, <8 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17>)
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.am, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.bi = add <4 x i32> %i.be, %i.bd
  %i.bj = add <4 x i32> %i.bi, %i.bf
  %i.bk = add <4 x i32> %i.bj, %i.bg
  %i.bl = add <4 x i32> %i.bk, %i.bh
  %i.bm = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bn = add <4 x i32> %i.bm, %i.av
  %i.bo = extractelement <4 x i32> %i.bn, i64 0
  %i.bp = add i32 %i.bo, %.2129162
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bl)
  %i.br = add i32 %i.bc, %i.bq
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167, %bb.d
  %.3130 = phi i32 [ %i.bp, %bb.d ], [ %.2129162, %.lr.ph167 ] ; 2 uses
  %.3124 = phi i32 [ %i.br, %bb.d ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.195 = phi i64 [ %i.ax, %bb.d ], [ %i.r, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.aw, %bb.d ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.bs = icmp samesign ugt i64 %.195, 3
  br i1 %i.bs, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %.preheader
  %.4131 = phi i32 [ %i.ci, %.preheader ], [ %.3130, %bb.e ] ; 2 uses
  %.296 = phi i64 [ %i.co, %.preheader ], [ %.195, %bb.e ]
  %.5 = phi ptr [ %i.cn, %.preheader ], [ %.4, %bb.e ] ; 5 uses
  %.083 = phi i32 [ %i.bt, %.preheader ], [ 0, %bb.e ]
  %.082 = phi i32 [ %i.cj, %.preheader ], [ 0, %bb.e ]
  %.081 = phi i32 [ %i.ck, %.preheader ], [ 0, %bb.e ]
  %.080 = phi i32 [ %i.cl, %.preheader ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.cm, %.preheader ], [ 0, %bb.e ]
  %i.bt = add i32 %.083, %.4131                   ; 2 uses
  %i.bu = load i8, ptr %.5, align 1, !tbaa !11
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.5, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = add i32 %.4131, %i.bv
  %i.cg = add i32 %i.cf, %i.by
  %i.ch = add i32 %i.cg, %i.cb
  %i.ci = add i32 %i.ch, %i.ce                    ; 2 uses
  %i.cj = add i32 %.082, %i.bv                    ; 2 uses
  %i.ck = add i32 %.081, %i.by                    ; 2 uses
  %i.cl = add i32 %.080, %i.cb                    ; 2 uses
  %i.cm = add i32 %.0, %i.ce                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.co = add i64 %.296, -4                       ; 3 uses
  %i.cp = icmp ugt i64 %i.co, 3
  br i1 %i.cp, label %.preheader, label %bb.f, !llvm.loop !32

bb.f:                                             ; preds = %.preheader
  %i.cq = add i32 %i.cj, %i.bt
  %i.cr = shl i32 %i.cq, 2
  %i.cs = mul i32 %i.ck, 3
  %i.ct = shl i32 %i.cl, 1
  %i.cu = add i32 %i.cs, %.3124
  %i.cv = add i32 %i.cu, %i.cr
  %i.cw = add i32 %i.cv, %i.ct
  %i.cx = add i32 %i.cw, %i.cm
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5132 = phi i32 [ %i.ci, %bb.f ], [ %.3130, %bb.e ] ; 2 uses
  %.4125 = phi i32 [ %i.cx, %bb.f ], [ %.3124, %bb.e ] ; 2 uses
  %.397 = phi i64 [ %i.co, %bb.f ], [ %.195, %bb.e ] ; 5 uses
  %.6 = phi ptr [ %i.cn, %bb.f ], [ %.4, %bb.e ]  ; 3 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g, %.lr.ph.prol
  %.7158.prol = phi ptr [ %i.dd, %.lr.ph.prol ], [ %.6, %bb.g ] ; 2 uses
  %.498157.prol = phi i64 [ %i.dc, %.lr.ph.prol ], [ %.397, %bb.g ]
  %.5126156.prol = phi i32 [ %i.db, %.lr.ph.prol ], [ %.4125, %bb.g ]
  %.6133155.prol = phi i32 [ %i.da, %.lr.ph.prol ], [ %.5132, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.g ]
  %i.cy = load i8, ptr %.7158.prol, align 1, !tbaa !11
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %.6133155.prol, %i.cz           ; 4 uses
  %i.db = add i32 %i.da, %.5126156.prol           ; 3 uses
  %i.dc = add nsw i64 %.498157.prol, -1           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.7158.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.397
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !33

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %i.de = icmp ult i64 %.397, 4
  br i1 %i.de, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.7158 = phi ptr [ %i.dz, %.lr.ph ], [ %i.dd, %.lr.ph.prol.loopexit ] ; 5 uses
  %.498157 = phi i64 [ %i.dy, %.lr.ph ], [ %i.dc, %.lr.ph.prol.loopexit ]
  %.5126156 = phi i32 [ %i.dx, %.lr.ph ], [ %i.db, %.lr.ph.prol.loopexit ]
  %.6133155 = phi i32 [ %i.dw, %.lr.ph ], [ %i.da, %.lr.ph.prol.loopexit ]
  %i.df = load i8, ptr %.7158, align 1, !tbaa !11
  %i.dg = zext i8 %i.df to i32
  %i.dh = add i32 %.6133155, %i.dg                ; 2 uses
  %i.di = add i32 %i.dh, %.5126156
  %i.dj = getelementptr inbounds nuw i8, ptr %.7158, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !11
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add i32 %i.dh, %i.dl                    ; 2 uses
  %i.dn = add i32 %i.dm, %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %.7158, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add i32 %i.dm, %i.dq                    ; 2 uses
  %i.ds = add i32 %i.dr, %i.dn
  %i.dt = getelementptr inbounds nuw i8, ptr %.7158, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.dv = zext i8 %i.du to i32
  %i.dw = add i32 %i.dr, %i.dv                    ; 3 uses
  %i.dx = add i32 %i.dw, %i.ds                    ; 2 uses
  %i.dy = add nsw i64 %.498157, -4                ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.7158, i64 4
  %.not105.3 = icmp eq i64 %i.dy, 0
  br i1 %.not105.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa262 = phi i32 [ %i.da, %.lr.ph.prol.loopexit ], [ %i.dw, %.lr.ph ]
  %.lcssa261 = phi i32 [ %i.db, %.lr.ph.prol.loopexit ], [ %i.dx, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %.6, i64 %.397
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.6133.lcssa = phi i32 [ %.5132, %bb.g ], [ %.lcssa262, %._crit_edge.loopexit ]
  %.5126.lcssa = phi i32 [ %.4125, %bb.g ], [ %.lcssa261, %._crit_edge.loopexit ]
  %.7.lcssa = phi ptr [ %.6, %bb.g ], [ %scevgep, %._crit_edge.loopexit ]
  %i.ea = urem i32 %.6133.lcssa, 65521            ; 2 uses
  %i.eb = urem i32 %.5126.lcssa, 65521            ; 2 uses
  %.not104 = icmp eq i64 %i.s, 0
  br i1 %.not104, label %._crit_edge168, label %.lr.ph167, !llvm.loop !35

._crit_edge168:                                   ; preds = %._crit_edge, %bb.c
  %.2129.lcssa = phi i32 [ %.1128, %bb.c ], [ %i.ea, %._crit_edge ]
  %.2123.lcssa = phi i32 [ %.1122, %bb.c ], [ %i.eb, %._crit_edge ]
  %i.ec = shl nuw i32 %.2123.lcssa, 16
  %i.ed = or i32 %i.ec, %.2129.lcssa
  ret i32 %i.ed
}

declare void @libdeflate_init_x86_cpu_features() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <64 x i8> @llvm.masked.load.v64i8.p0(ptr captures(none), <64 x i1>, <64 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.masked.load.v32i8.p0(ptr captures(none), <32 x i1>, <32 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
end_hunk_1
