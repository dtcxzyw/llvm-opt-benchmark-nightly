Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/adler32?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
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
  %i.a = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !13
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %get_x86_cpu_features.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @libdeflate_init_x86_cpu_features() #11
  br label %get_x86_cpu_features.exit.i

get_x86_cpu_features.exit.i:                      ; preds = %bb.b, %bb.a
  %i.c = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !13 ; 4 uses
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
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !14

bb.b:                                             ; preds = %.preheader183
  %i.p = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.l, i64 1
  %i.r = urem <2 x i32> %i.q, splat (i32 65521)   ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1181 = phi i32 [ %i.s, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2205 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2134204 = phi i64 [ %i.y, %bb.k ], [ %.1133, %bb.c ] ; 3 uses
  %.2179203 = phi i32 [ %i.en, %bb.k ], [ %.1178, %bb.c ]
  %.2182202 = phi i32 [ %i.em, %bb.k ], [ %.1181, %bb.c ] ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5376) ; 4 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = mul nuw nsw i32 %.2182202, %i.v
  %i.x = add nuw nsw i32 %i.w, %.2179203
  %i.y = sub nuw i64 %.2134204, %i.u              ; 2 uses
  %i.z = icmp ugt i64 %.2134204, 255
  br i1 %i.z, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.aa = phi <16 x i32> [ %i.bb, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ab = phi <16 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ac = phi <16 x i32> [ %i.bc, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ad = phi <16 x i32> [ %i.bd, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ae = phi <16 x i32> [ %i.be, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.af = phi <16 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <16 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <16 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ai = phi <16 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aj = phi <16 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ak = phi <16 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.al = phi <16 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0135 = phi i64 [ %i.bg, %.preheader ], [ %i.u, %.lr.ph ]
  %.3 = phi ptr [ %i.bf, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.am = load <64 x i8>, ptr %.3, align 1, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.ao = load <64 x i8>, ptr %i.an, align 1, !tbaa !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3, i64 128
  %i.aq = load <64 x i8>, ptr %i.ap, align 1, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.3, i64 192
  %i.as = load <64 x i8>, ptr %i.ar, align 1, !tbaa !11 ; 2 uses
  %i.at = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ab, <64 x i8> %i.am, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.au = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.af, <64 x i8> %i.ao, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.av = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ag, <64 x i8> %i.aq, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ah, <64 x i8> %i.as, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ax = add <16 x i32> %i.ai, %i.aa             ; 2 uses
  %i.ay = add <16 x i32> %i.aj, %i.ac             ; 2 uses
  %i.az = add <16 x i32> %i.ak, %i.ad             ; 2 uses
  %i.ba = add <16 x i32> %i.al, %i.ae             ; 2 uses
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.aa, <64 x i8> %i.am, <64 x i8> splat (i8 1)) ; 3 uses
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ac, <64 x i8> %i.ao, <64 x i8> splat (i8 1)) ; 2 uses
  %i.bd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ad, <64 x i8> %i.aq, <64 x i8> splat (i8 1)) ; 3 uses
  %i.be = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ae, <64 x i8> %i.as, <64 x i8> splat (i8 1)) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i64 256 ; 2 uses
  %i.bg = add i64 %.0135, -256                    ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 255
  br i1 %i.bh, label %.preheader, label %bb.d, !llvm.loop !15

bb.d:                                             ; preds = %.preheader
  %i.bi = add <16 x i32> %i.bc, %i.bb             ; 2 uses
  %i.bj = add <16 x i32> %i.bd, %i.bb
  %i.bk = add <16 x i32> %i.ay, %i.ax
  %i.bl = add <16 x i32> %i.bk, %i.az
  %i.bm = add <16 x i32> %i.bl, %i.ba
  %i.bn = add <16 x i32> %i.bi, %i.bd
  %i.bo = add <16 x i32> %i.bn, %i.be
  %i.bp = shl <16 x i32> %i.bm, splat (i32 8)
  %i.bq = shl <16 x i32> %i.bi, splat (i32 7)
  %i.br = shl <16 x i32> %i.bj, splat (i32 6)
  %i.bs = add <16 x i32> %i.at, %i.bp
  %i.bt = add <16 x i32> %i.bs, %i.au
  %i.bu = add <16 x i32> %i.bt, %i.av
  %i.bv = add <16 x i32> %i.bu, %i.aw
  %i.bw = add <16 x i32> %i.bv, %i.bq
  %i.bx = add <16 x i32> %i.bw, %i.br
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.by = phi <16 x i32> [ %i.bo, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bz = phi <16 x i32> [ %i.bx, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1136 = phi i64 [ %i.bg, %bb.d ], [ %i.u, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bf, %bb.d ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.ca = icmp samesign ugt i64 %.1136, 127
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = load <64 x i8>, ptr %.4, align 1, !tbaa !11 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.cd = load <64 x i8>, ptr %i.cc, align 1, !tbaa !11 ; 2 uses
  %i.ce = shl <16 x i32> %i.by, splat (i32 7)
  %i.cf = add <16 x i32> %i.ce, %i.bz
  %i.cg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.by, <64 x i8> %i.cb, <64 x i8> splat (i8 1))
  %i.ch = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cg, <64 x i8> %i.cd, <64 x i8> splat (i8 1))
  %i.ci = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cf, <64 x i8> %i.cb, <64 x i8> splat (i8 64))
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ci, <64 x i8> %i.cb, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ck = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cj, <64 x i8> %i.cd, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cl = getelementptr inbounds nuw i8, ptr %.4, i64 128
  %i.cm = add nsw i64 %.1136, -128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cn = phi <16 x i32> [ %i.ch, %bb.f ], [ %i.by, %bb.e ] ; 4 uses
  %i.co = phi <16 x i32> [ %i.ck, %bb.f ], [ %i.bz, %bb.e ] ; 2 uses
  %.2137 = phi i64 [ %i.cm, %bb.f ], [ %.1136, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cl, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = trunc nuw nsw i64 %.2137 to i32
  %i.cq = insertelement <16 x i32> poison, i32 %i.cp, i64 0
  %i.cr = shufflevector <16 x i32> %i.cq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cs = mul <16 x i32> %i.cr, %i.cn
  %i.ct = add <16 x i32> %i.cs, %i.co             ; 2 uses
  %i.cu = trunc i64 %.2137 to i8
  %i.cv = add i8 %i.cu, -64
  %i.cw = insertelement <64 x i8> poison, i8 %i.cv, i64 0
  %i.cx = shufflevector <64 x i8> %i.cw, <64 x i8> poison, <64 x i32> zeroinitializer ; 2 uses
  %i.cy = add <64 x i8> %i.cx, <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cz = icmp samesign ugt i64 %.2137, 64
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = load <64 x i8>, ptr %.5, align 1, !tbaa !11 ; 2 uses
  %i.db = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cn, <64 x i8> %i.da, <64 x i8> splat (i8 1))
  %i.dc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ct, <64 x i8> %i.da, <64 x i8> %i.cy)
  %i.dd = getelementptr inbounds nuw i8, ptr %.5, i64 64
  %i.de = add nsw i64 %.2137, -64
  %i.df = add <64 x i8> %i.cx, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31, i8 -32, i8 -33, i8 -34, i8 -35, i8 -36, i8 -37, i8 -38, i8 -39, i8 -40, i8 -41, i8 -42, i8 -43, i8 -44, i8 -45, i8 -46, i8 -47, i8 -48, i8 -49, i8 -50, i8 -51, i8 -52, i8 -53, i8 -54, i8 -55, i8 -56, i8 -57, i8 -58, i8 -59, i8 -60, i8 -61, i8 -62, i8 -63>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi <16 x i32> [ %i.db, %bb.i ], [ %i.cn, %bb.h ]
  %.3153.in = phi <16 x i32> [ %i.dc, %bb.i ], [ %i.ct, %bb.h ]
  %.0139.in = phi <64 x i8> [ %i.df, %bb.i ], [ %i.cy, %bb.h ]
  %.3138 = phi i64 [ %i.de, %bb.i ], [ %.2137, %bb.h ] ; 2 uses
  %.6 = phi ptr [ %i.dd, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  %i.dg = sub nuw nsw i64 64, %.3138
  %i.dh = lshr i64 -1, %i.dg
  %i.di = bitcast i64 %i.dh to <64 x i1>
  %i.dj = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.6, <64 x i1> %i.di, <64 x i8> zeroinitializer) ; 2 uses
  %i.dk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.pre-phi, <64 x i8> %i.dj, <64 x i8> splat (i8 1))
  %i.dl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.3153.in, <64 x i8> %i.dj, <64 x i8> %.0139.in)
  %i.dm = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.dn = phi <16 x i32> [ %i.dk, %bb.j ], [ %i.cn, %bb.g ] ; 2 uses
  %i.do = phi <16 x i32> [ %i.dl, %bb.j ], [ %i.co, %bb.g ] ; 2 uses
  %.7 = phi ptr [ %i.dm, %bb.j ], [ %.5, %bb.g ]
  %i.dp = shufflevector <16 x i32> %i.dn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <16 x i32> %i.dn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dr = add <8 x i32> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <16 x i32> %i.do, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dt = shufflevector <16 x i32> %i.do, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.du = add <8 x i32> %i.ds, %i.dt              ; 2 uses
  %i.dv = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dw = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dx = add <4 x i32> %i.dv, %i.dw              ; 4 uses
  %i.dy = shufflevector <8 x i32> %i.du, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = shufflevector <8 x i32> %i.du, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ea = add <4 x i32> %i.dy, %i.dz              ; 4 uses
  %i.eb = shufflevector <4 x i32> %i.dx, <4 x i32> %i.ea, <2 x i32> <i32 3, i32 7>
  %i.ec = shufflevector <4 x i32> %i.dx, <4 x i32> %i.ea, <2 x i32> <i32 2, i32 6>
  %i.ed = add <2 x i32> %i.eb, %i.ec
  %i.ee = shufflevector <4 x i32> %i.dx, <4 x i32> %i.ea, <2 x i32> <i32 1, i32 5>
  %i.ef = shufflevector <4 x i32> %i.dx, <4 x i32> %i.ea, <2 x i32> <i32 0, i32 4>
  %i.eg = add <2 x i32> %i.ee, %i.ef
  %i.eh = add <2 x i32> %i.ed, %i.eg
  %i.ei = insertelement <2 x i32> poison, i32 %.2182202, i64 0
  %i.ej = insertelement <2 x i32> %i.ei, i32 %i.x, i64 1
  %i.ek = add <2 x i32> %i.eh, %i.ej
  %i.el = urem <2 x i32> %i.ek, splat (i32 65521) ; 2 uses
  %.not164 = icmp eq i64 %i.y, 0
  %i.em = extractelement <2 x i32> %i.el, i64 0   ; 2 uses
  %i.en = extractelement <2 x i32> %i.el, i64 1   ; 2 uses
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %i.em, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %i.en, %bb.k ]
  %i.eo = shl nuw i32 %.2179.lcssa, 16
  %i.ep = or i32 %i.eo, %.2182.lcssa
  ret i32 %i.ep
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
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !17

