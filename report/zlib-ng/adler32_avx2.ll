Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/adler32_avx2?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_avx2(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %adler32_fold_copy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %adler32_fold_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = insertelement <2 x i32> poison, i32 %0, i64 0
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = lshr <2 x i32> %4, <i32 16, i32 65535>
  %6 = and <2 x i32> %4, <i32 poison, i32 65535>
  %7 = shufflevector <2 x i32> %5, <2 x i32> %6, <2 x i32> <i32 0, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.0112.i = phi i64 [ %2, %bb.c ], [ %i.am, %bb.g ] ; 8 uses
  %.0108.i = phi ptr [ %1, %bb.c ], [ %.3111.lcssa.i, %bb.g ] ; 4 uses
  %.0105.i.a = phi i32 [ %0, %bb.c ], [ %i.dk, %bb.g ]
  %8 = phi <2 x i32> [ %7, %bb.c ], [ %i.dh, %bb.g ] ; 2 uses
  %9 = icmp ult i64 %.0112.i, 16
  %10 = extractelement <2 x i32> %8, i64 0        ; 3 uses
  %11 = extractelement <2 x i32> %8, i64 1        ; 3 uses
  br i1 %9, label %.preheader.i.preheader, label %bb.e

.preheader.i.preheader:                           ; preds = %bb.d
  %xtraiter136 = and i64 %.0112.i, 3              ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.015.i.i.prol = phi i32 [ %i.h, %.preheader.i.prol ], [ %10, %.preheader.i.preheader ]
  %.0914.i.i.prol = phi i64 [ %i.c, %.preheader.i.prol ], [ %.0112.i, %.preheader.i.preheader ]
  %.01013.i.i.prol = phi ptr [ %i.d, %.preheader.i.prol ], [ %.0108.i, %.preheader.i.preheader ] ; 2 uses
  %.01112.i.i.prol = phi i32 [ %i.g, %.preheader.i.prol ], [ %11, %.preheader.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.c = add nsw i64 %.0914.i.i.prol, -1          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01013.i.i.prol, i64 1 ; 2 uses
  %i.e = load i8, ptr %.01013.i.i.prol, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i32
  %i.g = add i32 %.01112.i.i.prol, %i.f           ; 4 uses
  %i.h = add i32 %i.g, %.015.i.i.prol             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter136
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !14

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa105.unr = phi i32 [ poison, %.preheader.i.preheader ], [ %i.g, %.preheader.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.preheader.i.preheader ], [ %i.h, %.preheader.i.prol ]
  %.015.i.i.unr = phi i32 [ %10, %.preheader.i.preheader ], [ %i.h, %.preheader.i.prol ]
  %.0914.i.i.unr = phi i64 [ %.0112.i, %.preheader.i.preheader ], [ %i.c, %.preheader.i.prol ]
  %.01013.i.i.unr = phi ptr [ %.0108.i, %.preheader.i.preheader ], [ %i.d, %.preheader.i.prol ]
  %.01112.i.i.unr = phi i32 [ %11, %.preheader.i.preheader ], [ %i.g, %.preheader.i.prol ]
  %i.i = icmp ult i64 %.0112.i, 4
  br i1 %i.i, label %adler32_len_16.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.015.i.i = phi i32 [ %i.ad, %.preheader.i ], [ %.015.i.i.unr, %.preheader.i.prol.loopexit ]
  %.0914.i.i = phi i64 [ %i.y, %.preheader.i ], [ %.0914.i.i.unr, %.preheader.i.prol.loopexit ]
  %.01013.i.i = phi ptr [ %i.z, %.preheader.i ], [ %.01013.i.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01112.i.i = phi i32 [ %i.ac, %.preheader.i ], [ %.01112.i.i.unr, %.preheader.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 1
  %i.k = load i8, ptr %.01013.i.i, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.01112.i.i, %i.l                ; 2 uses
  %i.n = add i32 %i.m, %.015.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2
  %i.p = load i8, ptr %i.j, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i32
  %i.r = add i32 %i.m, %i.q                       ; 2 uses
  %i.s = add i32 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 3
  %i.u = load i8, ptr %i.o, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i32
  %i.w = add i32 %i.r, %i.v                       ; 2 uses
  %i.x = add i32 %i.w, %i.s
  %i.y = add nsw i64 %.0914.i.i, -4               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 4
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add i32 %i.w, %i.ab                     ; 3 uses
  %i.ad = add i32 %i.ac, %i.x                     ; 2 uses
  %.not.i136.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i136.i.3, label %adler32_len_16.exit.i, label %.preheader.i, !llvm.loop !15

adler32_len_16.exit.i:                            ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %.lcssa105 = phi i32 [ %.lcssa105.unr, %.preheader.i.prol.loopexit ], [ %i.ac, %.preheader.i ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.ad, %.preheader.i ]
  %12 = urem i32 %.lcssa105, 65521
  %13 = urem i32 %.lcssa, 65521
  %i.ae = shl nuw i32 %13, 16
  %i.af = or disjoint i32 %i.ae, %12
  br label %adler32_fold_copy_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp ult i64 %.0112.i, 32
  br i1 %i.ag, label %bb.f, label %.preheader138.i

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call i32 @adler32_ssse3(i32 noundef %.0105.i.a, ptr noundef nonnull %.0108.i, i64 noundef %.0112.i) #4
  br label %adler32_fold_copy_impl.exit

.preheader138.i:                                  ; preds = %bb.e, %._crit_edge183.i
  %.1109197.i = phi ptr [ %.3111.lcssa.i, %._crit_edge183.i ], [ %.0108.i, %bb.e ] ; 2 uses
  %.1113196.i = phi i64 [ %i.am, %._crit_edge183.i ], [ %.0112.i, %bb.e ] ; 3 uses
  %.1115195.i = phi i32 [ %15, %._crit_edge183.i ], [ %11, %bb.e ]
  %.1123194.i = phi i32 [ %i.di, %._crit_edge183.i ], [ %10, %bb.e ]
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1115195.i, i64 0
  %i.aj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1123194.i, i64 0
  %i.ak = tail call i64 @llvm.umin.i64(i64 %.1113196.i, i64 5552)
  %i.al = and i64 %i.ak, 8160                     ; 3 uses
  %i.am = sub i64 %.1113196.i, %i.al              ; 4 uses
  %i.an = shufflevector <4 x i32> %i.aj, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ao = shufflevector <4 x i32> %i.ai, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ap = icmp ugt i64 %.1113196.i, 63
  br i1 %i.ap, label %.lr.ph.split.us.i, label %.lr.ph182.split.us.i.preheader

.lr.ph.split.us.i:                                ; preds = %.preheader138.i, %.lr.ph.split.us.i
  %.2110161.us.i = phi ptr [ %i.av, %.lr.ph.split.us.i ], [ %.1109197.i, %.preheader138.i ] ; 3 uses
  %.0116160.us.i = phi i64 [ %i.aw, %.lr.ph.split.us.i ], [ %i.al, %.preheader138.i ]
  %i.aq = phi <8 x i32> [ %i.bb, %.lr.ph.split.us.i ], [ zeroinitializer, %.preheader138.i ]
  %.0120159.us.i = phi <8 x i32> [ %i.bh, %.lr.ph.split.us.i ], [ %i.ao, %.preheader138.i ] ; 2 uses
  %.0126158.us.i = phi <8 x i32> [ %i.bi, %.lr.ph.split.us.i ], [ %i.an, %.preheader138.i ]
  %i.ar = phi <8 x i32> [ %i.bj, %.lr.ph.split.us.i ], [ zeroinitializer, %.preheader138.i ]
  %i.as = load <32 x i8>, ptr %.2110161.us.i, align 1, !tbaa !11 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.2110161.us.i, i64 32
  %i.au = load <32 x i8>, ptr %i.at, align 1, !tbaa !11 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.2110161.us.i, i64 64 ; 3 uses
  %i.aw = add i64 %.0116160.us.i, -64             ; 4 uses
  %i.ax = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.as, <32 x i8> zeroinitializer)
  %i.ay = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.au, <32 x i8> zeroinitializer)
  %i.az = bitcast <4 x i64> %i.ax to <8 x i32>
  %i.ba = add <8 x i32> %.0120159.us.i, %i.az
  %i.bb = add <8 x i32> %.0120159.us.i, %i.aq     ; 2 uses
  %i.bc = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.as, <32 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33>)
  %i.bd = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.au, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.be = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bc, <16 x i16> splat (i16 1))
  %i.bf = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bd, <16 x i16> splat (i16 1))
  %i.bg = bitcast <4 x i64> %i.ay to <8 x i32>
  %i.bh = add <8 x i32> %i.ba, %i.bg              ; 3 uses
  %i.bi = add <8 x i32> %i.be, %.0126158.us.i     ; 2 uses
  %i.bj = add <8 x i32> %i.bf, %i.ar              ; 2 uses
  %i.bk = icmp ugt i64 %i.aw, 63
  br i1 %i.bk, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i
  %i.bl = shl <8 x i32> %i.bb, splat (i32 6)
  %i.bm = add <8 x i32> %i.bi, %i.bl
  %i.bn = add <8 x i32> %i.bm, %i.bj              ; 2 uses
  %.not131175.i = icmp eq i64 %i.aw, 0
  br i1 %.not131175.i, label %._crit_edge183.i, label %.lr.ph182.split.us.i.preheader

