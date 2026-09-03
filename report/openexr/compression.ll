Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@build_decode_table:.preheader222

bb.m:                                             ; preds = %.preheader218, %bb.l
  %.5 = phi i32 [ %i.fn, %bb.l ], [ %.4, %.preheader218 ] ; 2 uses
  %i.fo = zext i32 %i.fj to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !16 ; 3 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.preheader218, label %bb.n, !llvm.loop !347

bb.n:                                             ; preds = %bb.m
  br i1 %.not205, label %._crit_edge251, label %.preheader219, !llvm.loop !348

._crit_edge251:                                   ; preds = %bb.n, %bb.j
  %.0182.lcssa = phi ptr [ %i.db, %bb.j ], [ %i.fb, %bb.n ]
  %.0167.lcssa = phi i32 [ 0, %bb.j ], [ %i.fh, %bb.n ]
  %.3162.lcssa = phi i32 [ %.2161, %bb.j ], [ %i.fj, %bb.n ]
  %.0154.lcssa = phi i32 [ %i.dx, %bb.j ], [ %i.fq, %bb.n ]
  %i.fs = shl nuw nsw i32 1, %.0186               ; 2 uses
  %i.ft = add nsw i32 %i.fs, -1
  %invariant.op = or disjoint i32 %.0186, 49152
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.lr.ph268, %._crit_edge251
  %.2184.ph = phi ptr [ %.0182.lcssa, %._crit_edge251 ], [ %i.gy, %.lr.ph268 ]
  %.3170.ph = phi i32 [ %.0167.lcssa, %._crit_edge251 ], [ %i.he, %.lr.ph268 ]
  %.8.ph = phi i32 [ %.3162.lcssa, %._crit_edge251 ], [ %i.hh, %.lr.ph268 ] ; 3 uses
  %.2156.ph = phi i32 [ %.0154.lcssa, %._crit_edge251 ], [ %i.hk, %.lr.ph268 ]
  %.6.ph = phi i32 [ %i.fs, %._crit_edge251 ], [ %.7, %.lr.ph268 ]
  %.0148.ph = phi i32 [ -1, %._crit_edge251 ], [ %.1149, %.lr.ph268 ]
  %.0146.ph = phi i32 [ 0, %._crit_edge251 ], [ %.1147, %.lr.ph268 ]
  %.pre = sub i32 %.8.ph, %.0186                  ; 4 uses
  %.pre303 = shl nuw i32 1, %.pre                 ; 3 uses
  %i.fu = mul i32 %.pre, 257
  %notmask = shl nsw i32 -1, %.8.ph
  %i.fv = xor i32 %notmask, -1                    ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer, %bb.r
  %.2184 = phi ptr [ %i.gy, %bb.r ], [ %.2184.ph, %.loopexit.outer ] ; 2 uses
  %.3170 = phi i32 [ %i.he, %bb.r ], [ %.3170.ph, %.loopexit.outer ] ; 5 uses
  %.2156 = phi i32 [ %i.hf, %bb.r ], [ %.2156.ph, %.loopexit.outer ] ; 3 uses
  %.6 = phi i32 [ %.7, %bb.r ], [ %.6.ph, %.loopexit.outer ] ; 4 uses
  %.0148 = phi i32 [ %.1149, %bb.r ], [ %.0148.ph, %.loopexit.outer ] ; 2 uses
  %.0146 = phi i32 [ %.1147, %bb.r ], [ %.0146.ph, %.loopexit.outer ]
  %i.fw = and i32 %.3170, %i.ft                   ; 3 uses
  %.not201 = icmp eq i32 %i.fw, %.0148
  br i1 %.not201, label %._crit_edge302, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.fx = icmp ult i32 %.2156, %.pre303
  br i1 %i.fx, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.o, %.lr.ph262
  %.0145260 = phi i32 [ %i.fy, %.lr.ph262 ], [ %.pre, %bb.o ]
  %.1153259 = phi i32 [ %i.ge, %.lr.ph262 ], [ %.2156, %bb.o ]
  %i.fy = add i32 %.0145260, 1                    ; 4 uses
  %i.fz = shl nuw i32 %.1153259, 1
  %i.ga = add i32 %i.fy, %.0186
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !16
  %i.ge = add i32 %i.gd, %i.fz                    ; 2 uses
  %i.gf = shl nuw i32 1, %i.fy                    ; 2 uses
  %i.gg = icmp ult i32 %i.ge, %i.gf
  br i1 %i.gg, label %.lr.ph262, label %._crit_edge263, !llvm.loop !349