bb.b:                                             ; preds = %.preheader183
  %i.p = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.l, i64 1
  %i.r = urem <2 x i32> %i.q, splat (i32 65521)   ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1181 = phi i32 [ %i.s, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2205 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2134204 = phi i64 [ %i.y, %bb.k ], [ %.1133, %bb.c ] ; 3 uses
  %.2179203 = phi i32 [ %i.eh, %bb.k ], [ %.1178, %bb.c ]
  %.2182202 = phi i32 [ %i.eg, %bb.k ], [ %.1181, %bb.c ] ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5504) ; 4 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = mul nuw nsw i32 %.2182202, %i.v
  %i.x = add nuw nsw i32 %i.w, %.2179203
  %i.y = sub nuw i64 %.2134204, %i.u              ; 2 uses
  %i.z = icmp ugt i64 %.2134204, 127
  br i1 %i.z, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.aa = phi <8 x i32> [ %i.bb, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ab = phi <8 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ac = phi <8 x i32> [ %i.bc, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ad = phi <8 x i32> [ %i.bd, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ae = phi <8 x i32> [ %i.be, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.af = phi <8 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <8 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <8 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ai = phi <8 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aj = phi <8 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ak = phi <8 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.al = phi <8 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0135 = phi i64 [ %i.bg, %.preheader ], [ %i.u, %.lr.ph ]
  %.3 = phi ptr [ %i.bf, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.am = load <32 x i8>, ptr %.3, align 1, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.ao = load <32 x i8>, ptr %i.an, align 1, !tbaa !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.aq = load <32 x i8>, ptr %i.ap, align 1, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.as = load <32 x i8>, ptr %i.ar, align 1, !tbaa !11 ; 2 uses
  %i.at = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ab, <32 x i8> %i.am, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.au = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.af, <32 x i8> %i.ao, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.av = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ag, <32 x i8> %i.aq, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ah, <32 x i8> %i.as, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ax = add <8 x i32> %i.ai, %i.aa              ; 2 uses
  %i.ay = add <8 x i32> %i.aj, %i.ac              ; 2 uses
  %i.az = add <8 x i32> %i.ak, %i.ad              ; 2 uses
  %i.ba = add <8 x i32> %i.al, %i.ae              ; 2 uses
  %i.bb = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aa, <32 x i8> %i.am, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ac, <32 x i8> %i.ao, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ad, <32 x i8> %i.aq, <32 x i8> splat (i8 1)) ; 3 uses
  %i.be = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ae, <32 x i8> %i.as, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.bg = add i64 %.0135, -128                    ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 127
  br i1 %i.bh, label %.preheader, label %bb.d, !llvm.loop !18

bb.d:                                             ; preds = %.preheader
  %i.bi = add <8 x i32> %i.bc, %i.bb              ; 2 uses
  %i.bj = add <8 x i32> %i.bd, %i.bb
  %i.bk = add <8 x i32> %i.ay, %i.ax
  %i.bl = add <8 x i32> %i.bk, %i.az
  %i.bm = add <8 x i32> %i.bl, %i.ba
  %i.bn = add <8 x i32> %i.bi, %i.bd
  %i.bo = add <8 x i32> %i.bn, %i.be
  %i.bp = shl <8 x i32> %i.bm, splat (i32 7)
  %i.bq = shl <8 x i32> %i.bi, splat (i32 6)
  %i.br = shl <8 x i32> %i.bj, splat (i32 5)
  %i.bs = add <8 x i32> %i.at, %i.bp
  %i.bt = add <8 x i32> %i.bs, %i.au
  %i.bu = add <8 x i32> %i.bt, %i.av
  %i.bv = add <8 x i32> %i.bu, %i.aw
  %i.bw = add <8 x i32> %i.bv, %i.bq
  %i.bx = add <8 x i32> %i.bw, %i.br
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.by = phi <8 x i32> [ %i.bo, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bz = phi <8 x i32> [ %i.bx, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1136 = phi i64 [ %i.bg, %bb.d ], [ %i.u, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bf, %bb.d ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.ca = icmp samesign ugt i64 %.1136, 63
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = load <32 x i8>, ptr %.4, align 1, !tbaa !11 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.cd = load <32 x i8>, ptr %i.cc, align 1, !tbaa !11 ; 2 uses
  %i.ce = shl <8 x i32> %i.by, splat (i32 6)
  %i.cf = add <8 x i32> %i.ce, %i.bz
  %i.cg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.by, <32 x i8> %i.cb, <32 x i8> splat (i8 1))
  %i.ch = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.cd, <32 x i8> splat (i8 1))
  %i.ci = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cf, <32 x i8> %i.cb, <32 x i8> splat (i8 32))
  %i.cj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ci, <32 x i8> %i.cb, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ck = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cj, <32 x i8> %i.cd, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cl = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.cm = add nsw i64 %.1136, -64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cn = phi <8 x i32> [ %i.ch, %bb.f ], [ %i.by, %bb.e ] ; 4 uses
  %i.co = phi <8 x i32> [ %i.ck, %bb.f ], [ %i.bz, %bb.e ] ; 2 uses
  %.2137 = phi i64 [ %i.cm, %bb.f ], [ %.1136, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cl, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = trunc nuw nsw i64 %.2137 to i32         ; 2 uses
  %i.cq = insertelement <8 x i32> poison, i32 %i.cp, i64 0
  %i.cr = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cs = mul <8 x i32> %i.cr, %i.cn
  %i.ct = add <8 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = trunc i64 %.2137 to i8
  %i.cv = add i8 %i.cu, -32
  %i.cw = insertelement <32 x i8> poison, i8 %i.cv, i64 0
  %i.cx = shufflevector <32 x i8> %i.cw, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.cy = add <32 x i8> %i.cx, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cz = icmp samesign ugt i64 %.2137, 32
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = load <32 x i8>, ptr %.5, align 1, !tbaa !11 ; 2 uses
  %i.db = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cn, <32 x i8> %i.da, <32 x i8> splat (i8 1))
  %i.dc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ct, <32 x i8> %i.da, <32 x i8> %i.cy)
  %i.dd = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.de = add nsw i64 %.2137, -32                 ; 2 uses
  %i.df = add <32 x i8> %i.cx, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  %.pre = trunc nuw nsw i64 %i.de to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi227 = phi <8 x i32> [ %i.db, %bb.i ], [ %i.cn, %bb.h ]
  %.pre-phi = phi i32 [ %.pre, %bb.i ], [ %i.cp, %bb.h ]
  %.3153.in = phi <8 x i32> [ %i.dc, %bb.i ], [ %i.ct, %bb.h ]
  %.0139.in = phi <32 x i8> [ %i.df, %bb.i ], [ %i.cy, %bb.h ]
  %.3138 = phi i64 [ %i.de, %bb.i ], [ %.2137, %bb.h ]
  %.6 = phi ptr [ %i.dd, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  %i.dg = sub nsw i32 32, %.pre-phi
  %i.dh = lshr i32 -1, %i.dg
  %i.di = bitcast i32 %i.dh to <32 x i1>
  %i.dj = tail call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %.6, <32 x i1> %i.di, <32 x i8> zeroinitializer) ; 2 uses
  %i.dk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi227, <32 x i8> %i.dj, <32 x i8> splat (i8 1))
  %i.dl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3153.in, <32 x i8> %i.dj, <32 x i8> %.0139.in)
  %i.dm = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.dn = phi <8 x i32> [ %i.dk, %bb.j ], [ %i.cn, %bb.g ] ; 2 uses
  %i.do = phi <8 x i32> [ %i.dl, %bb.j ], [ %i.co, %bb.g ] ; 2 uses
  %.7 = phi ptr [ %i.dm, %bb.j ], [ %.5, %bb.g ]
  %i.dp = shufflevector <8 x i32> %i.dn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x i32> %i.dn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dr = add <4 x i32> %i.dp, %i.dq              ; 4 uses
  %i.ds = shufflevector <8 x i32> %i.do, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <8 x i32> %i.do, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.du = add <4 x i32> %i.ds, %i.dt              ; 4 uses
  %i.dv = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 3, i32 7>
  %i.dw = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 2, i32 6>
  %i.dx = add <2 x i32> %i.dv, %i.dw
  %i.dy = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 1, i32 5>
  %i.dz = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 0, i32 4>
  %i.ea = add <2 x i32> %i.dy, %i.dz
  %i.eb = add <2 x i32> %i.dx, %i.ea
  %i.ec = insertelement <2 x i32> poison, i32 %.2182202, i64 0
  %i.ed = insertelement <2 x i32> %i.ec, i32 %i.x, i64 1
  %i.ee = add <2 x i32> %i.eb, %i.ed
  %i.ef = urem <2 x i32> %i.ee, splat (i32 65521) ; 2 uses
  %.not164 = icmp eq i64 %i.y, 0
  %i.eg = extractelement <2 x i32> %i.ef, i64 0   ; 2 uses
  %i.eh = extractelement <2 x i32> %i.ef, i64 1   ; 2 uses
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %i.eg, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %i.eh, %bb.k ]
  %i.ei = shl nuw i32 %.2179.lcssa, 16
  %i.ej = or i32 %i.ei, %.2182.lcssa
  ret i32 %i.ej
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
  br i1 %.not, label %bb.b, label %.preheader185, !llvm.loop !20