.lr.ph182.split.us.i.preheader:                   ; preds = %._crit_edge.i, %.preheader138.i
  %.3111179.us.i.ph = phi ptr [ %.1109197.i, %.preheader138.i ], [ %i.av, %._crit_edge.i ] ; 3 uses
  %.1117178.us.i.ph = phi i64 [ %i.al, %.preheader138.i ], [ %i.aw, %._crit_edge.i ] ; 3 uses
  %.1121177.us.i.ph = phi <8 x i32> [ %i.ao, %.preheader138.i ], [ %i.bh, %._crit_edge.i ] ; 4 uses
  %.1127.in176.us.i.ph = phi <8 x i32> [ %i.an, %.preheader138.i ], [ %i.bn, %._crit_edge.i ] ; 2 uses
  %i.bo = add nsw i64 %.1117178.us.i.ph, -32      ; 2 uses
  %i.bp = and i64 %i.bo, 32
  %lcmp.mod.not.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph182.split.us.i.prol, label %.lr.ph182.split.us.i.prol.loopexit

.lr.ph182.split.us.i.prol:                        ; preds = %.lr.ph182.split.us.i.preheader
  %i.bq = load <32 x i8>, ptr %.3111179.us.i.ph, align 1, !tbaa !11 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3111179.us.i.ph, i64 32 ; 2 uses
  %i.bs = add nsw i64 %.1117178.us.i.ph, -32
  %i.bt = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.bq, <32 x i8> zeroinitializer)
  %i.bu = bitcast <4 x i64> %i.bt to <8 x i32>
  %i.bv = add <8 x i32> %.1121177.us.i.ph, %i.bu  ; 2 uses
  %i.bw = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bq, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bx = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bw, <16 x i16> splat (i16 1))
  %i.by = add <8 x i32> %i.bx, %.1127.in176.us.i.ph ; 2 uses
  br label %.lr.ph182.split.us.i.prol.loopexit

