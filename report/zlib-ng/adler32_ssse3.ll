Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/adler32_ssse3?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, -983055) i32 @adler32_ssse3(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 16                          ; 8 uses
  %i.b = and i32 %0, 65535                        ; 8 uses
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 1, !tbaa !17
  %.0.val.fr.i = freeze i8 %.val
  %i.d = zext i8 %.0.val.fr.i to i32
  %i.e = add nuw nsw i32 %i.b, %i.d               ; 3 uses
  %.urem.i = add nsw i32 %i.e, -65521
  %.cmp.i = icmp samesign ult i32 %i.e, 65521
  %i.f = select i1 %.cmp.i, i32 %i.e, i32 %.urem.i ; 2 uses
  %i.g = add nuw nsw i32 %i.f, %i.a
  %i.h = urem i32 %i.g, 65521
  %i.i = shl nuw i32 %i.h, 16
  %i.j = add nuw nsw i32 %i.i, %i.f
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.p, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %2, 16
  br i1 %i.l, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  %.not12.i = icmp eq i64 %2, 0
  br i1 %.not12.i, label %adler32_len_16.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %xtraiter218 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.016.i.prol = phi i32 [ %i.r, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ]
  %.0915.i.prol = phi i64 [ %i.m, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %.01014.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01113.i.prol = phi i32 [ %i.q, %.lr.ph.i.prol ], [ %i.b, %.lr.ph.i.preheader ]
  %prol.iter220 = phi i64 [ %prol.iter220.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.m = add i64 %.0915.i.prol, -1                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01014.i.prol, i64 1 ; 2 uses
  %i.o = load i8, ptr %.01014.i.prol, align 1, !tbaa !17
  %i.p = zext i8 %i.o to i32
  %i.q = add i32 %.01113.i.prol, %i.p             ; 4 uses
  %i.r = add i32 %i.q, %.016.i.prol               ; 3 uses
  %prol.iter220.next = add i64 %prol.iter220, 1   ; 2 uses
  %prol.iter220.cmp.not = icmp eq i64 %prol.iter220.next, %xtraiter218
  br i1 %prol.iter220.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !8

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa202.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.016.i.unr = phi i32 [ %i.a, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.0915.i.unr = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %.01014.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.01113.i.unr = phi i32 [ %i.b, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %2, 4
  br i1 %i.s, label %adler32_len_16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i32 [ %i.an, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0915.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %.0915.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01014.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.01014.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01113.i = phi i32 [ %i.am, %.lr.ph.i ], [ %.01113.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.01014.i, i64 1
  %i.u = load i8, ptr %.01014.i, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i32
  %i.w = add i32 %.01113.i, %i.v                  ; 2 uses
  %i.x = add i32 %i.w, %.016.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01014.i, i64 2
  %i.z = load i8, ptr %i.t, align 1, !tbaa !17
  %i.aa = zext i8 %i.z to i32
  %i.ab = add i32 %i.w, %i.aa                     ; 2 uses
  %i.ac = add i32 %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %.01014.i, i64 3
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !17
  %i.af = zext i8 %i.ae to i32
  %i.ag = add i32 %i.ab, %i.af                    ; 2 uses
  %i.ah = add i32 %i.ag, %i.ac
  %i.ai = add i64 %.0915.i, -4                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01014.i, i64 4
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.al = zext i8 %i.ak to i32
  %i.am = add i32 %i.ag, %i.al                    ; 3 uses
  %i.an = add i32 %i.am, %i.ah                    ; 2 uses
  %.not.i.3 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.3, label %adler32_len_16.exit, label %.lr.ph.i, !llvm.loop !9

adler32_len_16.exit:                              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  %.011.lcssa.i = phi i32 [ %i.b, %bb.e ], [ %.lcssa202.unr, %.lr.ph.i.prol.loopexit ], [ %i.am, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.a, %bb.e ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.an, %.lr.ph.i ]
  %i.ao = urem i32 %.011.lcssa.i, 65521
  %i.ap = urem i32 %.0.lcssa.i, 65521
  %i.aq = shl nuw i32 %i.ap, 16
  %i.ar = or disjoint i32 %i.aq, %i.ao
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.as = ptrtoint ptr %1 to i64
  %i.at = and i64 %i.as, 15                       ; 5 uses
  %i.au = sub nuw nsw i64 16, %i.at               ; 4 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sub nuw nsw i64 32, %i.at
  %i.aw = icmp ult i64 %2, %i.av
  br i1 %i.aw, label %bb.h, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %i.ax = xor i64 %i.at, 15
  %xtraiter = and i64 %i.au, 3                    ; 3 uses
  %i.ay = icmp samesign ult i64 %i.ax, 3
  br i1 %i.ay, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.au, 28
  br label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.az = add nsw i64 %2, -16
  %i.ba = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0
  %i.bb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.a, i64 0
  br label %bb.m

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.0121153.epil.init = phi i32 [ %i.a, %.preheader.preheader ], [ %i.cc, %.unr-lcssa ]
  %.0126152.epil.init = phi ptr [ %1, %.preheader.preheader ], [ %i.by, %.unr-lcssa ]
  %.0129151.epil.init = phi i32 [ %i.b, %.preheader.preheader ], [ %i.cb, %.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.0121153.epil = phi i32 [ %i.bg, %.preheader.epil ], [ %.0121153.epil.init, %.preheader.epil.preheader ]
  %.0126152.epil = phi ptr [ %i.bc, %.preheader.epil ], [ %.0126152.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.0129151.epil = phi i32 [ %i.bf, %.preheader.epil ], [ %.0129151.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0126152.epil, i64 1
  %i.bd = load i8, ptr %.0126152.epil, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i32
  %i.bf = add i32 %.0129151.epil, %i.be           ; 3 uses
  %i.bg = add i32 %i.bf, %.0121153.epil           ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !10

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %.lcssa212 = phi i32 [ %i.cb, %.unr-lcssa ], [ %i.bf, %.preheader.epil ]
  %.lcssa211 = phi i32 [ %i.cc, %.unr-lcssa ], [ %i.bg, %.preheader.epil ]
  %scevgep = getelementptr i8, ptr %1, i64 %i.au
  %i.bh = sub nuw i64 %2, %i.au
  %i.bi = or disjoint i64 %i.at, 5536
  br label %bb.i

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0121153 = phi i32 [ %i.a, %.preheader.preheader.new ], [ %i.cc, %.preheader ]
  %.0126152 = phi ptr [ %1, %.preheader.preheader.new ], [ %i.by, %.preheader ] ; 5 uses
  %.0129151 = phi i32 [ %i.b, %.preheader.preheader.new ], [ %i.cb, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0126152, i64 1
  %i.bk = load i8, ptr %.0126152, align 1, !tbaa !17
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add i32 %.0129151, %i.bl                ; 2 uses
  %i.bn = add i32 %i.bm, %.0121153
  %i.bo = getelementptr inbounds nuw i8, ptr %.0126152, i64 2
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %i.bm, %i.bq                    ; 2 uses
  %i.bs = add i32 %i.br, %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %.0126152, i64 3
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %i.br, %i.bv                    ; 2 uses
  %i.bx = add i32 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %.0126152, i64 4 ; 2 uses
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add i32 %i.bw, %i.ca                    ; 4 uses
  %i.cc = add i32 %i.cb, %i.bx                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader, !llvm.loop !11

bb.i:                                             ; preds = %bb.f, %.epilog-lcssa, %bb.n
  %.1130 = phi i32 [ %8, %bb.n ], [ %.lcssa212, %.epilog-lcssa ], [ %i.b, %bb.f ] ; 4 uses
  %.1127 = phi ptr [ %.3, %bb.n ], [ %scevgep, %.epilog-lcssa ], [ %1, %bb.f ] ; 4 uses
  %.0123 = phi i64 [ %.1124, %bb.n ], [ %i.bh, %.epilog-lcssa ], [ %2, %bb.f ] ; 9 uses
  %.1122 = phi i32 [ %9, %bb.n ], [ %.lcssa211, %.epilog-lcssa ], [ %i.a, %bb.f ] ; 4 uses
  %.0106 = phi i64 [ 5552, %bb.n ], [ %i.bi, %.epilog-lcssa ], [ 5552, %bb.f ]
  %i.cd = icmp ugt i64 %.0123, 15
  br i1 %i.cd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1130, i64 0 ; 2 uses
  %i.cf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1122, i64 0 ; 2 uses
  %i.cg = tail call i64 @llvm.umin.i64(i64 %.0123, i64 %.0106)
  %i.ch = and i64 %i.cg, -16                      ; 3 uses
  %i.ci = sub i64 %.0123, %i.ch
  %i.cj = icmp ugt i64 %.0123, 31
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.0105158 = phi i64 [ %i.cq, %.lr.ph ], [ %i.ch, %bb.j ]
  %i.ck = phi <4 x i32> [ %i.dd, %.lr.ph ], [ zeroinitializer, %bb.j ]
  %.0108.in157 = phi <4 x i32> [ %i.db, %.lr.ph ], [ %i.cf, %bb.j ]
  %.0111.in156 = phi <4 x i32> [ %i.cx, %.lr.ph ], [ %i.ce, %bb.j ] ; 2 uses
  %i.cl = phi <4 x i32> [ %i.cv, %.lr.ph ], [ zeroinitializer, %bb.j ]
  %.2128155 = phi ptr [ %i.cp, %.lr.ph ], [ %.1127, %bb.j ] ; 3 uses
  %i.cm = load <16 x i8>, ptr %.2128155, align 16, !tbaa !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.2128155, i64 16
  %i.co = load <16 x i8>, ptr %i.cn, align 16, !tbaa !17 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2128155, i64 32 ; 2 uses
  %i.cq = add i64 %.0105158, -32                  ; 3 uses
  %i.cr = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cm, <16 x i8> zeroinitializer)
  %i.cs = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.co, <16 x i8> zeroinitializer)
  %i.ct = bitcast <2 x i64> %i.cr to <4 x i32>
  %i.cu = add <4 x i32> %.0111.in156, %i.ct
  %i.cv = add <4 x i32> %.0111.in156, %i.cl       ; 2 uses
  %i.cw = bitcast <2 x i64> %i.cs to <4 x i32>
  %i.cx = add <4 x i32> %i.cu, %i.cw              ; 2 uses
  %i.cy = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.cm, <16 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17>)
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> splat (i16 1))
  %i.da = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.co, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.db = add <4 x i32> %i.cz, %.0108.in157       ; 2 uses
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.da, <8 x i16> splat (i16 1))
  %i.dd = add <4 x i32> %i.dc, %i.ck              ; 2 uses
  %i.de = icmp ugt i64 %i.cq, 31
  br i1 %i.de, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.df = shl <4 x i32> %i.cv, splat (i32 5)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.2128.lcssa = phi ptr [ %.1127, %bb.j ], [ %i.cp, %._crit_edge.loopexit ]
  %.lcssa148 = phi <4 x i32> [ zeroinitializer, %bb.j ], [ %i.df, %._crit_edge.loopexit ]
  %.0111.in.lcssa = phi <4 x i32> [ %i.ce, %bb.j ], [ %i.cx, %._crit_edge.loopexit ]
  %.0108.in.lcssa = phi <4 x i32> [ %i.cf, %bb.j ], [ %i.db, %._crit_edge.loopexit ]
  %.lcssa147 = phi <4 x i32> [ zeroinitializer, %bb.j ], [ %i.dd, %._crit_edge.loopexit ]
  %.0105.lcssa = phi i64 [ %i.ch, %bb.j ], [ %i.cq, %._crit_edge.loopexit ]
  %i.dg = add <4 x i32> %.0108.in.lcssa, %.lcssa148
  %i.dh = add <4 x i32> %i.dg, %.lcssa147
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %._crit_edge
  %.3 = phi ptr [ %.4, %bb.m ], [ %.2128.lcssa, %._crit_edge ] ; 2 uses
  %.1124 = phi i64 [ %.2125, %bb.m ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.di = phi <4 x i32> [ %i.dp, %bb.m ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.1112.in = phi <4 x i32> [ %i.do, %bb.m ], [ %.0111.in.lcssa, %._crit_edge ] ; 3 uses
  %.1109.in = phi <4 x i32> [ %i.ds, %bb.m ], [ %i.dh, %._crit_edge ] ; 2 uses
  %.1 = phi i64 [ %.2, %bb.m ], [ %.0105.lcssa, %._crit_edge ] ; 2 uses
  %i.dj = icmp ugt i64 %.1, 15
  br i1 %i.dj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dk = add nsw i64 %.1, -16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.pn = phi ptr [ %1, %bb.h ], [ %.3, %bb.l ]    ; 2 uses
  %.2125 = phi i64 [ %i.az, %bb.h ], [ %.1124, %bb.l ]
  %i.dl = phi <4 x i32> [ zeroinitializer, %bb.h ], [ %i.di, %bb.l ]
  %.2113 = phi <4 x i32> [ %i.ba, %bb.h ], [ %.1112.in, %bb.l ] ; 2 uses
  %.2110.in = phi <4 x i32> [ %i.bb, %bb.h ], [ %.1109.in, %bb.l ]
  %.2 = phi i64 [ 0, %bb.h ], [ %i.dk, %bb.l ]
  %.0120145 = load <16 x i8>, ptr %.pn, align 1, !tbaa !17 ; 2 uses
  %.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.dm = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.0120145, <16 x i8> zeroinitializer)
  %i.dn = bitcast <2 x i64> %i.dm to <4 x i32>
  %i.do = add <4 x i32> %.2113, %i.dn
  %i.dp = add <4 x i32> %.2113, %i.dl
  %i.dq = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %.0120145, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.dr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dq, <8 x i16> splat (i16 1))
  %i.ds = add <4 x i32> %i.dr, %.2110.in
  br label %bb.k, !llvm.loop !13

bb.n:                                             ; preds = %bb.k
  %i.dt = shl <4 x i32> %i.di, splat (i32 4)
  %i.du = add <4 x i32> %.1109.in, %i.dt          ; 2 uses
  %3 = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dv = add <4 x i32> %i.du, %3                 ; 2 uses
  %4 = shufflevector <4 x i32> %.1112.in, <4 x i32> %i.dv, <2 x i32> <i32 0, i32 5>
  %5 = shufflevector <4 x i32> %.1112.in, <4 x i32> %i.dv, <2 x i32> <i32 2, i32 4>
  %6 = add <2 x i32> %4, %5
  %7 = urem <2 x i32> %6, splat (i32 65521)       ; 2 uses
  %8 = extractelement <2 x i32> %7, i64 0
  %9 = extractelement <2 x i32> %7, i64 1
  br label %bb.i, !llvm.loop !14

bb.o:                                             ; preds = %bb.i
  %.not12.i135 = icmp eq i64 %.0123, 0
  br i1 %.not12.i135, label %adler32_len_16.exit144, label %.lr.ph.i136.preheader

.lr.ph.i136.preheader:                            ; preds = %bb.o
  %xtraiter216 = and i64 %.0123, 3                ; 2 uses
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.lr.ph.i136.prol.loopexit, label %.lr.ph.i136.prol

.lr.ph.i136.prol:                                 ; preds = %.lr.ph.i136.preheader, %.lr.ph.i136.prol
  %.016.i137.prol = phi i32 [ %i.eb, %.lr.ph.i136.prol ], [ %.1122, %.lr.ph.i136.preheader ]
  %.0915.i138.prol = phi i64 [ %i.dw, %.lr.ph.i136.prol ], [ %.0123, %.lr.ph.i136.preheader ]
  %.01014.i139.prol = phi ptr [ %i.dx, %.lr.ph.i136.prol ], [ %.1127, %.lr.ph.i136.preheader ] ; 2 uses
  %.01113.i140.prol = phi i32 [ %i.ea, %.lr.ph.i136.prol ], [ %.1130, %.lr.ph.i136.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i136.prol ], [ 0, %.lr.ph.i136.preheader ]
  %i.dw = add i64 %.0915.i138.prol, -1            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.01014.i139.prol, i64 1 ; 2 uses
  %i.dy = load i8, ptr %.01014.i139.prol, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add i32 %.01113.i140.prol, %i.dz        ; 4 uses
  %i.eb = add i32 %i.ea, %.016.i137.prol          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter216
  br i1 %prol.iter.cmp.not, label %.lr.ph.i136.prol.loopexit, label %.lr.ph.i136.prol, !llvm.loop !15

.lr.ph.i136.prol.loopexit:                        ; preds = %.lr.ph.i136.prol, %.lr.ph.i136.preheader
  %.lcssa210.unr = phi i32 [ poison, %.lr.ph.i136.preheader ], [ %i.ea, %.lr.ph.i136.prol ]
  %.lcssa209.unr = phi i32 [ poison, %.lr.ph.i136.preheader ], [ %i.eb, %.lr.ph.i136.prol ]
  %.016.i137.unr = phi i32 [ %.1122, %.lr.ph.i136.preheader ], [ %i.eb, %.lr.ph.i136.prol ]
  %.0915.i138.unr = phi i64 [ %.0123, %.lr.ph.i136.preheader ], [ %i.dw, %.lr.ph.i136.prol ]
  %.01014.i139.unr = phi ptr [ %.1127, %.lr.ph.i136.preheader ], [ %i.dx, %.lr.ph.i136.prol ]
  %.01113.i140.unr = phi i32 [ %.1130, %.lr.ph.i136.preheader ], [ %i.ea, %.lr.ph.i136.prol ]
  %i.ec = icmp ult i64 %.0123, 4
  br i1 %i.ec, label %adler32_len_16.exit144, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %.lr.ph.i136.prol.loopexit, %.lr.ph.i136
  %.016.i137 = phi i32 [ %i.ex, %.lr.ph.i136 ], [ %.016.i137.unr, %.lr.ph.i136.prol.loopexit ]
  %.0915.i138 = phi i64 [ %i.es, %.lr.ph.i136 ], [ %.0915.i138.unr, %.lr.ph.i136.prol.loopexit ]
  %.01014.i139 = phi ptr [ %i.et, %.lr.ph.i136 ], [ %.01014.i139.unr, %.lr.ph.i136.prol.loopexit ] ; 5 uses
  %.01113.i140 = phi i32 [ %i.ew, %.lr.ph.i136 ], [ %.01113.i140.unr, %.lr.ph.i136.prol.loopexit ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.01014.i139, i64 1
  %i.ee = load i8, ptr %.01014.i139, align 1, !tbaa !17
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add i32 %.01113.i140, %i.ef             ; 2 uses
  %i.eh = add i32 %i.eg, %.016.i137
  %i.ei = getelementptr inbounds nuw i8, ptr %.01014.i139, i64 2
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !17
  %i.ek = zext i8 %i.ej to i32
  %i.el = add i32 %i.eg, %i.ek                    ; 2 uses
  %i.em = add i32 %i.el, %i.eh
  %i.en = getelementptr inbounds nuw i8, ptr %.01014.i139, i64 3
  %i.eo = load i8, ptr %i.ei, align 1, !tbaa !17
  %i.ep = zext i8 %i.eo to i32
  %i.eq = add i32 %i.el, %i.ep                    ; 2 uses
  %i.er = add i32 %i.eq, %i.em
  %i.es = add i64 %.0915.i138, -4                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.01014.i139, i64 4
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !17
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add i32 %i.eq, %i.ev                    ; 3 uses
  %i.ex = add i32 %i.ew, %i.er                    ; 2 uses
  %.not.i141.3 = icmp eq i64 %i.es, 0
  br i1 %.not.i141.3, label %adler32_len_16.exit144, label %.lr.ph.i136, !llvm.loop !9

adler32_len_16.exit144:                           ; preds = %.lr.ph.i136.prol.loopexit, %.lr.ph.i136, %bb.o
  %.011.lcssa.i142 = phi i32 [ %.1130, %bb.o ], [ %.lcssa210.unr, %.lr.ph.i136.prol.loopexit ], [ %i.ew, %.lr.ph.i136 ]
  %.0.lcssa.i143 = phi i32 [ %.1122, %bb.o ], [ %.lcssa209.unr, %.lr.ph.i136.prol.loopexit ], [ %i.ex, %.lr.ph.i136 ]
  %i.ey = urem i32 %.011.lcssa.i142, 65521
  %i.ez = urem i32 %.0.lcssa.i143, 65521
  %i.fa = shl nuw i32 %i.ez, 16
  %i.fb = or disjoint i32 %i.fa, %i.ey
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %adler32_len_16.exit144, %adler32_len_16.exit, %bb.b
  %.0131 = phi i32 [ %i.j, %bb.b ], [ %i.fb, %adler32_len_16.exit144 ], [ %i.ar, %adler32_len_16.exit ], [ 1, %bb.c ]
  ret i32 %.0131
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !19}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !19}
!15 = distinct !{!15, !18}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!4, !4, i64 0}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.mustprogress"}
end_hunk_0
