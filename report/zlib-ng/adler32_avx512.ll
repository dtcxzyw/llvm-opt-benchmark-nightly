Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/adler32_avx512?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_fold_copy_avx512(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %adler32_fold_copy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %adler32_fold_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %3, 64
  br i1 %i.c, label %._crit_edge107.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %4 = and i32 %0, 65535
  %5 = lshr i32 %0, 16
  br label %.lr.ph.i

._crit_edge107.i:                                 ; preds = %bb.d, %bb.c
  %.065.lcssa.i = phi i64 [ %3, %bb.c ], [ %i.bx, %bb.d ] ; 2 uses
  %.062.lcssa.i = phi ptr [ %2, %bb.c ], [ %.lcssa35, %bb.d ] ; 2 uses
  %.057.lcssa.i = phi ptr [ %1, %bb.c ], [ %.lcssa36, %bb.d ]
  %.056.lcssa.i = phi i32 [ %0, %bb.c ], [ %i.ct, %bb.d ]
  %i.d = sub nuw nsw i64 64, %.065.lcssa.i
  %i.e = lshr i64 -1, %i.d
  %i.f = bitcast i64 %i.e to <64 x i1>            ; 2 uses
  %i.g = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.062.lcssa.i, <64 x i1> %i.f, <64 x i8> zeroinitializer)
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.g, ptr align 1 %.057.lcssa.i, <64 x i1> %i.f)
  %i.h = tail call i32 @adler32_avx2(i32 noundef %.056.lcssa.i, ptr noundef nonnull %.062.lcssa.i, i64 noundef %.065.lcssa.i) #6
  br label %adler32_fold_copy_impl.exit

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.158101.i = phi ptr [ %1, %.preheader.lr.ph.i ], [ %.lcssa36, %._crit_edge.i ] ; 2 uses
  %.163100.i = phi ptr [ %2, %.preheader.lr.ph.i ], [ %.lcssa35, %._crit_edge.i ] ; 2 uses
  %.16699.i = phi i64 [ %3, %.preheader.lr.ph.i ], [ %i.bx, %._crit_edge.i ] ; 2 uses
  %.16898.i = phi i32 [ %4, %.preheader.lr.ph.i ], [ %8, %._crit_edge.i ]
  %.17297.i = phi i32 [ %5, %.preheader.lr.ph.i ], [ %9, %._crit_edge.i ]
  %6 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16898.i, i64 0
  %7 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.17297.i, i64 0
  %i.i = tail call i64 @llvm.umin.i64(i64 %.16699.i, i64 5552) ; 2 uses
  %i.j = and i64 %i.i, 8128                       ; 3 uses
  %i.k = shufflevector <4 x i32> %6, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.l = shufflevector <4 x i32> %7, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.m = add nsw i64 %i.i, -64                    ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = add nuw nsw i64 %i.n, 1
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.i, %.lr.ph.split.i.prol
  %.288.i.prol = phi ptr [ %i.r, %.lr.ph.split.i.prol ], [ %.158101.i, %.lr.ph.i ] ; 2 uses
  %.05987.i.prol = phi <16 x i32> [ %i.ab, %.lr.ph.split.i.prol ], [ %i.l, %.lr.ph.i ]
  %.06086.i.prol = phi <16 x i32> [ %i.y, %.lr.ph.split.i.prol ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %.06185.i.prol = phi i64 [ %i.t, %.lr.ph.split.i.prol ], [ %i.j, %.lr.ph.i ]
  %.26484.i.prol = phi ptr [ %i.s, %.lr.ph.split.i.prol ], [ %.163100.i, %.lr.ph.i ] ; 2 uses
  %i.p = phi <16 x i32> [ %i.z, %.lr.ph.split.i.prol ], [ zeroinitializer, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.i ]
  %i.q = load <8 x i64>, ptr %.26484.i.prol, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.q, ptr %.288.i.prol, align 1, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %.288.i.prol, i64 64 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.26484.i.prol, i64 64 ; 3 uses
  %i.t = add i64 %.06185.i.prol, -64              ; 2 uses
  %i.u = bitcast <8 x i64> %i.q to <64 x i8>      ; 2 uses
  %i.v = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.u, <64 x i8> zeroinitializer)
  %i.w = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.u, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.x = bitcast <8 x i64> %i.v to <16 x i32>
  %i.y = add <16 x i32> %.06086.i.prol, %i.x      ; 3 uses
  %i.z = add <16 x i32> %i.p, %.06086.i.prol      ; 3 uses
  %i.aa = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.w, <32 x i16> splat (i16 1))
  %i.ab = add <16 x i32> %i.aa, %.05987.i.prol    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !13

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.i
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.r, %.lr.ph.split.i.prol ]
  %.lcssa35.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.s, %.lr.ph.split.i.prol ]
  %.lcssa34.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.y, %.lr.ph.split.i.prol ]
  %.lcssa33.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.z, %.lr.ph.split.i.prol ]
  %.lcssa.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.ab, %.lr.ph.split.i.prol ]
  %.288.i.unr = phi ptr [ %.158101.i, %.lr.ph.i ], [ %i.r, %.lr.ph.split.i.prol ]
  %.05987.i.unr = phi <16 x i32> [ %i.l, %.lr.ph.i ], [ %i.ab, %.lr.ph.split.i.prol ]
  %.06086.i.unr = phi <16 x i32> [ %i.k, %.lr.ph.i ], [ %i.y, %.lr.ph.split.i.prol ]
  %.06185.i.unr = phi i64 [ %i.j, %.lr.ph.i ], [ %i.t, %.lr.ph.split.i.prol ]
  %.26484.i.unr = phi ptr [ %.163100.i, %.lr.ph.i ], [ %i.s, %.lr.ph.split.i.prol ]
  %.unr = phi <16 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.z, %.lr.ph.split.i.prol ]
  %i.ac = icmp ult i64 %i.m, 192
  br i1 %i.ac, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.288.i = phi ptr [ %i.bm, %.lr.ph.split.i ], [ %.288.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 5 uses
  %.05987.i = phi <16 x i32> [ %i.bw, %.lr.ph.split.i ], [ %.05987.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.06086.i = phi <16 x i32> [ %i.bt, %.lr.ph.split.i ], [ %.06086.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 2 uses
  %.06185.i = phi i64 [ %i.bo, %.lr.ph.split.i ], [ %.06185.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.26484.i = phi ptr [ %i.bn, %.lr.ph.split.i ], [ %.26484.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 5 uses
  %i.ad = phi <16 x i32> [ %i.bu, %.lr.ph.split.i ], [ %.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.ae = load <8 x i64>, ptr %.26484.i, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.ae, ptr %.288.i, align 1, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %.288.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.26484.i, i64 64
  %i.ah = bitcast <8 x i64> %i.ae to <64 x i8>    ; 2 uses
  %i.ai = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.ah, <64 x i8> zeroinitializer)
  %i.aj = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ah, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ak = bitcast <8 x i64> %i.ai to <16 x i32>
  %i.al = add <16 x i32> %.06086.i, %i.ak         ; 2 uses
  %i.am = add <16 x i32> %i.ad, %.06086.i
  %i.an = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aj, <32 x i16> splat (i16 1))
  %i.ao = add <16 x i32> %i.an, %.05987.i
  %i.ap = load <8 x i64>, ptr %i.ag, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.ap, ptr %i.af, align 1, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %.288.i, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %.26484.i, i64 128
  %i.as = bitcast <8 x i64> %i.ap to <64 x i8>    ; 2 uses
  %i.at = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.as, <64 x i8> zeroinitializer)
  %i.au = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.as, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.av = bitcast <8 x i64> %i.at to <16 x i32>
  %i.aw = add <16 x i32> %i.al, %i.av             ; 2 uses
  %i.ax = add <16 x i32> %i.am, %i.al
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.au, <32 x i16> splat (i16 1))
  %i.az = add <16 x i32> %i.ay, %i.ao
  %i.ba = load <8 x i64>, ptr %i.ar, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.ba, ptr %i.aq, align 1, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.288.i, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %.26484.i, i64 192
  %i.bd = bitcast <8 x i64> %i.ba to <64 x i8>    ; 2 uses
  %i.be = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.bd, <64 x i8> zeroinitializer)
  %i.bf = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.bd, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bg = bitcast <8 x i64> %i.be to <16 x i32>
  %i.bh = add <16 x i32> %i.aw, %i.bg             ; 2 uses
  %i.bi = add <16 x i32> %i.ax, %i.aw
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bf, <32 x i16> splat (i16 1))
  %i.bk = add <16 x i32> %i.bj, %i.az
  %i.bl = load <8 x i64>, ptr %i.bc, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.bl, ptr %i.bb, align 1, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.288.i, i64 256 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.26484.i, i64 256 ; 2 uses
  %i.bo = add i64 %.06185.i, -256                 ; 2 uses
  %i.bp = bitcast <8 x i64> %i.bl to <64 x i8>    ; 2 uses
  %i.bq = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.bp, <64 x i8> zeroinitializer)
  %i.br = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.bp, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bs = bitcast <8 x i64> %i.bq to <16 x i32>
  %i.bt = add <16 x i32> %i.bh, %i.bs             ; 2 uses
  %i.bu = add <16 x i32> %i.bi, %i.bh             ; 2 uses
  %i.bv = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.br, <32 x i16> splat (i16 1))
  %i.bw = add <16 x i32> %i.bv, %i.bk             ; 2 uses
  %.not75.i.3 = icmp eq i64 %i.bo, 0
  br i1 %.not75.i.3, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.i.prol.loopexit
  %.lcssa36 = phi ptr [ %.lcssa36.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.bm, %.lr.ph.split.i ] ; 2 uses
  %.lcssa35 = phi ptr [ %.lcssa35.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.bn, %.lr.ph.split.i ] ; 2 uses
  %.lcssa34 = phi <16 x i32> [ %.lcssa34.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.bt, %.lr.ph.split.i ] ; 2 uses
  %.lcssa33 = phi <16 x i32> [ %.lcssa33.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.bu, %.lr.ph.split.i ]
  %.lcssa = phi <16 x i32> [ %.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.bw, %.lr.ph.split.i ]
  %i.bx = sub i64 %.16699.i, %i.j                 ; 4 uses
  %i.by = shl <16 x i32> %.lcssa33, splat (i32 6)
  %i.bz = add <16 x i32> %.lcssa, %i.by           ; 2 uses
  %i.ca = shufflevector <16 x i32> %.lcssa34, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.cb = shufflevector <16 x i32> %.lcssa34, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cc = add <4 x i32> %i.ca, %i.cb              ; 4 uses
  %i.cd = shufflevector <16 x i32> %i.bz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ce = shufflevector <16 x i32> %i.bz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = add <8 x i32> %i.cd, %i.ce              ; 2 uses
  %i.cg = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ch = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ci = add <4 x i32> %i.cg, %i.ch              ; 4 uses
  %i.cj = shufflevector <4 x i32> %i.cc, <4 x i32> %i.ci, <2 x i32> <i32 1, i32 5>
  %i.ck = shufflevector <4 x i32> %i.cc, <4 x i32> %i.ci, <2 x i32> <i32 3, i32 7>
  %i.cl = add <2 x i32> %i.cj, %i.ck
  %i.cm = shufflevector <4 x i32> %i.cc, <4 x i32> %i.ci, <2 x i32> <i32 0, i32 4>
  %i.cn = shufflevector <4 x i32> %i.cc, <4 x i32> %i.ci, <2 x i32> <i32 2, i32 6>
  %i.co = add <2 x i32> %i.cm, %i.cn
  %i.cp = add <2 x i32> %i.cl, %i.co
  %i.cq = urem <2 x i32> %i.cp, splat (i32 65521) ; 2 uses
  %i.cr = icmp ugt i64 %i.bx, 63
  %8 = extractelement <2 x i32> %i.cq, i64 0      ; 2 uses
  %9 = extractelement <2 x i32> %i.cq, i64 1      ; 2 uses
  br i1 %i.cr, label %.lr.ph.i, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %._crit_edge.i
  %i.cs = shl nuw i32 %9, 16
  %i.ct = or disjoint i32 %i.cs, %8               ; 2 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %._crit_edge107.i

