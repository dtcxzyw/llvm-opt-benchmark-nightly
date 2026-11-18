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
  %i.d = and i32 %0, 65535
  %i.e = lshr i32 %0, 16
  br label %.lr.ph.i

._crit_edge107.i:                                 ; preds = %bb.d, %bb.c
  %.065.lcssa.i = phi i64 [ %3, %bb.c ], [ %i.cb, %bb.d ] ; 2 uses
  %.062.lcssa.i = phi ptr [ %2, %bb.c ], [ %.lcssa35, %bb.d ] ; 2 uses
  %.057.lcssa.i = phi ptr [ %1, %bb.c ], [ %.lcssa36, %bb.d ]
  %.056.lcssa.i = phi i32 [ %0, %bb.c ], [ %i.cz, %bb.d ]
  %i.f = sub nuw nsw i64 64, %.065.lcssa.i
  %i.g = lshr i64 -1, %i.f
  %i.h = bitcast i64 %i.g to <64 x i1>            ; 2 uses
  %i.i = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr nonnull align 1 %.062.lcssa.i, <64 x i1> %i.h, <64 x i8> zeroinitializer)
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.i, ptr align 1 %.057.lcssa.i, <64 x i1> %i.h)
  %i.j = tail call i32 @adler32_avx2(i32 noundef %.056.lcssa.i, ptr noundef nonnull %.062.lcssa.i, i64 noundef %.065.lcssa.i) #6
  br label %adler32_fold_copy_impl.exit

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.158101.i = phi ptr [ %1, %.preheader.lr.ph.i ], [ %.lcssa36, %._crit_edge.i ] ; 2 uses
  %.163100.i = phi ptr [ %2, %.preheader.lr.ph.i ], [ %.lcssa35, %._crit_edge.i ] ; 2 uses
  %.16699.i = phi i64 [ %3, %.preheader.lr.ph.i ], [ %i.cb, %._crit_edge.i ] ; 2 uses
  %.16898.i = phi i32 [ %i.d, %.preheader.lr.ph.i ], [ %i.cw, %._crit_edge.i ]
  %.17297.i = phi i32 [ %i.e, %.preheader.lr.ph.i ], [ %i.cx, %._crit_edge.i ]
  %i.k = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16898.i, i64 0
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.17297.i, i64 0
  %i.m = tail call i64 @llvm.umin.i64(i64 %.16699.i, i64 5552) ; 2 uses
  %i.n = and i64 %i.m, 8128                       ; 3 uses
  %i.o = shufflevector <4 x i32> %i.k, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.p = shufflevector <4 x i32> %i.l, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.q = add nsw i64 %i.m, -64                    ; 2 uses
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.i, %.lr.ph.split.i.prol
  %.288.i.prol = phi ptr [ %i.v, %.lr.ph.split.i.prol ], [ %.158101.i, %.lr.ph.i ] ; 2 uses
  %.05987.i.prol = phi <16 x i32> [ %i.af, %.lr.ph.split.i.prol ], [ %i.p, %.lr.ph.i ]
  %.06086.i.prol = phi <16 x i32> [ %i.ac, %.lr.ph.split.i.prol ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.06185.i.prol = phi i64 [ %i.x, %.lr.ph.split.i.prol ], [ %i.n, %.lr.ph.i ]
  %.26484.i.prol = phi ptr [ %i.w, %.lr.ph.split.i.prol ], [ %.163100.i, %.lr.ph.i ] ; 2 uses
  %i.t = phi <16 x i32> [ %i.ad, %.lr.ph.split.i.prol ], [ zeroinitializer, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.i ]
  %i.u = load <8 x i64>, ptr %.26484.i.prol, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.u, ptr %.288.i.prol, align 1, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %.288.i.prol, i64 64 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.26484.i.prol, i64 64 ; 3 uses
  %i.x = add nsw i64 %.06185.i.prol, -64          ; 2 uses
  %i.y = bitcast <8 x i64> %i.u to <64 x i8>      ; 2 uses
  %i.z = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.y, <64 x i8> zeroinitializer)
  %i.aa = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.y, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ab = bitcast <8 x i64> %i.z to <16 x i32>
  %i.ac = add <16 x i32> %.06086.i.prol, %i.ab    ; 3 uses
  %i.ad = add <16 x i32> %i.t, %.06086.i.prol     ; 3 uses
  %i.ae = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aa, <32 x i16> splat (i16 1))
  %i.af = add <16 x i32> %i.ae, %.05987.i.prol    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !13

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.i
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.v, %.lr.ph.split.i.prol ]
  %.lcssa35.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.w, %.lr.ph.split.i.prol ]
  %.lcssa34.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.ac, %.lr.ph.split.i.prol ]
  %.lcssa33.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.ad, %.lr.ph.split.i.prol ]
  %.lcssa.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.af, %.lr.ph.split.i.prol ]
  %.288.i.unr = phi ptr [ %.158101.i, %.lr.ph.i ], [ %i.v, %.lr.ph.split.i.prol ]
  %.05987.i.unr = phi <16 x i32> [ %i.p, %.lr.ph.i ], [ %i.af, %.lr.ph.split.i.prol ]
  %.06086.i.unr = phi <16 x i32> [ %i.o, %.lr.ph.i ], [ %i.ac, %.lr.ph.split.i.prol ]
  %.06185.i.unr = phi i64 [ %i.n, %.lr.ph.i ], [ %i.x, %.lr.ph.split.i.prol ]
  %.26484.i.unr = phi ptr [ %.163100.i, %.lr.ph.i ], [ %i.w, %.lr.ph.split.i.prol ]
  %.unr = phi <16 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.ad, %.lr.ph.split.i.prol ]
  %i.ag = icmp ult i64 %i.q, 192
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.288.i = phi ptr [ %i.bq, %.lr.ph.split.i ], [ %.288.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 5 uses
  %.05987.i = phi <16 x i32> [ %i.ca, %.lr.ph.split.i ], [ %.05987.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.06086.i = phi <16 x i32> [ %i.bx, %.lr.ph.split.i ], [ %.06086.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 2 uses
  %.06185.i = phi i64 [ %i.bs, %.lr.ph.split.i ], [ %.06185.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.26484.i = phi ptr [ %i.br, %.lr.ph.split.i ], [ %.26484.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 5 uses
  %i.ah = phi <16 x i32> [ %i.by, %.lr.ph.split.i ], [ %.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.ai = load <8 x i64>, ptr %.26484.i, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.ai, ptr %.288.i, align 1, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %.288.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.26484.i, i64 64
  %i.al = bitcast <8 x i64> %i.ai to <64 x i8>    ; 2 uses
  %i.am = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.al, <64 x i8> zeroinitializer)
  %i.an = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.al, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ao = bitcast <8 x i64> %i.am to <16 x i32>
  %i.ap = add <16 x i32> %.06086.i, %i.ao         ; 2 uses
  %i.aq = add <16 x i32> %i.ah, %.06086.i
  %i.ar = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.an, <32 x i16> splat (i16 1))
  %i.as = add <16 x i32> %i.ar, %.05987.i
  %i.at = load <8 x i64>, ptr %i.ak, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.at, ptr %i.aj, align 1, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %.288.i, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %.26484.i, i64 128
  %i.aw = bitcast <8 x i64> %i.at to <64 x i8>    ; 2 uses
  %i.ax = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.aw, <64 x i8> zeroinitializer)
  %i.ay = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.aw, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.az = bitcast <8 x i64> %i.ax to <16 x i32>
  %i.ba = add <16 x i32> %i.ap, %i.az             ; 2 uses
  %i.bb = add <16 x i32> %i.aq, %i.ap
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ay, <32 x i16> splat (i16 1))
  %i.bd = add <16 x i32> %i.bc, %i.as
  %i.be = load <8 x i64>, ptr %i.av, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.be, ptr %i.au, align 1, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %.288.i, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %.26484.i, i64 192
  %i.bh = bitcast <8 x i64> %i.be to <64 x i8>    ; 2 uses
  %i.bi = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.bh, <64 x i8> zeroinitializer)
  %i.bj = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.bh, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bk = bitcast <8 x i64> %i.bi to <16 x i32>
  %i.bl = add <16 x i32> %i.ba, %i.bk             ; 2 uses
  %i.bm = add <16 x i32> %i.bb, %i.ba
  %i.bn = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bj, <32 x i16> splat (i16 1))
  %i.bo = add <16 x i32> %i.bn, %i.bd
  %i.bp = load <8 x i64>, ptr %i.bg, align 1, !tbaa !10 ; 2 uses
  store <8 x i64> %i.bp, ptr %i.bf, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.288.i, i64 256 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.26484.i, i64 256 ; 2 uses
  %i.bs = add nsw i64 %.06185.i, -256             ; 2 uses
  %i.bt = bitcast <8 x i64> %i.bp to <64 x i8>    ; 2 uses
  %i.bu = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.bt, <64 x i8> zeroinitializer)
  %i.bv = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.bt, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bw = bitcast <8 x i64> %i.bu to <16 x i32>
  %i.bx = add <16 x i32> %i.bl, %i.bw             ; 2 uses
  %i.by = add <16 x i32> %i.bm, %i.bl             ; 2 uses
  %i.bz = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bv, <32 x i16> splat (i16 1))
  %i.ca = add <16 x i32> %i.bz, %i.bo             ; 2 uses
  %.not75.i.3 = icmp eq i64 %i.bs, 0
  br i1 %.not75.i.3, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.i.prol.loopexit
  %.lcssa36 = phi ptr [ %.lcssa36.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.bq, %.lr.ph.split.i ] ; 2 uses
  %.lcssa35 = phi ptr [ %.lcssa35.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.br, %.lr.ph.split.i ] ; 2 uses
  %.lcssa34 = phi <16 x i32> [ %.lcssa34.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.bx, %.lr.ph.split.i ] ; 2 uses
  %.lcssa33 = phi <16 x i32> [ %.lcssa33.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.by, %.lr.ph.split.i ]
  %.lcssa = phi <16 x i32> [ %.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.ca, %.lr.ph.split.i ]
  %i.cb = sub i64 %.16699.i, %i.n                 ; 4 uses
  %i.cc = shl <16 x i32> %.lcssa33, splat (i32 6)
  %i.cd = add <16 x i32> %.lcssa, %i.cc           ; 2 uses
  %i.ce = shufflevector <16 x i32> %.lcssa34, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.cf = shufflevector <16 x i32> %.lcssa34, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cg = add <4 x i32> %i.ce, %i.cf              ; 2 uses
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ci = add <4 x i32> %i.cg, %i.ch              ; 2 uses
  %i.cj = shufflevector <16 x i32> %i.cd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = shufflevector <16 x i32> %i.cd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cl = add <8 x i32> %i.cj, %i.ck              ; 2 uses
  %i.cm = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cn = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = add <4 x i32> %i.cm, %i.cn              ; 2 uses
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cq = add <4 x i32> %i.co, %i.cp              ; 2 uses
  %i.cr = shufflevector <4 x i32> %i.ci, <4 x i32> %i.cq, <2 x i32> <i32 1, i32 5>
  %i.cs = shufflevector <4 x i32> %i.ci, <4 x i32> %i.cq, <2 x i32> <i32 0, i32 4>
  %i.ct = add <2 x i32> %i.cr, %i.cs
  %i.cu = urem <2 x i32> %i.ct, splat (i32 65521) ; 2 uses
  %i.cv = icmp ugt i64 %i.cb, 63
  %i.cw = extractelement <2 x i32> %i.cu, i64 0   ; 2 uses
  %i.cx = extractelement <2 x i32> %i.cu, i64 1   ; 2 uses
  br i1 %i.cv, label %.lr.ph.i, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %._crit_edge.i
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = or disjoint i32 %i.cy, %i.cw            ; 2 uses
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %._crit_edge107.i