.lr.ph182.split.us.i.prol.loopexit:               ; preds = %.lr.ph182.split.us.i.prol, %.lr.ph182.split.us.i.preheader
  %.lcssa115.unr = phi ptr [ poison, %.lr.ph182.split.us.i.preheader ], [ %i.br, %.lr.ph182.split.us.i.prol ]
  %.lcssa114.unr = phi <8 x i32> [ poison, %.lr.ph182.split.us.i.preheader ], [ %i.bv, %.lr.ph182.split.us.i.prol ]
  %.lcssa112.unr = phi <8 x i32> [ poison, %.lr.ph182.split.us.i.preheader ], [ %i.by, %.lr.ph182.split.us.i.prol ]
  %.3111179.us.i.unr = phi ptr [ %.3111179.us.i.ph, %.lr.ph182.split.us.i.preheader ], [ %i.br, %.lr.ph182.split.us.i.prol ]
  %.1117178.us.i.unr = phi i64 [ %.1117178.us.i.ph, %.lr.ph182.split.us.i.preheader ], [ %i.bs, %.lr.ph182.split.us.i.prol ]
  %.unr = phi <8 x i32> [ zeroinitializer, %.lr.ph182.split.us.i.preheader ], [ %.1121177.us.i.ph, %.lr.ph182.split.us.i.prol ]
  %.1121177.us.i.unr = phi <8 x i32> [ %.1121177.us.i.ph, %.lr.ph182.split.us.i.preheader ], [ %i.bv, %.lr.ph182.split.us.i.prol ]
  %.1127.in176.us.i.unr = phi <8 x i32> [ %.1127.in176.us.i.ph, %.lr.ph182.split.us.i.preheader ], [ %i.by, %.lr.ph182.split.us.i.prol ]
  %i.bz = icmp ult i64 %i.bo, 32
  br i1 %i.bz, label %._crit_edge183.i.loopexit, label %.lr.ph182.split.us.i

.lr.ph182.split.us.i:                             ; preds = %.lr.ph182.split.us.i.prol.loopexit, %.lr.ph182.split.us.i
  %.3111179.us.i = phi ptr [ %i.cl, %.lr.ph182.split.us.i ], [ %.3111179.us.i.unr, %.lr.ph182.split.us.i.prol.loopexit ] ; 3 uses
  %.1117178.us.i = phi i64 [ %i.cm, %.lr.ph182.split.us.i ], [ %.1117178.us.i.unr, %.lr.ph182.split.us.i.prol.loopexit ]
  %i.ca = phi <8 x i32> [ %i.cq, %.lr.ph182.split.us.i ], [ %.unr, %.lr.ph182.split.us.i.prol.loopexit ]
  %.1121177.us.i = phi <8 x i32> [ %i.cp, %.lr.ph182.split.us.i ], [ %.1121177.us.i.unr, %.lr.ph182.split.us.i.prol.loopexit ] ; 2 uses
  %.1127.in176.us.i = phi <8 x i32> [ %i.ct, %.lr.ph182.split.us.i ], [ %.1127.in176.us.i.unr, %.lr.ph182.split.us.i.prol.loopexit ]
  %i.cb = load <32 x i8>, ptr %.3111179.us.i, align 1, !tbaa !11 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.3111179.us.i, i64 32
  %i.cd = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.cb, <32 x i8> zeroinitializer)
  %i.ce = bitcast <4 x i64> %i.cd to <8 x i32>
  %i.cf = add <8 x i32> %.1121177.us.i, %i.ce     ; 2 uses
  %i.cg = add <8 x i32> %.1121177.us.i, %i.ca
  %i.ch = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.cb, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ci = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ch, <16 x i16> splat (i16 1))
  %i.cj = add <8 x i32> %i.ci, %.1127.in176.us.i
  %i.ck = load <32 x i8>, ptr %i.cc, align 1, !tbaa !11 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.3111179.us.i, i64 64 ; 2 uses
  %i.cm = add nsw i64 %.1117178.us.i, -64         ; 2 uses
  %i.cn = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ck, <32 x i8> zeroinitializer)
  %i.co = bitcast <4 x i64> %i.cn to <8 x i32>
  %i.cp = add <8 x i32> %i.cf, %i.co              ; 2 uses
  %i.cq = add <8 x i32> %i.cf, %i.cg              ; 2 uses
  %i.cr = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ck, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cs = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cr, <16 x i16> splat (i16 1))
  %i.ct = add <8 x i32> %i.cs, %i.cj              ; 2 uses
  %.not131.us.i.1 = icmp eq i64 %i.cm, 0
  br i1 %.not131.us.i.1, label %._crit_edge183.i.loopexit, label %.lr.ph182.split.us.i, !llvm.loop !1