bb.b:                                             ; preds = %.preheader185
  %i.q = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %i.m, i64 1
  %i.s = urem <2 x i32> %i.r, splat (i32 65521)   ; 2 uses
  %i.t = extractelement <2 x i32> %i.s, i64 0
  %i.u = extractelement <2 x i32> %i.s, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1182 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1179 = phi i32 [ %i.u, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.1134 = phi i64 [ %i.n, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]
  %.not165203 = icmp eq i64 %.1134, 0
  br i1 %.not165203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2207 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2135206 = phi i64 [ %i.z, %bb.k ], [ %.1134, %bb.c ] ; 3 uses
  %.2180205 = phi i32 [ %i.ee, %bb.k ], [ %.1179, %bb.c ]
  %.2183204 = phi i32 [ %i.ed, %bb.k ], [ %.1182, %bb.c ] ; 2 uses
  %i.v = tail call i64 @llvm.umin.i64(i64 %.2135206, i64 5504) ; 4 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = mul nuw nsw i32 %.2183204, %i.w
  %i.y = add nuw nsw i32 %i.x, %.2180205
  %i.z = sub nuw i64 %.2135206, %i.v              ; 2 uses
  %i.aa = icmp ugt i64 %.2135206, 127
  br i1 %i.aa, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.ab = phi <8 x i32> [ %i.bc, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ac = phi <8 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ad = phi <8 x i32> [ %i.bd, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ae = phi <8 x i32> [ %i.be, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.af = phi <8 x i32> [ %i.bf, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ag = phi <8 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <8 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ai = phi <8 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aj = phi <8 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ak = phi <8 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.al = phi <8 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.am = phi <8 x i32> [ %i.bb, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0136 = phi i64 [ %i.bh, %.preheader ], [ %i.v, %.lr.ph ]
  %.3 = phi ptr [ %i.bg, %.preheader ], [ %.2207, %.lr.ph ] ; 5 uses
  %i.an = load <32 x i8>, ptr %.3, align 1, !tbaa !11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.ap = load <32 x i8>, ptr %i.ao, align 1, !tbaa !11 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.ar = load <32 x i8>, ptr %i.aq, align 1, !tbaa !11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.at = load <32 x i8>, ptr %i.as, align 1, !tbaa !11 ; 2 uses
  %i.au = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ac, <32 x i8> %i.an, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.av = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ag, <32 x i8> %i.ap, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ah, <32 x i8> %i.ar, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ax = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ai, <32 x i8> %i.at, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ay = add <8 x i32> %i.aj, %i.ab              ; 2 uses
  %i.az = add <8 x i32> %i.ak, %i.ad              ; 2 uses
  %i.ba = add <8 x i32> %i.al, %i.ae              ; 2 uses
  %i.bb = add <8 x i32> %i.am, %i.af              ; 2 uses
  %i.bc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ab, <32 x i8> %i.an, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ad, <32 x i8> %i.ap, <32 x i8> splat (i8 1)) ; 2 uses
  %i.be = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ae, <32 x i8> %i.ar, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.af, <32 x i8> %i.at, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.bh = add i64 %.0136, -128                    ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 127
  br i1 %i.bi, label %.preheader, label %bb.d, !llvm.loop !21

bb.d:                                             ; preds = %.preheader
  %i.bj = add <8 x i32> %i.bd, %i.bc              ; 2 uses
  %i.bk = add <8 x i32> %i.be, %i.bc
  %i.bl = add <8 x i32> %i.az, %i.ay
  %i.bm = add <8 x i32> %i.bl, %i.ba
  %i.bn = add <8 x i32> %i.bm, %i.bb
  %i.bo = add <8 x i32> %i.bj, %i.be
  %i.bp = add <8 x i32> %i.bo, %i.bf
  %i.bq = shl <8 x i32> %i.bn, splat (i32 7)
  %i.br = shl <8 x i32> %i.bj, splat (i32 6)
  %i.bs = shl <8 x i32> %i.bk, splat (i32 5)
  %i.bt = add <8 x i32> %i.au, %i.bq
  %i.bu = add <8 x i32> %i.bt, %i.av
  %i.bv = add <8 x i32> %i.bu, %i.aw
  %i.bw = add <8 x i32> %i.bv, %i.ax
  %i.bx = add <8 x i32> %i.bw, %i.br
  %i.by = add <8 x i32> %i.bx, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bz = phi <8 x i32> [ %i.bp, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.ca = phi <8 x i32> [ %i.by, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1137 = phi i64 [ %i.bh, %bb.d ], [ %i.v, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bg, %bb.d ], [ %.2207, %.lr.ph ] ; 4 uses
  %i.cb = icmp samesign ugt i64 %.1137, 63
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cc = load <32 x i8>, ptr %.4, align 1, !tbaa !11 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.ce = load <32 x i8>, ptr %i.cd, align 1, !tbaa !11 ; 2 uses
  %i.cf = shl <8 x i32> %i.bz, splat (i32 6)
  %i.cg = add <8 x i32> %i.cf, %i.ca
  %i.ch = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bz, <32 x i8> %i.cc, <32 x i8> splat (i8 1))
  %i.ci = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ch, <32 x i8> %i.ce, <32 x i8> splat (i8 1))
  %i.cj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.cc, <32 x i8> splat (i8 32))
  %i.ck = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cj, <32 x i8> %i.cc, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ck, <32 x i8> %i.ce, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cm = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.cn = add nsw i64 %.1137, -64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.co = phi <8 x i32> [ %i.ci, %bb.f ], [ %i.bz, %bb.e ] ; 4 uses
  %i.cp = phi <8 x i32> [ %i.cl, %bb.f ], [ %i.ca, %bb.e ] ; 2 uses
  %.2138 = phi i64 [ %i.cn, %bb.f ], [ %.1137, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cm, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not166 = icmp eq i64 %.2138, 0
  br i1 %.not166, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cq = trunc nuw nsw i64 %.2138 to i32
  %i.cr = insertelement <8 x i32> poison, i32 %i.cq, i64 0
  %i.cs = shufflevector <8 x i32> %i.cr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ct = mul <8 x i32> %i.cs, %i.co
  %i.cu = add <8 x i32> %i.ct, %i.cp              ; 2 uses
  %i.cv = trunc i64 %.2138 to i8
  %i.cw = add i8 %i.cv, -32
  %i.cx = insertelement <32 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.cz = add <32 x i8> %i.cy, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.da = icmp samesign ugt i64 %.2138, 32
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.db = load <32 x i8>, ptr %.5, align 1, !tbaa !11 ; 2 uses
  %i.dc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.co, <32 x i8> %i.db, <32 x i8> splat (i8 1))
  %i.dd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cu, <32 x i8> %i.db, <32 x i8> %i.cz)
  %i.de = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.df = add nsw i64 %.2138, -32
  %i.dg = add <32 x i8> %i.cy, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi <8 x i32> [ %i.dc, %bb.i ], [ %i.co, %bb.h ]
  %.3154.in = phi <8 x i32> [ %i.dd, %bb.i ], [ %i.cu, %bb.h ]
  %.0140.in = phi <32 x i8> [ %i.dg, %bb.i ], [ %i.cz, %bb.h ]
  %.3139 = phi i64 [ %i.df, %bb.i ], [ %.2138, %bb.h ] ; 2 uses
  %.6 = phi ptr [ %i.de, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.a, align 32, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %.6, i64 %.3139, i1 false)
  %.0..0..0..0.2184231289 = load <32 x i8>, ptr %i.a, align 32, !tbaa !11 ; 2 uses
  %i.dh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> splat (i8 1))
  %i.di = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3154.in, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> %.0140.in)
  %i.dj = getelementptr inbounds nuw i8, ptr %.6, i64 %.3139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.dk = phi <8 x i32> [ %i.dh, %bb.j ], [ %i.co, %bb.g ] ; 2 uses
  %i.dl = phi <8 x i32> [ %i.di, %bb.j ], [ %i.cp, %bb.g ] ; 2 uses
  %.7 = phi ptr [ %i.dj, %bb.j ], [ %.5, %bb.g ]
  %i.dm = shufflevector <8 x i32> %i.dk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dn = shufflevector <8 x i32> %i.dk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.do = add <4 x i32> %i.dm, %i.dn              ; 2 uses
  %i.dp = shufflevector <8 x i32> %i.dl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x i32> %i.dl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dr = add <4 x i32> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <4 x i32> %i.do, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dt = add <4 x i32> %i.ds, %i.do              ; 2 uses
  %i.du = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dv = add <4 x i32> %i.du, %i.dr              ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.dt, <4 x i32> %i.dv, <2 x i32> <i32 2, i32 6>
  %i.dx = shufflevector <4 x i32> %i.dt, <4 x i32> %i.dv, <2 x i32> <i32 0, i32 4>
  %i.dy = add <2 x i32> %i.dw, %i.dx
  %i.dz = insertelement <2 x i32> poison, i32 %.2183204, i64 0
  %i.ea = insertelement <2 x i32> %i.dz, i32 %i.y, i64 1
  %i.eb = add <2 x i32> %i.dy, %i.ea
  %i.ec = urem <2 x i32> %i.eb, splat (i32 65521) ; 2 uses
  %.not165 = icmp eq i64 %i.z, 0
  %i.ed = extractelement <2 x i32> %i.ec, i64 0   ; 2 uses
  %i.ee = extractelement <2 x i32> %i.ec, i64 1   ; 2 uses
  br i1 %.not165, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2183.lcssa = phi i32 [ %.1182, %bb.c ], [ %i.ed, %bb.k ]
  %.2180.lcssa = phi i32 [ %.1179, %bb.c ], [ %i.ee, %bb.k ]
  %i.ef = shl nuw i32 %.2180.lcssa, 16
  %i.eg = or i32 %i.ef, %.2183.lcssa
  ret i32 %i.eg
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #5 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader134, label %bb.c, !prof !10

.preheader134:                                    ; preds = %bb.a, %.preheader134
  %.0127 = phi i32 [ %i.k, %.preheader134 ], [ %i.a, %bb.a ]
  %.0121 = phi i32 [ %i.l, %.preheader134 ], [ %i.b, %bb.a ]
  %.085 = phi i64 [ %i.m, %.preheader134 ], [ %2, %bb.a ]
  %.084 = phi ptr [ %i.h, %.preheader134 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.i = load i8, ptr %.084, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0127, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0121                     ; 2 uses
  %i.m = add i64 %.085, -1                        ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 31
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader134, !llvm.loop !23

bb.b:                                             ; preds = %.preheader134
  %i.p = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.l, i64 1
  %i.r = urem <2 x i32> %i.q, splat (i32 65521)   ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1128 = phi i32 [ %i.s, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1122 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.186 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not104161 = icmp eq i64 %.186, 0
  br i1 %.not104161, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.c, %._crit_edge
  %.2165 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.1, %bb.c ] ; 2 uses
  %.287164 = phi i64 [ %i.v, %._crit_edge ], [ %.186, %bb.c ] ; 3 uses
  %.2123163 = phi i32 [ %i.dm, %._crit_edge ], [ %.1122, %bb.c ] ; 2 uses
  %.2129162 = phi i32 [ %i.dn, %._crit_edge ], [ %.1128, %bb.c ] ; 3 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %.287164, i64 5504) ; 4 uses
  %i.v = sub nuw i64 %.287164, %i.u               ; 2 uses
  %i.w = icmp ugt i64 %.287164, 63
  br i1 %i.w, label %.preheader222, label %bb.e

.preheader222:                                    ; preds = %.lr.ph167, %.preheader222
  %.094 = phi i64 [ %i.ba, %.preheader222 ], [ %i.u, %.lr.ph167 ]
  %i.x = phi <8 x i32> [ %i.ay, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ] ; 2 uses
  %i.y = phi <8 x i32> [ %i.ag, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.z = phi <16 x i16> [ %i.aj, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.aa = phi <16 x i16> [ %i.am, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.ab = phi <16 x i16> [ %i.ap, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.ac = phi <16 x i16> [ %i.as, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %.3 = phi ptr [ %i.az, %.preheader222 ], [ %.2165, %.lr.ph167 ] ; 3 uses
  %i.ad = load <32 x i8>, ptr %.3, align 1, !tbaa !11 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.af = load <32 x i8>, ptr %i.ae, align 1, !tbaa !11 ; 3 uses
  %i.ag = add <8 x i32> %i.y, %i.x                ; 2 uses
  %i.ah = shufflevector <32 x i8> %i.ad, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ai = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.aj = add <16 x i16> %i.z, %i.ai              ; 2 uses
  %i.ak = shufflevector <32 x i8> %i.ad, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.al = bitcast <32 x i8> %i.ak to <16 x i16>
  %i.am = add <16 x i16> %i.aa, %i.al             ; 2 uses
  %i.an = shufflevector <32 x i8> %i.af, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ao = bitcast <32 x i8> %i.an to <16 x i16>
  %i.ap = add <16 x i16> %i.ab, %i.ao             ; 2 uses
  %i.aq = shufflevector <32 x i8> %i.af, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ar = bitcast <32 x i8> %i.aq to <16 x i16>
  %i.as = add <16 x i16> %i.ac, %i.ar             ; 2 uses
  %i.at = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ad, <32 x i8> zeroinitializer)
  %i.au = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.af, <32 x i8> zeroinitializer)
  %i.av = bitcast <4 x i64> %i.at to <8 x i32>
  %i.aw = bitcast <4 x i64> %i.au to <8 x i32>
  %i.ax = add <8 x i32> %i.x, %i.av
  %i.ay = add <8 x i32> %i.ax, %i.aw              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.3, i64 64 ; 2 uses
  %i.ba = add i64 %.094, -64                      ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, 63
  br i1 %i.bb, label %.preheader222, label %bb.d, !llvm.loop !24

bb.d:                                             ; preds = %.preheader222
  %i.bc = trunc nuw nsw i64 %i.u to i32
  %i.bd = and i32 %i.bc, 8128
  %i.be = mul nuw nsw i32 %i.bd, %.2129162
  %i.bf = add nuw nsw i32 %i.be, %.2123163
  %i.bg = shl <8 x i32> %i.ag, splat (i32 6)
  %i.bh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aj, <16 x i16> <i16 64, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 48, i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41>)
  %i.bi = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.am, <16 x i16> <i16 56, i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 40, i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33>)
  %i.bj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ap, <16 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bk = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.as, <16 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.bl = add <8 x i32> %i.bh, %i.bg
  %i.bm = add <8 x i32> %i.bl, %i.bi
  %i.bn = add <8 x i32> %i.bm, %i.bj
  %i.bo = add <8 x i32> %i.bn, %i.bk
  %i.bp = shufflevector <8 x i32> %i.ay, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bp)
  %i.br = add i32 %i.bq, %.2129162
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bo)
  %i.bt = add i32 %i.bf, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167, %bb.d
  %.3130 = phi i32 [ %i.br, %bb.d ], [ %.2129162, %.lr.ph167 ] ; 2 uses
  %.3124 = phi i32 [ %i.bt, %bb.d ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.195 = phi i64 [ %i.ba, %bb.d ], [ %i.u, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.az, %bb.d ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.bu = icmp samesign ugt i64 %.195, 3
  br i1 %i.bu, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %.preheader
  %.4131 = phi i32 [ %i.ck, %.preheader ], [ %.3130, %bb.e ] ; 2 uses
  %.296 = phi i64 [ %i.cq, %.preheader ], [ %.195, %bb.e ]
  %.5 = phi ptr [ %i.cp, %.preheader ], [ %.4, %bb.e ] ; 5 uses
  %.083 = phi i32 [ %i.bv, %.preheader ], [ 0, %bb.e ]
  %.082 = phi i32 [ %i.cl, %.preheader ], [ 0, %bb.e ]
  %.081 = phi i32 [ %i.cm, %.preheader ], [ 0, %bb.e ]
  %.080 = phi i32 [ %i.cn, %.preheader ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.co, %.preheader ], [ 0, %bb.e ]
  %i.bv = add i32 %.083, %.4131                   ; 2 uses
  %i.bw = load i8, ptr %.5, align 1, !tbaa !11
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.5, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = add i32 %.4131, %i.bx
  %i.ci = add i32 %i.ch, %i.ca
  %i.cj = add i32 %i.ci, %i.cd
  %i.ck = add i32 %i.cj, %i.cg                    ; 2 uses
  %i.cl = add i32 %.082, %i.bx                    ; 2 uses
  %i.cm = add i32 %.081, %i.ca                    ; 2 uses
  %i.cn = add i32 %.080, %i.cd                    ; 2 uses
  %i.co = add i32 %.0, %i.cg                      ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.cq = add i64 %.296, -4                       ; 3 uses
  %i.cr = icmp ugt i64 %i.cq, 3
  br i1 %i.cr, label %.preheader, label %bb.f, !llvm.loop !25

bb.f:                                             ; preds = %.preheader
  %i.cs = add i32 %i.cl, %i.bv
  %i.ct = shl i32 %i.cs, 2
  %i.cu = mul i32 %i.cm, 3
  %i.cv = shl i32 %i.cn, 1
  %i.cw = add i32 %i.cu, %.3124
  %i.cx = add i32 %i.cw, %i.ct
  %i.cy = add i32 %i.cx, %i.cv
  %i.cz = add i32 %i.cy, %i.co
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5132 = phi i32 [ %i.ck, %bb.f ], [ %.3130, %bb.e ] ; 2 uses
  %.4125 = phi i32 [ %i.cz, %bb.f ], [ %.3124, %bb.e ] ; 2 uses
  %.397 = phi i64 [ %i.cq, %bb.f ], [ %.195, %bb.e ] ; 4 uses
  %.6 = phi ptr [ %i.cp, %bb.f ], [ %.4, %bb.e ]  ; 5 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g
  %i.da = load i8, ptr %.6, align 1, !tbaa !11
  %i.db = zext i8 %i.da to i32
  %i.dc = add i32 %.5132, %i.db                   ; 3 uses
  %i.dd = add i32 %i.dc, %.4125                   ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %.397, 1
  br i1 %prol.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %3 = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = zext i8 %4 to i32
  %6 = add i32 %i.dc, %5                          ; 3 uses
  %7 = add i32 %6, %i.dd                          ; 2 uses
  %.not105.1 = icmp eq i64 %.397, 2
  br i1 %.not105.1, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.df = load i8, ptr %i.de, align 1, !tbaa !11
  %i.dg = zext i8 %i.df to i32
  %i.dh = add i32 %6, %i.dg                       ; 2 uses
  %i.di = add i32 %i.dh, %7
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit, %.lr.ph.prol
  %.lcssa262 = phi i32 [ %i.dc, %.lr.ph.prol ], [ %6, %.lr.ph.prol.loopexit ], [ %i.dh, %.lr.ph ]
  %.lcssa261 = phi i32 [ %i.dd, %.lr.ph.prol ], [ %7, %.lr.ph.prol.loopexit ], [ %i.di, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %.6, i64 %.397
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.6133.lcssa = phi i32 [ %.5132, %bb.g ], [ %.lcssa262, %._crit_edge.loopexit ]
  %.5126.lcssa = phi i32 [ %.4125, %bb.g ], [ %.lcssa261, %._crit_edge.loopexit ]
  %.7.lcssa = phi ptr [ %.6, %bb.g ], [ %scevgep, %._crit_edge.loopexit ]
  %i.dj = insertelement <2 x i32> poison, i32 %.5126.lcssa, i64 0
  %i.dk = insertelement <2 x i32> %i.dj, i32 %.6133.lcssa, i64 1
  %i.dl = urem <2 x i32> %i.dk, splat (i32 65521) ; 2 uses
  %.not104 = icmp eq i64 %i.v, 0
  %i.dm = extractelement <2 x i32> %i.dl, i64 0   ; 2 uses
  %i.dn = extractelement <2 x i32> %i.dl, i64 1   ; 2 uses
  br i1 %.not104, label %._crit_edge168, label %.lr.ph167, !llvm.loop !26

._crit_edge168:                                   ; preds = %._crit_edge, %bb.c
  %.2129.lcssa = phi i32 [ %.1128, %bb.c ], [ %i.dn, %._crit_edge ]
  %.2123.lcssa = phi i32 [ %.1122, %bb.c ], [ %i.dm, %._crit_edge ]
  %i.do = shl nuw i32 %.2123.lcssa, 16
  %i.dp = or i32 %i.do, %.2129.lcssa
  ret i32 %i.dp
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_sse2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #6 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 15
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader134, label %bb.c, !prof !10

.preheader134:                                    ; preds = %bb.a, %.preheader134
  %.0127 = phi i32 [ %i.k, %.preheader134 ], [ %i.a, %bb.a ]
  %.0121 = phi i32 [ %i.l, %.preheader134 ], [ %i.b, %bb.a ]
  %.085 = phi i64 [ %i.m, %.preheader134 ], [ %2, %bb.a ]
  %.084 = phi ptr [ %i.h, %.preheader134 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.i = load i8, ptr %.084, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0127, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0121                     ; 2 uses
  %i.m = add i64 %.085, -1                        ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 15
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader134, !llvm.loop !27

bb.b:                                             ; preds = %.preheader134
  %i.p = urem i32 %i.k, 65521
  %i.q = urem i32 %i.l, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1128 = phi i32 [ %i.p, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1122 = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.186 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not104161 = icmp eq i64 %.186, 0
  br i1 %.not104161, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.c, %._crit_edge
  %.2165 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.1, %bb.c ] ; 2 uses
  %.287164 = phi i64 [ %i.s, %._crit_edge ], [ %.186, %bb.c ] ; 3 uses
  %.2123163 = phi i32 [ %i.di, %._crit_edge ], [ %.1122, %bb.c ] ; 2 uses
  %.2129162 = phi i32 [ %i.dh, %._crit_edge ], [ %.1128, %bb.c ] ; 3 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %.287164, i64 4096) ; 4 uses
  %i.s = sub nuw i64 %.287164, %i.r               ; 2 uses
  %i.t = icmp ugt i64 %.287164, 31
  br i1 %i.t, label %.preheader222, label %bb.e

.preheader222:                                    ; preds = %.lr.ph167, %.preheader222
  %.094 = phi i64 [ %i.ax, %.preheader222 ], [ %i.r, %.lr.ph167 ]
  %i.u = phi <4 x i32> [ %i.av, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ] ; 2 uses
  %i.v = phi <4 x i32> [ %i.ad, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.w = phi <8 x i16> [ %i.ag, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.x = phi <8 x i16> [ %i.aj, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.y = phi <8 x i16> [ %i.am, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.z = phi <8 x i16> [ %i.ap, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %.3 = phi ptr [ %i.aw, %.preheader222 ], [ %.2165, %.lr.ph167 ] ; 3 uses
  %i.aa = load <16 x i8>, ptr %.3, align 1, !tbaa !11 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !11 ; 3 uses
  %i.ad = add <4 x i32> %i.v, %i.u                ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.af = bitcast <16 x i8> %i.ae to <8 x i16>
  %i.ag = add <8 x i16> %i.w, %i.af               ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ai = bitcast <16 x i8> %i.ah to <8 x i16>
  %i.aj = add <8 x i16> %i.x, %i.ai               ; 2 uses
  %i.ak = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.al = bitcast <16 x i8> %i.ak to <8 x i16>
  %i.am = add <8 x i16> %i.y, %i.al               ; 2 uses
  %i.an = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ao = bitcast <16 x i8> %i.an to <8 x i16>
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
  br i1 %i.ay, label %.preheader222, label %bb.d, !llvm.loop !28

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
  br i1 %i.cp, label %.preheader, label %bb.f, !llvm.loop !29

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
  %.397 = phi i64 [ %i.co, %bb.f ], [ %.195, %bb.e ] ; 4 uses
  %.6 = phi ptr [ %i.cn, %bb.f ], [ %.4, %bb.e ]  ; 5 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g
  %i.cy = load i8, ptr %.6, align 1, !tbaa !11
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %.5132, %i.cz                   ; 3 uses
  %i.db = add i32 %i.da, %.4125                   ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %.397, 1
  br i1 %prol.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %3 = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = zext i8 %4 to i32
  %6 = add i32 %i.da, %5                          ; 3 uses
  %7 = add i32 %6, %i.db                          ; 2 uses
  %.not105.1 = icmp eq i64 %.397, 2
  br i1 %.not105.1, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit
  %i.dc = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = zext i8 %i.dd to i32
  %i.df = add i32 %6, %i.de                       ; 2 uses
  %i.dg = add i32 %i.df, %7
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit, %.lr.ph.prol
  %.lcssa262 = phi i32 [ %i.da, %.lr.ph.prol ], [ %6, %.lr.ph.prol.loopexit ], [ %i.df, %.lr.ph ]
  %.lcssa261 = phi i32 [ %i.db, %.lr.ph.prol ], [ %7, %.lr.ph.prol.loopexit ], [ %i.dg, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %.6, i64 %.397
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.6133.lcssa = phi i32 [ %.5132, %bb.g ], [ %.lcssa262, %._crit_edge.loopexit ]
  %.5126.lcssa = phi i32 [ %.4125, %bb.g ], [ %.lcssa261, %._crit_edge.loopexit ]
  %.7.lcssa = phi ptr [ %.6, %bb.g ], [ %scevgep, %._crit_edge.loopexit ]
  %i.dh = urem i32 %.6133.lcssa, 65521            ; 2 uses
  %i.di = urem i32 %.5126.lcssa, 65521            ; 2 uses
  %.not104 = icmp eq i64 %i.s, 0
  br i1 %.not104, label %._crit_edge168, label %.lr.ph167, !llvm.loop !30

._crit_edge168:                                   ; preds = %._crit_edge, %bb.c
  %.2129.lcssa = phi i32 [ %.1128, %bb.c ], [ %i.dh, %._crit_edge ]
  %.2123.lcssa = phi i32 [ %.1122, %bb.c ], [ %i.di, %._crit_edge ]
  %i.dj = shl nuw i32 %.2123.lcssa, 16
  %i.dk = or i32 %i.dj, %.2129.lcssa
  ret i32 %i.dk
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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #10

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
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !12}
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
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
end_hunk_0