adler32_fold_copy_impl.exit:                      ; preds = %bb.a, %bb.b, %._crit_edge107.i, %bb.d
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.j, %._crit_edge107.i ], [ %i.cz, %bb.d ]
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
  %i.d = and i32 %0, 65535
  %i.e = lshr i32 %0, 16
  br label %.lr.ph.i

._crit_edge107.i:                                 ; preds = %bb.d, %bb.c
  %.065.lcssa.i = phi i64 [ %2, %bb.c ], [ %i.bn, %bb.d ]
  %.062.lcssa.i = phi ptr [ %1, %bb.c ], [ %scevgep.i, %bb.d ]
  %.056.lcssa.i = phi i32 [ %0, %bb.c ], [ %i.cl, %bb.d ]
  %i.f = tail call i32 @adler32_avx2(i32 noundef %.056.lcssa.i, ptr noundef %.062.lcssa.i, i64 noundef %.065.lcssa.i) #6
  br label %adler32_fold_copy_impl.exit

.lr.ph.i:                                         ; preds = %._crit_edge.loopexit.i, %.preheader.lr.ph.i
  %.163100.i = phi ptr [ %1, %.preheader.lr.ph.i ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.16699.i = phi i64 [ %2, %.preheader.lr.ph.i ], [ %i.bn, %._crit_edge.loopexit.i ] ; 2 uses
  %.16898.i = phi i32 [ %i.d, %.preheader.lr.ph.i ], [ %i.ci, %._crit_edge.loopexit.i ]
  %.17297.i = phi i32 [ %i.e, %.preheader.lr.ph.i ], [ %i.cj, %._crit_edge.loopexit.i ]
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16898.i, i64 0
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.17297.i, i64 0
  %i.i = tail call i64 @llvm.umin.i64(i64 %.16699.i, i64 5552) ; 2 uses
  %i.j = and i64 %i.i, 8128                       ; 4 uses
  %i.k = shufflevector <4 x i32> %i.g, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.l = shufflevector <4 x i32> %i.h, <4 x i32> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.m = add nsw i64 %i.i, -64                    ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = add nuw nsw i64 %i.n, 1
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.i, %.lr.ph.split.us.i.prol
  %.05987.us.i.prol = phi <16 x i32> [ %i.z, %.lr.ph.split.us.i.prol ], [ %i.l, %.lr.ph.i ]
  %.06086.us.i.prol = phi <16 x i32> [ %i.w, %.lr.ph.split.us.i.prol ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %.06185.us.i.prol = phi i64 [ %i.s, %.lr.ph.split.us.i.prol ], [ %i.j, %.lr.ph.i ]
  %.26484.us.i.prol = phi ptr [ %i.r, %.lr.ph.split.us.i.prol ], [ %.163100.i, %.lr.ph.i ] ; 2 uses
  %i.p = phi <16 x i32> [ %i.x, %.lr.ph.split.us.i.prol ], [ zeroinitializer, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.i ]
  %i.q = load <64 x i8>, ptr %.26484.us.i.prol, align 1, !tbaa !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.26484.us.i.prol, i64 64 ; 2 uses
  %i.s = add nsw i64 %.06185.us.i.prol, -64       ; 2 uses
  %i.t = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.q, <64 x i8> zeroinitializer)
  %i.u = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.q, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.v = bitcast <8 x i64> %i.t to <16 x i32>
  %i.w = add <16 x i32> %.06086.us.i.prol, %i.v   ; 3 uses
  %i.x = add <16 x i32> %i.p, %.06086.us.i.prol   ; 3 uses
  %i.y = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.u, <32 x i16> splat (i16 1))
  %i.z = add <16 x i32> %i.y, %.05987.us.i.prol   ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !14

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.i
  %.lcssa25.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.w, %.lr.ph.split.us.i.prol ]
  %.lcssa24.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.x, %.lr.ph.split.us.i.prol ]
  %.lcssa.unr = phi <16 x i32> [ poison, %.lr.ph.i ], [ %i.z, %.lr.ph.split.us.i.prol ]
  %.05987.us.i.unr = phi <16 x i32> [ %i.l, %.lr.ph.i ], [ %i.z, %.lr.ph.split.us.i.prol ]
  %.06086.us.i.unr = phi <16 x i32> [ %i.k, %.lr.ph.i ], [ %i.w, %.lr.ph.split.us.i.prol ]
  %.06185.us.i.unr = phi i64 [ %i.j, %.lr.ph.i ], [ %i.s, %.lr.ph.split.us.i.prol ]
  %.26484.us.i.unr = phi ptr [ %.163100.i, %.lr.ph.i ], [ %i.r, %.lr.ph.split.us.i.prol ]
  %.unr = phi <16 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.x, %.lr.ph.split.us.i.prol ]
  %i.aa = icmp ult i64 %i.m, 192
  br i1 %i.aa, label %._crit_edge.loopexit.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.05987.us.i = phi <16 x i32> [ %i.bm, %.lr.ph.split.us.i ], [ %.05987.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.06086.us.i = phi <16 x i32> [ %i.bj, %.lr.ph.split.us.i ], [ %.06086.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 2 uses
  %.06185.us.i = phi i64 [ %i.bf, %.lr.ph.split.us.i ], [ %.06185.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.26484.us.i = phi ptr [ %i.be, %.lr.ph.split.us.i ], [ %.26484.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.ab = phi <16 x i32> [ %i.bk, %.lr.ph.split.us.i ], [ %.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %i.ac = load <64 x i8>, ptr %.26484.us.i, align 1, !tbaa !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 64
  %i.ae = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.ac, <64 x i8> zeroinitializer)
  %i.af = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.ac, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ag = bitcast <8 x i64> %i.ae to <16 x i32>
  %i.ah = add <16 x i32> %.06086.us.i, %i.ag      ; 2 uses
  %i.ai = add <16 x i32> %i.ab, %.06086.us.i
  %i.aj = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.af, <32 x i16> splat (i16 1))
  %i.ak = add <16 x i32> %i.aj, %.05987.us.i
  %i.al = load <64 x i8>, ptr %i.ad, align 1, !tbaa !10 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 128
  %i.an = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.al, <64 x i8> zeroinitializer)
  %i.ao = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.al, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ap = bitcast <8 x i64> %i.an to <16 x i32>
  %i.aq = add <16 x i32> %i.ah, %i.ap             ; 2 uses
  %i.ar = add <16 x i32> %i.ai, %i.ah
  %i.as = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ao, <32 x i16> splat (i16 1))
  %i.at = add <16 x i32> %i.as, %i.ak
  %i.au = load <64 x i8>, ptr %i.am, align 1, !tbaa !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 192
  %i.aw = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.au, <64 x i8> zeroinitializer)
  %i.ax = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.au, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ay = bitcast <8 x i64> %i.aw to <16 x i32>
  %i.az = add <16 x i32> %i.aq, %i.ay             ; 2 uses
  %i.ba = add <16 x i32> %i.ar, %i.aq
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ax, <32 x i16> splat (i16 1))
  %i.bc = add <16 x i32> %i.bb, %i.at
  %i.bd = load <64 x i8>, ptr %i.av, align 1, !tbaa !10 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.26484.us.i, i64 256
  %i.bf = add nsw i64 %.06185.us.i, -256          ; 2 uses
  %i.bg = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.bd, <64 x i8> zeroinitializer)
  %i.bh = tail call <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8> %i.bd, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.bi = bitcast <8 x i64> %i.bg to <16 x i32>
  %i.bj = add <16 x i32> %i.az, %i.bi             ; 2 uses
  %i.bk = add <16 x i32> %i.ba, %i.az             ; 2 uses
  %i.bl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bh, <32 x i16> splat (i16 1))
  %i.bm = add <16 x i32> %i.bl, %i.bc             ; 2 uses
  %.not75.us.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not75.us.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.split.us.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.prol.loopexit
  %.lcssa25 = phi <16 x i32> [ %.lcssa25.unr, %.lr.ph.split.us.i.prol.loopexit ], [ %i.bj, %.lr.ph.split.us.i ] ; 2 uses
  %.lcssa24 = phi <16 x i32> [ %.lcssa24.unr, %.lr.ph.split.us.i.prol.loopexit ], [ %i.bk, %.lr.ph.split.us.i ]
  %.lcssa = phi <16 x i32> [ %.lcssa.unr, %.lr.ph.split.us.i.prol.loopexit ], [ %i.bm, %.lr.ph.split.us.i ]
  %i.bn = sub i64 %.16699.i, %i.j                 ; 4 uses
  %scevgep.i = getelementptr i8, ptr %.163100.i, i64 %i.j ; 2 uses
  %i.bo = shl <16 x i32> %.lcssa24, splat (i32 6)
  %i.bp = add <16 x i32> %.lcssa, %i.bo           ; 2 uses
  %i.bq = shufflevector <16 x i32> %.lcssa25, <16 x i32> poison, <4 x i32> <i32 8, i32 10, i32 12, i32 14>
  %i.br = shufflevector <16 x i32> %.lcssa25, <16 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bs = add <4 x i32> %i.bq, %i.br              ; 2 uses
  %i.bt = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bu = add <4 x i32> %i.bs, %i.bt              ; 2 uses
  %i.bv = shufflevector <16 x i32> %i.bp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bw = shufflevector <16 x i32> %i.bp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = add <8 x i32> %i.bv, %i.bw              ; 2 uses
  %i.by = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bz = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ca = add <4 x i32> %i.by, %i.bz              ; 2 uses
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cc = add <4 x i32> %i.ca, %i.cb              ; 2 uses
  %i.cd = shufflevector <4 x i32> %i.bu, <4 x i32> %i.cc, <2 x i32> <i32 1, i32 5>
  %i.ce = shufflevector <4 x i32> %i.bu, <4 x i32> %i.cc, <2 x i32> <i32 0, i32 4>
  %i.cf = add <2 x i32> %i.cd, %i.ce
  %i.cg = urem <2 x i32> %i.cf, splat (i32 65521) ; 2 uses
  %i.ch = icmp ugt i64 %i.bn, 63
  %i.ci = extractelement <2 x i32> %i.cg, i64 0   ; 2 uses
  %i.cj = extractelement <2 x i32> %i.cg, i64 1   ; 2 uses
  br i1 %i.ch, label %.lr.ph.i, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %._crit_edge.loopexit.i
  %i.ck = shl nuw i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.ck, %i.ci            ; 2 uses
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %adler32_fold_copy_impl.exit, label %._crit_edge107.i

adler32_fold_copy_impl.exit:                      ; preds = %bb.a, %bb.b, %._crit_edge107.i, %bb.d
  %.1.i = phi i32 [ %0, %bb.b ], [ 1, %bb.a ], [ %i.f, %._crit_edge107.i ], [ %i.cl, %bb.d ]
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