._crit_edge183.i.loopexit:                        ; preds = %.lr.ph182.split.us.i, %.lr.ph182.split.us.i.prol.loopexit
  %.lcssa115 = phi ptr [ %.lcssa115.unr, %.lr.ph182.split.us.i.prol.loopexit ], [ %i.cl, %.lr.ph182.split.us.i ]
  %.lcssa114 = phi <8 x i32> [ %.lcssa114.unr, %.lr.ph182.split.us.i.prol.loopexit ], [ %i.cp, %.lr.ph182.split.us.i ]
  %.lcssa113 = phi <8 x i32> [ %.1121177.us.i.ph, %.lr.ph182.split.us.i.prol.loopexit ], [ %i.cq, %.lr.ph182.split.us.i ]
  %.lcssa112 = phi <8 x i32> [ %.lcssa112.unr, %.lr.ph182.split.us.i.prol.loopexit ], [ %i.ct, %.lr.ph182.split.us.i ]
  %i.cu = shl <8 x i32> %.lcssa113, splat (i32 5)
  br label %._crit_edge183.i

._crit_edge183.i:                                 ; preds = %._crit_edge183.i.loopexit, %._crit_edge.i
  %.1127.in.lcssa.i = phi <8 x i32> [ %i.bn, %._crit_edge.i ], [ %.lcssa112, %._crit_edge183.i.loopexit ]
  %.1121.lcssa.i = phi <8 x i32> [ %i.bh, %._crit_edge.i ], [ %.lcssa114, %._crit_edge183.i.loopexit ] ; 2 uses
  %.lcssa144.i = phi <8 x i32> [ zeroinitializer, %._crit_edge.i ], [ %i.cu, %._crit_edge183.i.loopexit ]
  %.3111.lcssa.i = phi ptr [ %i.av, %._crit_edge.i ], [ %.lcssa115, %._crit_edge183.i.loopexit ] ; 2 uses
  %i.cv = add <8 x i32> %.lcssa144.i, %.1127.in.lcssa.i ; 2 uses
  %i.cw = shufflevector <8 x i32> %.1121.lcssa.i, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cx = shufflevector <8 x i32> %.1121.lcssa.i, <8 x i32> poison, <4 x i32> <i32 4, i32 6, i32 4, i32 6>
  %i.cy = add <4 x i32> %i.cw, %i.cx              ; 2 uses
  %i.cz = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.da = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.db = add <4 x i32> %i.cz, %i.da              ; 2 uses
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dd = add <4 x i32> %i.db, %i.dc              ; 2 uses
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> %i.cy, <2 x i32> <i32 1, i32 5>
  %i.df = shufflevector <4 x i32> %i.dd, <4 x i32> %i.cy, <2 x i32> <i32 0, i32 4>
  %i.dg = add <2 x i32> %i.de, %i.df
  %i.dh = urem <2 x i32> %i.dg, splat (i32 65521) ; 3 uses
  %14 = icmp ugt i64 %i.am, 31
  %i.di = extractelement <2 x i32> %i.dh, i64 0   ; 2 uses
  %15 = extractelement <2 x i32> %i.dh, i64 1     ; 2 uses
  br i1 %14, label %.preheader138.i, label %bb.g, !llvm.loop !2

bb.g:                                             ; preds = %._crit_edge183.i
  %i.dj = shl nuw i32 %i.di, 16
  %i.dk = or disjoint i32 %i.dj, %15              ; 2 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %bb.d