._crit_edge263:                                   ; preds = %.lr.ph262, %bb.o
  %.0145.lcssa = phi i32 [ %.pre, %bb.o ], [ %i.fy, %.lr.ph262 ]
  %.lcssa = phi i32 [ %.pre303, %bb.o ], [ %i.gf, %.lr.ph262 ]
  %i.gh = add i32 %.lcssa, %.6
  %i.gi = shl i32 %.6, 16
  %i.gj = shl i32 %.0145.lcssa, 8
  %i.gk = or i32 %i.gi, %i.gj
  %.reass = or i32 %i.gk, %invariant.op
  %i.gl = zext nneg i32 %i.fw to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gl
  store i32 %.reass, ptr %i.gm, align 4, !tbaa !16
  br label %._crit_edge302

._crit_edge302:                                   ; preds = %.loopexit, %._crit_edge263
  %.7 = phi i32 [ %i.gh, %._crit_edge263 ], [ %.6, %.loopexit ] ; 3 uses
  %.1149 = phi i32 [ %i.fw, %._crit_edge263 ], [ %.0148, %.loopexit ] ; 2 uses
  %.1147 = phi i32 [ %.6, %._crit_edge263 ], [ %.0146, %.loopexit ] ; 3 uses
  %i.gn = load i16, ptr %.2184, align 2, !tbaa !45
  %i.go = zext i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !16
  %i.gr = add i32 %i.fu, %i.gq
  %i.gs = lshr i32 %.3170, %.0186
  %i.gt = add i32 %.1147, %i.gs
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge302
  %.0 = phi i32 [ %i.gt, %._crit_edge302 ], [ %i.gw, %bb.p ] ; 2 uses
  %i.gu = zext i32 %.0 to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gu
  store i32 %i.gr, ptr %i.gv, align 4, !tbaa !16
  %i.gw = add i32 %.0, %.pre303                   ; 2 uses
  %i.gx = icmp ult i32 %i.gw, %.7
  br i1 %i.gx, label %bb.p, label %bb.q, !llvm.loop !350

bb.q:                                             ; preds = %bb.p
  %.not202 = icmp eq i32 %.3170, %i.fv
  br i1 %.not202, label %.thread212, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %.2184, i64 2 ; 2 uses
  %i.gz = xor i32 %.3170, %i.fv
  %i.ha = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true)
  %i.hb = lshr exact i32 -2147483648, %i.ha       ; 2 uses
  %i.hc = add i32 %i.hb, -1
  %i.hd = and i32 %i.hc, %.3170
  %i.he = or i32 %i.hd, %i.hb                     ; 2 uses
  %i.hf = add i32 %.2156, -1                      ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph268, label %.loopexit

.lr.ph268:                                        ; preds = %bb.r, %.lr.ph268
  %.9266 = phi i32 [ %i.hh, %.lr.ph268 ], [ %.8.ph, %bb.r ]
  %i.hh = add i32 %.9266, 1                       ; 3 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !16 ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph268, label %.loopexit.outer, !llvm.loop !351

.thread212:                                       ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258, %bb.q, %bb.i, %.preheader, %bb.f, %._crit_edge244
  %.6181 = phi i1 [ true, %bb.q ], [ false, %._crit_edge244 ], [ true, %.preheader ], [ false, %bb.f ], [ true, %bb.i ], [ true, %.lr.ph258 ], [ true, %.lr.ph258.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.6181
}