adler32_fold_copy_impl.exit:                      ; preds = %bb.a, %bb.b, %._crit_edge107.i, %bb.d
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.h, %._crit_edge107.i ], [ %i.ct, %bb.d ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @adler32_avx512(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %adler32_fold_copy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %adler32_fold_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %2, 64
  br i1 %i.c, label %._crit_edge107.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %3 = and i32 %0, 65535
  %4 = lshr i32 %0, 16
  br label %.lr.ph.i

._crit_edge107.i:                                 ; preds = %bb.d, %bb.c
  %.065.lcssa.i = phi i64 [ %2, %bb.c ], [ %i.bj, %bb.d ]
  %.062.lcssa.i = phi ptr [ %1, %bb.c ], [ %scevgep.i, %bb.d ]
  %.056.lcssa.i = phi i32 [ %0, %bb.c ], [ %i.cf, %bb.d ]
  %i.d = tail call i32 @adler32_avx2(i32 noundef %.056.lcssa.i, ptr noundef %.062.lcssa.i, i64 noundef %.065.lcssa.i) #6
  br label %adler32_fold_copy_impl.exit

.lr.ph.i:                                         ; preds = %._crit_edge.loopexit.i, %.preheader.lr.ph.i
  %.163100.i = phi ptr [ %1, %.preheader.lr.ph.i ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.16699.i = phi i64 [ %2, %.preheader.lr.ph.i ], [ %i.bj, %._crit_edge.loopexit.i ] ; 2 uses
  %.16898.i = phi i32 [ %3, %.preheader.lr.ph.i ], [ %7, %._crit_edge.loopexit.i ]
  %.17297.i = phi i32 [ %4, %.preheader.lr.ph.i ], [ %8, %._crit_edge.loopexit.i ]
  %5 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16898.i, i64 0
  %6 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.17297.i, i64 0
  %i.e = tail call i64 @llvm.umin.i64(i64 %.16699.i, i64 5552) ; 2 uses
  %i.f = and i64 %i.e, 8128                       ; 4 uses
  %i.g = shufflevector <4 x i32> %5, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.h = shufflevector <4 x i32> %6, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.i = add nsw i64 %i.e, -64                    ; 2 uses
  %i.j = lshr i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.i, %.lr.ph.split.us.i.prol
  %.05987.us.i.prol = phi <16 x i32> [ %i.v, %.lr.ph.split.us.i.prol ], [ %i.h, %.lr.ph.i ]
  %.06086.us.i.prol = phi <16 x i32> [ %i.s, %.lr.ph.split.us.i.prol ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.06185.us.i.prol = phi i64 [ %i.o, %.lr.ph.split.us.i.prol ], [ %i.f, %.lr.ph.i ]
  %.26484.us.i.prol = phi ptr [ %i.n, %.lr.ph.split.us.i.prol ], [ %.163100.i, %.lr.ph.i ] ; 2 uses
  %i.l = phi <16 x i32> [ %i.t, %.lr.ph.split.us.i.prol ], [ zeroinitializer, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.i ]
  %i.m = load <64 x i8>, ptr %.26484.us.i.prol, align 1, !tbaa !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.26484.us.i.prol, i64 64 ; 2 uses
  %i.o = add i64 %.06185.us.i.prol, -64           ; 2 uses
  %i.p = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.m, <64 x i8> zeroinitializer)
  %i.q = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.m, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.r = bitcast <8 x i64> %i.p to <16 x i32>
  %i.s = add <16 x i32> %.06086.us.i.prol, %i.r   ; 3 uses
  %i.t = add <16 x i32> %i.l, %.06086.us.i.prol   ; 3 uses
  %i.u = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.q, <32 x i16> splat (i16 1))
  %i.v = add <16 x i32> %i.u, %.05987.us.i.prol   ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !14

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.i
  %.lcssa25.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.s, %.lr.ph.split.us.i.prol ]
  %.lcssa24.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.t, %.lr.ph.split.us.i.prol ]
  %.lcssa.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.v, %.lr.ph.split.us.i.prol ]
  %.05987.us.i.unr = phi <16 x i32> [ %i.h, %.lr.ph.i ], [ %i.v, %.lr.ph.split.us.i.prol ]
  %.06086.us.i.unr = phi <16 x i32> [ %i.g, %.lr.ph.i ], [ %i.s, %.lr.ph.split.us.i.prol ]
  %.06185.us.i.unr = phi i64 [ %i.f, %.lr.ph.i ], [ %i.o, %.lr.ph.split.us.i.prol ]
  %.26484.us.i.unr = phi ptr [ %.163100.i, %.lr.ph.i ], [ %i.n, %.lr.ph.split.us.i.prol ]
  %.unr = phi <16 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.t, %.lr.ph.split.us.i.prol ]
  %i.w = icmp ult i64 %i.i, 192
  br i1 %i.w, label %._crit_edge.loopexit.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.05987.us.i = phi <16 x i32> [ %i.bi, %.lr.ph.split.us.i ], [ %.05987.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.06086.us.i = phi <16 x i32> [ %i.bf, %.lr.ph.split.us.i ], [ %.06086.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 2 uses
  %.06185.us.i = phi i64 [ %i.bb, %.lr.ph.split.us.i ], [ %.06185.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.26484.us.i = phi ptr [ %i.ba, %.lr.ph.split.us.i ], [ %.26484.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.x = phi <16 x i32> [ %i.bg, %.lr.ph.split.us.i ], [ %.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %i.y = load <64 x i8>, ptr %.26484.us.i, align 1, !tbaa !10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 64
  %i.aa = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.y, <64 x i8> zeroinitializer)
  %i.ab = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.y, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ac = bitcast <8 x i64> %i.aa to <16 x i32>
  %i.ad = add <16 x i32> %.06086.us.i, %i.ac      ; 2 uses
  %i.ae = add <16 x i32> %i.x, %.06086.us.i
  %i.af = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ab, <32 x i16> splat (i16 1))
  %i.ag = add <16 x i32> %i.af, %.05987.us.i
  %i.ah = load <64 x i8>, ptr %i.z, align 1, !tbaa !10 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 128
  %i.aj = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.ah, <64 x i8> zeroinitializer)
  %i.ak = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ah, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.al = bitcast <8 x i64> %i.aj to <16 x i32>
  %i.am = add <16 x i32> %i.ad, %i.al             ; 2 uses
  %i.an = add <16 x i32> %i.ae, %i.ad
  %i.ao = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ak, <32 x i16> splat (i16 1))
  %i.ap = add <16 x i32> %i.ao, %i.ag
  %i.aq = load <64 x i8>, ptr %i.ai, align 1, !tbaa !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 192
  %i.as = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.aq, <64 x i8> zeroinitializer)
  %i.at = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.aq, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.au = bitcast <8 x i64> %i.as to <16 x i32>
  %i.av = add <16 x i32> %i.am, %i.au             ; 2 uses
  %i.aw = add <16 x i32> %i.an, %i.am
  %i.ax = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.at, <32 x i16> splat (i16 1))
  %i.ay = add <16 x i32> %i.ax, %i.ap
  %i.az = load <64 x i8>, ptr %i.ar, align 1, !tbaa !10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 256
  %i.bb = add i64 %.06185.us.i, -256              ; 2 uses
  %i.bc = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.az, <64 x i8> zeroinitializer)
  %i.bd = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.az, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.be = bitcast <8 x i64> %i.bc to <16 x i32>
  %i.bf = add <16 x i32> %i.av, %i.be             ; 2 uses
  %i.bg = add <16 x i32> %i.aw, %i.av             ; 2 uses
  %i.bh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bd, <32 x i16> splat (i16 1))
  %i.bi = add <16 x i32> %i.bh, %i.ay             ; 2 uses
  %.not75.us.i.3 = icmp eq i64 %i.bb, 0
  br i1 %.not75.us.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.split.us.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.prol.loopexit
  %.lcssa25 = phi <16 x i32> [ %.lcssa25.unr, %.lr.ph.split.us.i.prol.loopexit ], [ %i.bf, %.lr.ph.split.us.i ] ; 2 uses
  %.lcssa24 = phi <16 x i32> [ %.lcssa24.unr, %.lr.ph.split.us.i.prol.loopexit ], [ %i.bg, %.lr.ph.split.us.i ]
  %.lcssa = phi <16 x i32> [ %.lcssa.unr, %.lr.ph.split.us.i.prol.loopexit ], [ %i.bi, %.lr.ph.split.us.i ]
  %i.bj = sub i64 %.16699.i, %i.f                 ; 4 uses
  %scevgep.i = getelementptr i8, ptr %.163100.i, i64 %i.f ; 2 uses
  %i.bk = shl <16 x i32> %.lcssa24, splat (i32 6)
  %i.bl = add <16 x i32> %.lcssa, %i.bk           ; 2 uses
  %i.bm = shufflevector <16 x i32> %.lcssa25, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.bn = shufflevector <16 x i32> %.lcssa25, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bo = add <4 x i32> %i.bm, %i.bn              ; 4 uses
  %i.bp = shufflevector <16 x i32> %i.bl, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = shufflevector <16 x i32> %i.bl, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = add <8 x i32> %i.bp, %i.bq              ; 2 uses
  %i.bs = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bt = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bu = add <4 x i32> %i.bs, %i.bt              ; 4 uses
  %i.bv = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bu, <2 x i32> <i32 1, i32 5>
  %i.bw = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bu, <2 x i32> <i32 3, i32 7>
  %i.bx = add <2 x i32> %i.bv, %i.bw
  %i.by = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bu, <2 x i32> <i32 0, i32 4>
  %i.bz = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bu, <2 x i32> <i32 2, i32 6>
  %i.ca = add <2 x i32> %i.by, %i.bz
  %i.cb = add <2 x i32> %i.bx, %i.ca
  %i.cc = urem <2 x i32> %i.cb, splat (i32 65521) ; 2 uses
  %i.cd = icmp ugt i64 %i.bj, 63
  %7 = extractelement <2 x i32> %i.cc, i64 0      ; 2 uses
  %8 = extractelement <2 x i32> %i.cc, i64 1      ; 2 uses
  br i1 %i.cd, label %.lr.ph.i, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %._crit_edge.loopexit.i
  %i.ce = shl nuw i32 %8, 16
  %i.cf = or disjoint i32 %i.ce, %7               ; 2 uses
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %._crit_edge107.i

adler32_fold_copy_impl.exit:                      ; preds = %bb.a, %bb.b, %._crit_edge107.i, %bb.d
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.d, %._crit_edge107.i ], [ %i.cf, %bb.d ]
  ret i32 %.1.i
}

declare i32 @adler32_avx2(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <64 x i8> @llvm.masked.load.v64i8.p0(ptr captures(none), <64 x i1>, <64 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v64i8.p0(<64 x i8>, ptr captures(none), <64 x i1>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8>, <64 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512dq,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="cascadelake" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
end_hunk_0