adler32_fold_copy_impl.exit:                      ; preds = %bb.g, %bb.a, %bb.b, %adler32_len_16.exit.i, %bb.f
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.ah, %bb.f ], [ %i.af, %adler32_len_16.exit.i ], [ %i.dk, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_fold_copy_avx2(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %adler32_fold_copy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %adler32_fold_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = insertelement <2 x i32> poison, i32 %0, i64 0
  %5 = shufflevector <2 x i32> %4, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %6 = lshr <2 x i32> %5, <i32 16, i32 65535>
  %7 = and <2 x i32> %5, <i32 poison, i32 65535>
  %8 = shufflevector <2 x i32> %6, <2 x i32> %7, <2 x i32> <i32 0, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.0112.i = phi i64 [ %3, %bb.c ], [ %i.as, %bb.g ] ; 8 uses
  %.0108.i = phi ptr [ %2, %bb.c ], [ %.3111.lcssa.i, %bb.g ] ; 4 uses
  %.0106.i = phi ptr [ %1, %bb.c ], [ %.4.lcssa.i, %bb.g ] ; 4 uses
  %.0105.i = phi i32 [ %0, %bb.c ], [ %i.ea, %bb.g ]
  %9 = phi <2 x i32> [ %8, %bb.c ], [ %i.dx, %bb.g ] ; 2 uses
  %i.c = icmp ult i64 %.0112.i, 16
  %10 = extractelement <2 x i32> %9, i64 0        ; 3 uses
  %11 = extractelement <2 x i32> %9, i64 1        ; 3 uses
  br i1 %i.c, label %.preheader137.i.preheader, label %bb.e

.preheader137.i.preheader:                        ; preds = %bb.d
  %xtraiter160 = and i64 %.0112.i, 3              ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.preheader137.i.prol.loopexit, label %.preheader137.i.prol

.preheader137.i.prol:                             ; preds = %.preheader137.i.preheader, %.preheader137.i.prol
  %.018.i.i.prol = phi i32 [ %i.j, %.preheader137.i.prol ], [ %10, %.preheader137.i.preheader ]
  %.01017.i.i.prol = phi i64 [ %i.d, %.preheader137.i.prol ], [ %.0112.i, %.preheader137.i.preheader ]
  %.01116.i.i.prol = phi ptr [ %i.g, %.preheader137.i.prol ], [ %.0106.i, %.preheader137.i.preheader ] ; 2 uses
  %.01215.i.i.prol = phi ptr [ %i.e, %.preheader137.i.prol ], [ %.0108.i, %.preheader137.i.preheader ] ; 2 uses
  %.01314.i.i.prol = phi i32 [ %i.i, %.preheader137.i.prol ], [ %11, %.preheader137.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader137.i.prol ], [ 0, %.preheader137.i.preheader ]
  %i.d = add nsw i64 %.01017.i.i.prol, -1         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215.i.i.prol, i64 1 ; 2 uses
  %i.f = load i8, ptr %.01215.i.i.prol, align 1, !tbaa !11 ; 2 uses
  store i8 %i.f, ptr %.01116.i.i.prol, align 1, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %.01116.i.i.prol, i64 1 ; 2 uses
  %i.h = zext i8 %i.f to i32
  %i.i = add i32 %.01314.i.i.prol, %i.h           ; 4 uses
  %i.j = add i32 %i.i, %.018.i.i.prol             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter160
  br i1 %prol.iter.cmp.not, label %.preheader137.i.prol.loopexit, label %.preheader137.i.prol, !llvm.loop !16

.preheader137.i.prol.loopexit:                    ; preds = %.preheader137.i.prol, %.preheader137.i.preheader
  %.lcssa125.unr = phi i32 [ poison, %.preheader137.i.preheader ], [ %i.i, %.preheader137.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.preheader137.i.preheader ], [ %i.j, %.preheader137.i.prol ]
  %.018.i.i.unr = phi i32 [ %10, %.preheader137.i.preheader ], [ %i.j, %.preheader137.i.prol ]
  %.01017.i.i.unr = phi i64 [ %.0112.i, %.preheader137.i.preheader ], [ %i.d, %.preheader137.i.prol ]
  %.01116.i.i.unr = phi ptr [ %.0106.i, %.preheader137.i.preheader ], [ %i.g, %.preheader137.i.prol ]
  %.01215.i.i.unr = phi ptr [ %.0108.i, %.preheader137.i.preheader ], [ %i.e, %.preheader137.i.prol ]
  %.01314.i.i.unr = phi i32 [ %11, %.preheader137.i.preheader ], [ %i.i, %.preheader137.i.prol ]
  %i.k = icmp ult i64 %.0112.i, 4
  br i1 %i.k, label %adler32_copy_len_16.exit.i, label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.i.prol.loopexit, %.preheader137.i
  %.018.i.i = phi i32 [ %i.aj, %.preheader137.i ], [ %.018.i.i.unr, %.preheader137.i.prol.loopexit ]
  %.01017.i.i = phi i64 [ %i.ad, %.preheader137.i ], [ %.01017.i.i.unr, %.preheader137.i.prol.loopexit ]
  %.01116.i.i = phi ptr [ %i.ag, %.preheader137.i ], [ %.01116.i.i.unr, %.preheader137.i.prol.loopexit ] ; 5 uses
  %.01215.i.i = phi ptr [ %i.ae, %.preheader137.i ], [ %.01215.i.i.unr, %.preheader137.i.prol.loopexit ] ; 5 uses
  %.01314.i.i = phi i32 [ %i.ai, %.preheader137.i ], [ %.01314.i.i.unr, %.preheader137.i.prol.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i.i, i64 1
  %i.m = load i8, ptr %.01215.i.i, align 1, !tbaa !11 ; 2 uses
  store i8 %i.m, ptr %.01116.i.i, align 1, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 1
  %i.o = zext i8 %i.m to i32
  %i.p = add i32 %.01314.i.i, %i.o                ; 2 uses
  %i.q = add i32 %i.p, %.018.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i, i64 2
  %i.s = load i8, ptr %i.l, align 1, !tbaa !11    ; 2 uses
  store i8 %i.s, ptr %i.n, align 1, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 2
  %i.u = zext i8 %i.s to i32
  %i.v = add i32 %i.p, %i.u                       ; 2 uses
  %i.w = add i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i.i, i64 3
  %i.y = load i8, ptr %i.r, align 1, !tbaa !11    ; 2 uses
  store i8 %i.y, ptr %i.t, align 1, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 3
  %i.aa = zext i8 %i.y to i32
  %i.ab = add i32 %i.v, %i.aa                     ; 2 uses
  %i.ac = add i32 %i.ab, %i.w
  %i.ad = add nsw i64 %.01017.i.i, -4             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01215.i.i, i64 4
  %i.af = load i8, ptr %i.x, align 1, !tbaa !11   ; 2 uses
  store i8 %i.af, ptr %i.z, align 1, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 4
  %i.ah = zext i8 %i.af to i32
  %i.ai = add i32 %i.ab, %i.ah                    ; 3 uses
  %i.aj = add i32 %i.ai, %i.ac                    ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.3, label %adler32_copy_len_16.exit.i, label %.preheader137.i, !llvm.loop !17

adler32_copy_len_16.exit.i:                       ; preds = %.preheader137.i, %.preheader137.i.prol.loopexit
  %.lcssa125 = phi i32 [ %.lcssa125.unr, %.preheader137.i.prol.loopexit ], [ %i.ai, %.preheader137.i ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.preheader137.i.prol.loopexit ], [ %i.aj, %.preheader137.i ]
  %12 = urem i32 %.lcssa125, 65521
  %13 = urem i32 %.lcssa, 65521
  %i.ak = shl nuw i32 %13, 16
  %i.al = or disjoint i32 %i.ak, %12
  br label %adler32_fold_copy_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.am = icmp ult i64 %.0112.i, 32
  br i1 %i.am, label %bb.f, label %.preheader138.i

bb.f:                                             ; preds = %bb.e
  %i.an = tail call i32 @adler32_fold_copy_sse42(i32 noundef %.0105.i, ptr noundef %.0106.i, ptr noundef nonnull %.0108.i, i64 noundef %.0112.i) #4
  br label %adler32_fold_copy_impl.exit

.preheader138.i:                                  ; preds = %bb.e, %._crit_edge183.i
  %.1107198.i = phi ptr [ %.4.lcssa.i, %._crit_edge183.i ], [ %.0106.i, %bb.e ] ; 2 uses
  %.1109197.i = phi ptr [ %.3111.lcssa.i, %._crit_edge183.i ], [ %.0108.i, %bb.e ] ; 2 uses
  %.1113196.i = phi i64 [ %i.as, %._crit_edge183.i ], [ %.0112.i, %bb.e ] ; 3 uses
  %.1115195.i = phi i32 [ %15, %._crit_edge183.i ], [ %11, %bb.e ]
  %.1123194.i = phi i32 [ %i.dy, %._crit_edge183.i ], [ %10, %bb.e ]
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1115195.i, i64 0
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1123194.i, i64 0
  %i.aq = tail call i64 @llvm.umin.i64(i64 %.1113196.i, i64 5552)
  %i.ar = and i64 %i.aq, 8160                     ; 3 uses
  %i.as = sub i64 %.1113196.i, %i.ar              ; 4 uses
  %i.at = shufflevector <4 x i32> %i.ap, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.au = shufflevector <4 x i32> %i.ao, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.av = icmp ugt i64 %.1113196.i, 63
  br i1 %i.av, label %.lr.ph.split.i, label %.lr.ph182.split.i.preheader

.lr.ph.split.i:                                   ; preds = %.preheader138.i, %.lr.ph.split.i
  %.2162.i = phi ptr [ %i.bi, %.lr.ph.split.i ], [ %.1107198.i, %.preheader138.i ] ; 3 uses
  %.2110161.i = phi ptr [ %i.bb, %.lr.ph.split.i ], [ %.1109197.i, %.preheader138.i ] ; 3 uses
  %.0116160.i = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.ar, %.preheader138.i ]
  %i.aw = phi <8 x i32> [ %i.bl, %.lr.ph.split.i ], [ zeroinitializer, %.preheader138.i ]
  %.0120159.i = phi <8 x i32> [ %i.br, %.lr.ph.split.i ], [ %i.au, %.preheader138.i ] ; 2 uses
  %.0126158.i = phi <8 x i32> [ %i.bs, %.lr.ph.split.i ], [ %i.at, %.preheader138.i ]
  %i.ax = phi <8 x i32> [ %i.bt, %.lr.ph.split.i ], [ zeroinitializer, %.preheader138.i ]
  %i.ay = load <4 x i64>, ptr %.2110161.i, align 1, !tbaa !11 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.2110161.i, i64 32
  %i.ba = load <4 x i64>, ptr %i.az, align 1, !tbaa !11 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2110161.i, i64 64 ; 3 uses
  %i.bc = add i64 %.0116160.i, -64                ; 4 uses
  %i.bd = bitcast <4 x i64> %i.ay to <32 x i8>    ; 2 uses
  %i.be = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.bd, <32 x i8> zeroinitializer)
  %i.bf = bitcast <4 x i64> %i.ba to <32 x i8>    ; 2 uses
  %i.bg = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.bf, <32 x i8> zeroinitializer)
  store <4 x i64> %i.ay, ptr %.2162.i, align 1, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.2162.i, i64 32
  store <4 x i64> %i.ba, ptr %i.bh, align 1, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %.2162.i, i64 64 ; 3 uses
  %i.bj = bitcast <4 x i64> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %.0120159.i, %i.bj
  %i.bl = add <8 x i32> %.0120159.i, %i.aw        ; 2 uses
  %i.bm = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bd, <32 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33>)
  %i.bn = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bf, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bo = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bm, <16 x i16> splat (i16 1))
  %i.bp = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bn, <16 x i16> splat (i16 1))
  %i.bq = bitcast <4 x i64> %i.bg to <8 x i32>
  %i.br = add <8 x i32> %i.bk, %i.bq              ; 3 uses
  %i.bs = add <8 x i32> %i.bo, %.0126158.i        ; 2 uses
  %i.bt = add <8 x i32> %i.bp, %i.ax              ; 2 uses
  %i.bu = icmp ugt i64 %i.bc, 63
  br i1 %i.bu, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.split.i
  %i.bv = shl <8 x i32> %i.bl, splat (i32 6)
  %i.bw = add <8 x i32> %i.bs, %i.bv
  %i.bx = add <8 x i32> %i.bw, %i.bt              ; 2 uses
  %.not131175.i = icmp eq i64 %i.bc, 0
  br i1 %.not131175.i, label %._crit_edge183.i, label %.lr.ph182.split.i.preheader