; Function Attrs: nounwind uwtable
define internal i32 @dispatch_adler32(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !16
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %get_x86_cpu_features.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @libdeflate_init_x86_cpu_features()
  br label %get_x86_cpu_features.exit.i

get_x86_cpu_features.exit.i:                      ; preds = %bb.b, %bb.a
  %i.c = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !16 ; 4 uses
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
  store volatile ptr %.0.i, ptr @adler32_impl, align 8, !tbaa !18
  %i.h = tail call i32 %.0.i(i32 noundef %0, ptr noundef %1, i64 noundef %2) #27
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx512_vl512_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #18 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 63
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader183, label %bb.c, !prof !44

.preheader183:                                    ; preds = %bb.a, %.preheader183
  %.0180 = phi i32 [ %i.k, %.preheader183 ], [ %i.a, %bb.a ]
  %.0177 = phi i32 [ %i.l, %.preheader183 ], [ %i.b, %bb.a ]
  %.0132 = phi i64 [ %i.m, %.preheader183 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.h, %.preheader183 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0180, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0177                     ; 2 uses
  %i.m = add i64 %.0132, -1                       ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 63
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !352

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
  %i.ah = load <64 x i8>, ptr %.3, align 1, !tbaa !36 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.aj = load <64 x i8>, ptr %i.ai, align 1, !tbaa !36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 128
  %i.al = load <64 x i8>, ptr %i.ak, align 1, !tbaa !36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.3, i64 192
  %i.an = load <64 x i8>, ptr %i.am, align 1, !tbaa !36 ; 2 uses
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
  br i1 %i.bc, label %.preheader, label %bb.d, !llvm.loop !353

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
  %i.bw = load <64 x i8>, ptr %.4, align 1, !tbaa !36 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.by = load <64 x i8>, ptr %i.bx, align 1, !tbaa !36 ; 2 uses
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
  %i.cv = load <64 x i8>, ptr %.5, align 1, !tbaa !36 ; 2 uses
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
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !354

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %9, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %10, %bb.k ]
  %i.dk = shl nuw i32 %.2179.lcssa, 16
  %i.dl = or i32 %i.dk, %.2182.lcssa
  ret i32 %i.dl
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx512_vl256_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #19 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader183, label %bb.c, !prof !44

.preheader183:                                    ; preds = %bb.a, %.preheader183
  %.0180 = phi i32 [ %i.k, %.preheader183 ], [ %i.a, %bb.a ]
  %.0177 = phi i32 [ %i.l, %.preheader183 ], [ %i.b, %bb.a ]
  %.0132 = phi i64 [ %i.m, %.preheader183 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.h, %.preheader183 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0180, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0177                     ; 2 uses
  %i.m = add i64 %.0132, -1                       ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 31
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !355

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
  %i.ah = load <32 x i8>, ptr %.3, align 1, !tbaa !36 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.aj = load <32 x i8>, ptr %i.ai, align 1, !tbaa !36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.al = load <32 x i8>, ptr %i.ak, align 1, !tbaa !36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.an = load <32 x i8>, ptr %i.am, align 1, !tbaa !36 ; 2 uses
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
  br i1 %i.bc, label %.preheader, label %bb.d, !llvm.loop !356

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
  %i.bw = load <32 x i8>, ptr %.4, align 1, !tbaa !36 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.by = load <32 x i8>, ptr %i.bx, align 1, !tbaa !36 ; 2 uses
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
  %i.cv = load <32 x i8>, ptr %.5, align 1, !tbaa !36 ; 2 uses
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
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !357

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %9, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %10, %bb.k ]
  %i.dk = shl nuw i32 %.2179.lcssa, 16
  %i.dl = or i32 %i.dk, %.2182.lcssa
  ret i32 %i.dl
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #20 {
bb.a:
  %i.a = alloca <4 x i64>, align 32               ; 5 uses
  %i.b = and i32 %0, 65535                        ; 2 uses
  %i.c = lshr i32 %0, 16                          ; 2 uses
  %i.d = icmp ugt i64 %2, 65536
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, 31
  %i.g = icmp ne i64 %i.f, 0
  %i.h = and i1 %i.d, %i.g
  br i1 %i.h, label %.preheader185, label %bb.c, !prof !44

.preheader185:                                    ; preds = %bb.a, %.preheader185
  %.0181 = phi i32 [ %i.l, %.preheader185 ], [ %i.b, %bb.a ]
  %.0178 = phi i32 [ %i.m, %.preheader185 ], [ %i.c, %bb.a ]
  %.0133 = phi i64 [ %i.n, %.preheader185 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.i, %.preheader185 ], [ %1, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.j = load i8, ptr %.0, align 1, !tbaa !36
  %i.k = zext i8 %i.j to i32
  %i.l = add i32 %.0181, %i.k                     ; 3 uses
  %i.m = add i32 %i.l, %.0178                     ; 2 uses
  %i.n = add i64 %.0133, -1                       ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = and i64 %i.o, 31
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.b, label %.preheader185, !llvm.loop !358

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
  %i.ak = load <32 x i8>, ptr %.3, align 1, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.am = load <32 x i8>, ptr %i.al, align 1, !tbaa !36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.ao = load <32 x i8>, ptr %i.an, align 1, !tbaa !36 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.aq = load <32 x i8>, ptr %i.ap, align 1, !tbaa !36 ; 2 uses
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
  br i1 %i.bf, label %.preheader, label %bb.d, !llvm.loop !359

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
  %i.bz = load <32 x i8>, ptr %.4, align 1, !tbaa !36 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.cb = load <32 x i8>, ptr %i.ca, align 1, !tbaa !36 ; 2 uses
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
  %i.cy = load <32 x i8>, ptr %.5, align 1, !tbaa !36 ; 2 uses
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
  store <4 x i64> zeroinitializer, ptr %i.a, align 32, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %.6, i64 %.3139, i1 false)
  %.0..0..0..0.2184231289 = load <32 x i8>, ptr %i.a, align 32, !tbaa !36 ; 2 uses
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
  br i1 %.not165, label %._crit_edge, label %.lr.ph, !llvm.loop !360
end_hunk_0