.lr.ph182.split.i.preheader:                      ; preds = %._crit_edge.i, %.preheader138.i
  %.4180.i.ph = phi ptr [ %.1107198.i, %.preheader138.i ], [ %i.bi, %._crit_edge.i ] ; 3 uses
  %.3111179.i.ph = phi ptr [ %.1109197.i, %.preheader138.i ], [ %i.bb, %._crit_edge.i ] ; 3 uses
  %.1117178.i.ph = phi i64 [ %i.ar, %.preheader138.i ], [ %i.bc, %._crit_edge.i ] ; 3 uses
  %.1121177.i.ph = phi <8 x i32> [ %i.au, %.preheader138.i ], [ %i.br, %._crit_edge.i ] ; 4 uses
  %.1127.in176.i.ph = phi <8 x i32> [ %i.at, %.preheader138.i ], [ %i.bx, %._crit_edge.i ] ; 2 uses
  %i.by = add nsw i64 %.1117178.i.ph, -32         ; 2 uses
  %i.bz = and i64 %i.by, 32
  %lcmp.mod.not.not = icmp eq i64 %i.bz, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph182.split.i.prol, label %.lr.ph182.split.i.prol.loopexit

.lr.ph182.split.i.prol:                           ; preds = %.lr.ph182.split.i.preheader
  %i.ca = load <4 x i64>, ptr %.3111179.i.ph, align 1, !tbaa !11 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.3111179.i.ph, i64 32 ; 2 uses
  %i.cc = add nsw i64 %.1117178.i.ph, -32
  %i.cd = bitcast <4 x i64> %i.ca to <32 x i8>    ; 2 uses
  %i.ce = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.cd, <32 x i8> zeroinitializer)
  store <4 x i64> %i.ca, ptr %.4180.i.ph, align 1, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %.4180.i.ph, i64 32 ; 2 uses
  %i.cg = bitcast <4 x i64> %i.ce to <8 x i32>
  %i.ch = add <8 x i32> %.1121177.i.ph, %i.cg     ; 2 uses
  %i.ci = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.cd, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ci, <16 x i16> splat (i16 1))
  %i.ck = add <8 x i32> %i.cj, %.1127.in176.i.ph  ; 2 uses
  br label %.lr.ph182.split.i.prol.loopexit

.lr.ph182.split.i.prol.loopexit:                  ; preds = %.lr.ph182.split.i.prol, %.lr.ph182.split.i.preheader
  %.lcssa137.unr = phi ptr [ poison, %.lr.ph182.split.i.preheader ], [ %i.cb, %.lr.ph182.split.i.prol ]
  %.lcssa136.unr = phi ptr [ poison, %.lr.ph182.split.i.preheader ], [ %i.cf, %.lr.ph182.split.i.prol ]
  %.lcssa135.unr = phi <8 x i32> [ poison, %.lr.ph182.split.i.preheader ], [ %i.ch, %.lr.ph182.split.i.prol ]
  %.lcssa133.unr = phi <8 x i32> [ poison, %.lr.ph182.split.i.preheader ], [ %i.ck, %.lr.ph182.split.i.prol ]
  %.4180.i.unr = phi ptr [ %.4180.i.ph, %.lr.ph182.split.i.preheader ], [ %i.cf, %.lr.ph182.split.i.prol ]
  %.3111179.i.unr = phi ptr [ %.3111179.i.ph, %.lr.ph182.split.i.preheader ], [ %i.cb, %.lr.ph182.split.i.prol ]
  %.1117178.i.unr = phi i64 [ %.1117178.i.ph, %.lr.ph182.split.i.preheader ], [ %i.cc, %.lr.ph182.split.i.prol ]
  %.unr = phi <8 x i32> [ zeroinitializer, %.lr.ph182.split.i.preheader ], [ %.1121177.i.ph, %.lr.ph182.split.i.prol ]
  %.1121177.i.unr = phi <8 x i32> [ %.1121177.i.ph, %.lr.ph182.split.i.preheader ], [ %i.ch, %.lr.ph182.split.i.prol ]
  %.1127.in176.i.unr = phi <8 x i32> [ %.1127.in176.i.ph, %.lr.ph182.split.i.preheader ], [ %i.ck, %.lr.ph182.split.i.prol ]
  %i.cl = icmp ult i64 %i.by, 32
  br i1 %i.cl, label %._crit_edge183.i.loopexit, label %.lr.ph182.split.i

.lr.ph182.split.i:                                ; preds = %.lr.ph182.split.i.prol.loopexit, %.lr.ph182.split.i
  %.4180.i = phi ptr [ %i.dd, %.lr.ph182.split.i ], [ %.4180.i.unr, %.lr.ph182.split.i.prol.loopexit ] ; 3 uses
  %.3111179.i = phi ptr [ %i.cz, %.lr.ph182.split.i ], [ %.3111179.i.unr, %.lr.ph182.split.i.prol.loopexit ] ; 3 uses
  %.1117178.i = phi i64 [ %i.da, %.lr.ph182.split.i ], [ %.1117178.i.unr, %.lr.ph182.split.i.prol.loopexit ]
  %i.cm = phi <8 x i32> [ %i.dg, %.lr.ph182.split.i ], [ %.unr, %.lr.ph182.split.i.prol.loopexit ]
  %.1121177.i = phi <8 x i32> [ %i.df, %.lr.ph182.split.i ], [ %.1121177.i.unr, %.lr.ph182.split.i.prol.loopexit ] ; 2 uses
  %.1127.in176.i = phi <8 x i32> [ %i.dj, %.lr.ph182.split.i ], [ %.1127.in176.i.unr, %.lr.ph182.split.i.prol.loopexit ]
  %i.cn = load <4 x i64>, ptr %.3111179.i, align 1, !tbaa !11 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.3111179.i, i64 32
  %i.cp = bitcast <4 x i64> %i.cn to <32 x i8>    ; 2 uses
  %i.cq = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.cp, <32 x i8> zeroinitializer)
  store <4 x i64> %i.cn, ptr %.4180.i, align 1, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %.4180.i, i64 32
  %i.cs = bitcast <4 x i64> %i.cq to <8 x i32>
  %i.ct = add <8 x i32> %.1121177.i, %i.cs        ; 2 uses
  %i.cu = add <8 x i32> %.1121177.i, %i.cm
  %i.cv = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.cp, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cw = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cv, <16 x i16> splat (i16 1))
  %i.cx = add <8 x i32> %i.cw, %.1127.in176.i
  %i.cy = load <4 x i64>, ptr %i.co, align 1, !tbaa !11 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.3111179.i, i64 64 ; 2 uses
  %i.da = add nsw i64 %.1117178.i, -64            ; 2 uses
  %i.db = bitcast <4 x i64> %i.cy to <32 x i8>    ; 2 uses
  %i.dc = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.db, <32 x i8> zeroinitializer)
  store <4 x i64> %i.cy, ptr %i.cr, align 1, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %.4180.i, i64 64 ; 2 uses
  %i.de = bitcast <4 x i64> %i.dc to <8 x i32>
  %i.df = add <8 x i32> %i.ct, %i.de              ; 2 uses
  %i.dg = add <8 x i32> %i.ct, %i.cu              ; 2 uses
  %i.dh = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.db, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.di = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.dh, <16 x i16> splat (i16 1))
  %i.dj = add <8 x i32> %i.di, %i.cx              ; 2 uses
  %.not131.i.1 = icmp eq i64 %i.da, 0
  br i1 %.not131.i.1, label %._crit_edge183.i.loopexit, label %.lr.ph182.split.i, !llvm.loop !1

._crit_edge183.i.loopexit:                        ; preds = %.lr.ph182.split.i, %.lr.ph182.split.i.prol.loopexit
  %.lcssa137 = phi ptr [ %.lcssa137.unr, %.lr.ph182.split.i.prol.loopexit ], [ %i.cz, %.lr.ph182.split.i ]
  %.lcssa136 = phi ptr [ %.lcssa136.unr, %.lr.ph182.split.i.prol.loopexit ], [ %i.dd, %.lr.ph182.split.i ]
  %.lcssa135 = phi <8 x i32> [ %.lcssa135.unr, %.lr.ph182.split.i.prol.loopexit ], [ %i.df, %.lr.ph182.split.i ]
  %.lcssa134 = phi <8 x i32> [ %.1121177.i.ph, %.lr.ph182.split.i.prol.loopexit ], [ %i.dg, %.lr.ph182.split.i ]
  %.lcssa133 = phi <8 x i32> [ %.lcssa133.unr, %.lr.ph182.split.i.prol.loopexit ], [ %i.dj, %.lr.ph182.split.i ]
  %i.dk = shl <8 x i32> %.lcssa134, splat (i32 5)
  br label %._crit_edge183.i

._crit_edge183.i:                                 ; preds = %._crit_edge183.i.loopexit, %._crit_edge.i
  %.1127.in.lcssa.i = phi <8 x i32> [ %i.bx, %._crit_edge.i ], [ %.lcssa133, %._crit_edge183.i.loopexit ]
  %.1121.lcssa.i = phi <8 x i32> [ %i.br, %._crit_edge.i ], [ %.lcssa135, %._crit_edge183.i.loopexit ] ; 2 uses
  %.lcssa144.i = phi <8 x i32> [ zeroinitializer, %._crit_edge.i ], [ %i.dk, %._crit_edge183.i.loopexit ]
  %.3111.lcssa.i = phi ptr [ %i.bb, %._crit_edge.i ], [ %.lcssa137, %._crit_edge183.i.loopexit ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %i.bi, %._crit_edge.i ], [ %.lcssa136, %._crit_edge183.i.loopexit ] ; 2 uses
  %i.dl = add <8 x i32> %.lcssa144.i, %.1127.in.lcssa.i ; 2 uses
  %i.dm = shufflevector <8 x i32> %.1121.lcssa.i, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dn = shufflevector <8 x i32> %.1121.lcssa.i, <8 x i32> poison, <4 x i32> <i32 4, i32 6, i32 4, i32 6>
  %i.do = add <4 x i32> %i.dm, %i.dn              ; 2 uses
  %i.dp = shufflevector <8 x i32> %i.dl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <8 x i32> %i.dl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = add <4 x i32> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dt = add <4 x i32> %i.dr, %i.ds              ; 2 uses
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> %i.do, <2 x i32> <i32 1, i32 5>
  %i.dv = shufflevector <4 x i32> %i.dt, <4 x i32> %i.do, <2 x i32> <i32 0, i32 4>
  %i.dw = add <2 x i32> %i.du, %i.dv
  %i.dx = urem <2 x i32> %i.dw, splat (i32 65521) ; 3 uses
  %14 = icmp ugt i64 %i.as, 31
  %i.dy = extractelement <2 x i32> %i.dx, i64 0   ; 2 uses
  %15 = extractelement <2 x i32> %i.dx, i64 1     ; 2 uses
  br i1 %14, label %.preheader138.i, label %bb.g, !llvm.loop !2

bb.g:                                             ; preds = %._crit_edge183.i
  %i.dz = shl nuw i32 %i.dy, 16
  %i.ea = or disjoint i32 %i.dz, %15              ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %bb.d

adler32_fold_copy_impl.exit:                      ; preds = %bb.g, %bb.a, %bb.b, %adler32_copy_len_16.exit.i, %bb.f
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.al, %adler32_copy_len_16.exit.i ], [ %i.an, %bb.f ], [ %i.ea, %bb.g ]
  ret i32 %.1.i
}

declare i32 @adler32_fold_copy_sse42(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @adler32_ssse3(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !13}
end_hunk_0
